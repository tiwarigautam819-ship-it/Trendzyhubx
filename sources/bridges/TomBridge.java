package bridges;

import a2.i;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.getcapacitor.n;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.j0;
import eventTrack.jpush.EngagelabInitManager;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import l1.a;
import l1.c;
import m6.d;
import m6.g;
import n6.b;
import org.json.JSONException;
import org.json.JSONObject;
import p4.j;
import q2.x;
import y.u;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class TomBridge {
    private static final String TAG = "TomBridge";
    private static final int TYPE_ADJUST = 2;
    private static final int TYPE_FIREBASE = 1;
    private static final int TYPE_JPUSH = 3;
    public static final String bridgeName = "TomNativeBridge";
    private final Context context;
    private final EngagelabInitManager.TokenListener jpushTokenListener;
    private final b tokenListener;
    private final WebView webView;
    private String adjustCallbackName = null;
    private String firebaseCallbackName = null;
    private String jpushCallbackName = null;
    private volatile String lastAdjustToken = null;
    private volatile String lastFirebaseToken = null;
    private volatile String lastJPushToken = null;

    public TomBridge(Context context, WebView webView) {
        l1.b bVar = new l1.b(this);
        this.tokenListener = bVar;
        c cVar = new c(this);
        this.jpushTokenListener = cVar;
        this.context = context;
        this.webView = webView;
        n6.c.f4362a.add(bVar);
        EngagelabInitManager.addTokenListener(cVar);
    }

    private void callJsFunction(String str, String str2) {
        if (this.webView == null) {
            return;
        }
        this.webView.post(new i(this, 11, "try{(window['" + str + "']||window." + str + ")&&window['" + str + "'](" + jsonQuote(str2) + ");}catch(e){console && console.log && console.log('TomBridge:'+ (e&&e.message||e));}"));
    }

    private static boolean isEmpty(String str) {
        return str == null || str.trim().isEmpty();
    }

    private static String jsonQuote(String str) {
        try {
            return JSONObject.quote(str == null ? "" : str);
        } catch (Throwable unused) {
            return x.h(new StringBuilder("\""), str != null ? str.replace("\"", "\\\"") : "", "\"");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$callJsFunction$4(String str) {
        this.webView.evaluateJavascript(str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchFirebaseToken$1(String str) {
        if (str != null) {
            sendTokenToH5(1, str);
        } else {
            sendErrorToH5(1, "");
            Log.d(TAG, "没有获取到firebase的token");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchJPushToken$3(String str) {
        if (str != null) {
            sendTokenToH5(3, str);
        } else {
            sendErrorToH5(3, "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initFirebase$0(String str) {
        Log.d(TAG, "token=" + str);
        if (str != null) {
            sendTokenToH5(1, str);
        } else {
            sendErrorToH5(1, "");
            Log.d(TAG, "没有获取到firebase的token");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initJPush$2(String str) {
        Log.d(TAG, "JPush regId=" + str);
        if (str != null) {
            sendTokenToH5(3, str);
        } else {
            sendErrorToH5(3, "");
        }
    }

    private static String optString(JSONObject jSONObject, String str) {
        if (jSONObject == null || !jSONObject.has(str) || jSONObject.isNull(str)) {
            return null;
        }
        return jSONObject.optString(str, null);
    }

    private static Map<String, String> parseKvJson(String str) {
        if (isEmpty(str)) {
            return null;
        }
        try {
            return parseKvJsonObject(new JSONObject(str));
        } catch (JSONException e9) {
            Log.w(TAG, "parseKvJson error: " + e9.getMessage(), e9);
            return null;
        }
    }

    private static Map<String, String> parseKvJsonObject(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strOptString = jSONObject.optString(next, null);
            if (next != null && strOptString != null) {
                linkedHashMap.put(next, strOptString);
            }
        }
        return linkedHashMap;
    }

    private void sendErrorToH5(int i6, String str) {
        String str2 = i6 == 2 ? this.adjustCallbackName : i6 == 3 ? this.jpushCallbackName : this.firebaseCallbackName;
        if (isEmpty(str2)) {
            return;
        }
        callJsFunction(str2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendTokenToH5(int i6, String str) {
        String str2;
        Log.d(TAG, (i6 == 2 ? "[ADJUST]" : i6 == 1 ? "[FIREBASE]" : "[JPUSH]") + " token=" + str);
        if (i6 == 1) {
            this.lastFirebaseToken = str;
            str2 = this.firebaseCallbackName;
        } else if (i6 == 3) {
            this.lastJPushToken = str;
            str2 = this.jpushCallbackName;
        } else {
            this.lastAdjustToken = str;
            str2 = this.adjustCallbackName;
        }
        if (isEmpty(str2)) {
            return;
        }
        callJsFunction(str2, str);
    }

    public void detach() {
        b bVar = this.tokenListener;
        if (bVar != null) {
            n6.c.f4362a.remove(bVar);
        } else {
            CopyOnWriteArrayList copyOnWriteArrayList = n6.c.f4362a;
        }
        EngagelabInitManager.removeTokenListener(this.jpushTokenListener);
    }

    @JavascriptInterface
    public void fetchFirebaseToken() {
        a aVar = new a(this, 0);
        CopyOnWriteArrayList copyOnWriteArrayList = n6.c.f4362a;
        Log.d("FirebaseInit", "fetchToken: requesting FCM token...");
        FirebaseMessaging firebaseMessagingC = FirebaseMessaging.c();
        firebaseMessagingC.getClass();
        j jVar = new j();
        firebaseMessagingC.f2037f.execute(new i(firebaseMessagingC, 8, jVar));
        jVar.f4641a.h(new j0(10, aVar));
    }

    @JavascriptInterface
    public void fetchJPushToken() {
        EngagelabInitManager.fetchToken(this.context, new a(this, 1));
    }

    @JavascriptInterface
    public String getAdjustId() {
        String str;
        Context context;
        if (this.lastAdjustToken != null && !this.lastAdjustToken.trim().isEmpty()) {
            return this.lastAdjustToken;
        }
        Context context2 = this.context;
        String strValueOf = null;
        if (!g.f4300a) {
            if (context2 != null) {
                context = context2;
            } else {
                try {
                    context = g.f4305f;
                } catch (Throwable unused) {
                }
            }
            g.a(context, null, null);
        }
        if (d.b()) {
            try {
                if (d.b()) {
                    try {
                        Object objInvoke = d.f4290a.getMethod("getAdid", null).invoke(null, null);
                        if (objInvoke != null) {
                            strValueOf = String.valueOf(objInvoke);
                        }
                    } catch (Throwable unused2) {
                    }
                }
            } catch (Throwable unused3) {
            }
            if (strValueOf == null || strValueOf.trim().isEmpty()) {
                if (!g.f4304e) {
                    synchronized (g.class) {
                        if (!g.f4304e) {
                            g.f4304e = true;
                            if (context2 == null) {
                                try {
                                    boolean z5 = g.f4300a;
                                } catch (Throwable unused4) {
                                }
                            }
                            d.d(new n(13));
                        }
                    }
                }
                try {
                    g.f4303d.await(Math.max(0L, 1500L), TimeUnit.MILLISECONDS);
                } catch (Throwable unused5) {
                }
                str = g.f4301b;
            } else {
                g.f4301b = strValueOf;
                try {
                    g.f4303d.countDown();
                } catch (Throwable unused6) {
                }
                str = g.f4301b;
            }
        } else {
            str = g.f4301b;
        }
        return str != null ? str : "";
    }

    @JavascriptInterface
    public boolean hasNotificationPermission() {
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                try {
                    String[] strArr = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 4096).requestedPermissions;
                    if (strArr != null) {
                        int length = strArr.length;
                        int i6 = 0;
                        while (true) {
                            if (i6 >= length) {
                                break;
                            }
                            if (!"android.permission.POST_NOTIFICATIONS".equals(strArr[i6])) {
                                i6++;
                            } else if (z.c.a(this.context, "android.permission.POST_NOTIFICATIONS") != 0) {
                                return false;
                            }
                        }
                    }
                } catch (Throwable th) {
                    Log.d(TAG, "错误信息" + th.getMessage());
                }
            }
            return new u(this.context).a();
        } catch (Throwable unused) {
            return false;
        }
    }

    @JavascriptInterface
    public void initAdjust(String str) {
        initAdjust(str, null);
    }

    @JavascriptInterface
    public void initFirebase(String str, String str2) {
        Log.d(TAG, "initFirebase: cfg=" + str + " cb=" + str2);
        this.firebaseCallbackName = str2;
        n6.c.a(this.context, str, new a(this, 2));
    }

    @JavascriptInterface
    public void initJPush(String str, String str2) {
        Log.d(TAG, "initJPush: cfg=" + str + " cb=" + str2);
        this.jpushCallbackName = str2;
        EngagelabInitManager.initializeFromJson(this.context, str, new a(this, 3));
    }

    @JavascriptInterface
    public boolean isAppInstalled(String str) {
        try {
            this.context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    @JavascriptInterface
    public boolean openApp(String str) {
        try {
            Intent launchIntentForPackage = this.context.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage != null) {
                launchIntentForPackage.addFlags(268435456);
                this.context.startActivity(launchIntentForPackage);
                return true;
            }
        } catch (Exception e9) {
            Log.w(TAG, "openApp failed: " + str + " - " + e9.getMessage());
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str));
            intent.addFlags(268435456);
            this.context.startActivity(intent);
            return false;
        } catch (Exception unused) {
            openUrl("https://play.google.com/store/apps/details?id=" + str);
            return false;
        }
    }

    @JavascriptInterface
    public boolean openUrl(String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(268435456);
            this.context.startActivity(intent);
            return true;
        } catch (Exception e9) {
            Log.w(TAG, "openUrl failed: " + str + " - " + e9.getMessage());
            return false;
        }
    }

    @JavascriptInterface
    public void requestPostNotificationPermissionIfNeeded() {
        if (Build.VERSION.SDK_INT >= 33) {
            Context context = this.context;
            if (!(context instanceof Activity) || z.c.a(context, "android.permission.POST_NOTIFICATIONS") == 0) {
                return;
            }
            y.b.d((Activity) this.context, new String[]{"android.permission.POST_NOTIFICATIONS"}, 9917);
        }
    }

    @JavascriptInterface
    public void setOrientationAuto() {
        Context context = this.context;
        if (context instanceof Activity) {
            ((Activity) context).setRequestedOrientation(-1);
            Log.d(TAG, "已恢复自动旋转");
        }
    }

    @JavascriptInterface
    public void setOrientationLandscape() {
        Context context = this.context;
        if (context instanceof Activity) {
            ((Activity) context).setRequestedOrientation(0);
            Log.d(TAG, "已切换为横屏");
        }
    }

    @JavascriptInterface
    public void setOrientationPortrait() {
        Context context = this.context;
        if (context instanceof Activity) {
            ((Activity) context).setRequestedOrientation(1);
            Log.d(TAG, "已切换为竖屏");
        }
    }

    @JavascriptInterface
    public void trackAdjustEvent(String str) {
        trackAdjustEvent(str, null);
    }

    @JavascriptInterface
    public void trackAdjustEventAdvanced(String str) {
        try {
            JSONObject jSONObject = isEmpty(str) ? new JSONObject() : new JSONObject(str);
            g.e(this.context, optString(jSONObject, "eventToken"), parseKvJsonObject(jSONObject.optJSONObject("callbackParams")));
        } catch (JSONException e9) {
            Log.w(TAG, "trackAdjustEventAdvanced payload parse error: " + e9.getMessage(), e9);
        }
    }

    @JavascriptInterface
    public void initAdjust(String str, String str2) {
        Log.d(TAG, "Received adjust config: " + str2 + "， callback: " + str);
        this.adjustCallbackName = str;
        if (this.lastAdjustToken != null && !this.lastAdjustToken.trim().isEmpty()) {
            callJsFunction(str, this.lastAdjustToken);
        }
        g.a(this.context, str2, new o5.c(17, this));
    }

    @JavascriptInterface
    public void trackAdjustEvent(String str, String str2) {
        g.e(this.context, str, parseKvJson(str2));
    }
}
