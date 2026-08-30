package eventTrack.firebase;

import android.util.Log;
import com.google.firebase.messaging.FirebaseMessagingService;
import n6.c;
import n6.e;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MyFirebaseMessagingService extends FirebaseMessagingService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f2491a = 0;

    public static void b(JSONObject jSONObject, String str, String str2) {
        try {
            if (str2 == null) {
                jSONObject.put(str, JSONObject.NULL);
            } else {
                jSONObject.put(str, str2);
            }
        } catch (Exception e9) {
            Log.e("FCM", "safePut error, key=" + str + ", value=" + ((Object) str2), e9);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x024c  */
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMessageReceived(com.google.firebase.messaging.w r21) {
        /*
            Method dump skipped, instruction units count: 692
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: eventTrack.firebase.MyFirebaseMessagingService.onMessageReceived(com.google.firebase.messaging.w):void");
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public final void onNewToken(String str) {
        Log.d("FCM", "New Token: " + str);
        c.b(str);
        try {
            new JSONObject().put("token", str);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("token", str);
            e.b("mp_token_update", jSONObject);
            Log.d("AnalyticsReporter", "token_update埋点" + str);
        } catch (Exception unused) {
        }
    }
}
