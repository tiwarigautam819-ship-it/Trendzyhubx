package eventTrack.jpush;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import b.m;
import com.engagelab.privates.core.api.MTCorePrivatesApi;
import com.engagelab.privates.push.api.MTPushPrivatesApi;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class EngagelabInitManager {
    private static final int MAX_POLL_COUNT = 30;
    private static final long POLL_INTERVAL = 500;
    private static final String TAG = "EngagelabInit";
    private static final CopyOnWriteArrayList<TokenListener> tokenListeners = new CopyOnWriteArrayList<>();
    private static final AtomicBoolean initTriggered = new AtomicBoolean(false);
    private static volatile String lastRegId = null;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public interface TokenCallback {
        void onToken(String str);
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public interface TokenListener {
        void onToken(String str);
    }

    public static void addTokenListener(TokenListener tokenListener) {
        if (tokenListener != null) {
            tokenListeners.add(tokenListener);
        }
    }

    public static void fetchToken(Context context, TokenCallback tokenCallback) {
        String registrationId = MTCorePrivatesApi.getRegistrationId(context.getApplicationContext());
        Log.d(TAG, "fetchToken: immediate regId='" + registrationId + "'");
        if (registrationId == null || registrationId.isEmpty()) {
            Log.d(TAG, "Registration ID not ready, polling...");
            pollRegistrationId(context.getApplicationContext(), tokenCallback, 0);
            return;
        }
        lastRegId = registrationId;
        notifyTokenUpdate(registrationId);
        if (tokenCallback != null) {
            tokenCallback.onToken(registrationId);
        }
    }

    public static String getLastRegId() {
        return lastRegId;
    }

    public static void initializeFromJson(Context context, String str, TokenCallback tokenCallback) {
        StringBuilder sb = new StringBuilder("initializeFromJson called, initTriggered=");
        AtomicBoolean atomicBoolean = initTriggered;
        sb.append(atomicBoolean.get());
        Log.d(TAG, sb.toString());
        try {
            JSONObject jSONObject = new JSONObject(str);
            boolean zOptBoolean = jSONObject.optBoolean("debugMode", false);
            String strOptString = jSONObject.optString("appKey", "");
            if (strOptString.isEmpty()) {
                strOptString = jSONObject.optString("apiKey", "");
            }
            Log.d(TAG, "appKey from H5='" + strOptString + "'");
            if (TextUtils.isEmpty(strOptString)) {
                Log.e(TAG, "appKey is empty, abort init");
                if (tokenCallback != null) {
                    tokenCallback.onToken(null);
                    return;
                }
                return;
            }
            Context applicationContext = context.getApplicationContext();
            if (atomicBoolean.compareAndSet(false, true)) {
                MTCorePrivatesApi.configDebugMode(applicationContext, zOptBoolean);
                MTCorePrivatesApi.configAppKey(applicationContext, strOptString);
                MTCorePrivatesApi.configAppChannel(applicationContext, "default");
                Log.d(TAG, "Calling MTPushPrivatesApi.init()...");
                MTPushPrivatesApi.init(applicationContext);
                Log.d(TAG, "Engagelab init completed");
            } else {
                Log.d(TAG, "Already initialized, lastRegId=" + lastRegId);
            }
            fetchToken(applicationContext, tokenCallback);
        } catch (Exception e9) {
            Log.e(TAG, "initializeFromJson FAILED: " + e9.getMessage(), e9);
            if (tokenCallback != null) {
                tokenCallback.onToken(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$pollRegistrationId$0(Context context, int i6, TokenCallback tokenCallback) {
        String registrationId = MTCorePrivatesApi.getRegistrationId(context);
        Log.d(TAG, "Poll #" + i6 + "/30 regId='" + registrationId + "'");
        if (registrationId == null || registrationId.isEmpty()) {
            pollRegistrationId(context, tokenCallback, i6 + 1);
            return;
        }
        Log.d(TAG, "Got Registration ID at poll #" + i6 + ": " + registrationId);
        lastRegId = registrationId;
        notifyTokenUpdate(registrationId);
        if (tokenCallback != null) {
            tokenCallback.onToken(registrationId);
        }
    }

    public static void notifyTokenUpdate(String str) {
        lastRegId = str;
        Iterator<TokenListener> it = tokenListeners.iterator();
        while (it.hasNext()) {
            try {
                it.next().onToken(str);
            } catch (Throwable th) {
                Log.e(TAG, "Listener error", th);
            }
        }
    }

    private static void pollRegistrationId(Context context, TokenCallback tokenCallback, int i6) {
        if (i6 < MAX_POLL_COUNT) {
            new Handler(Looper.getMainLooper()).postDelayed(new m(i6, 4, context, tokenCallback), POLL_INTERVAL);
            return;
        }
        Log.e(TAG, "Registration ID still empty after 30 polls (15s)");
        if (tokenCallback != null) {
            tokenCallback.onToken(null);
        }
    }

    public static void removeTokenListener(TokenListener tokenListener) {
        if (tokenListener != null) {
            tokenListeners.remove(tokenListener);
        }
    }
}
