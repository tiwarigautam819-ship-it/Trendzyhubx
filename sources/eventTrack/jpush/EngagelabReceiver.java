package eventTrack.jpush;

import android.content.Context;
import android.util.Log;
import com.engagelab.privates.common.component.MTCommonReceiver;
import com.engagelab.privates.core.api.MTCorePrivatesApi;
import com.engagelab.privates.push.api.CustomMessage;
import com.engagelab.privates.push.api.NotificationMessage;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class EngagelabReceiver extends MTCommonReceiver {
    private static final String TAG = "Engagelab";

    @Override // com.engagelab.privates.common.component.MTCommonReceiver
    public void onConnectStatus(Context context, boolean z5) {
        Log.d(TAG, "onConnectStatus: connected=" + z5);
        if (z5) {
            String registrationId = MTCorePrivatesApi.getRegistrationId(context);
            Log.d(TAG, "onConnectStatus regId='" + registrationId + "'");
            if (registrationId == null || registrationId.isEmpty()) {
                return;
            }
            EngagelabInitManager.notifyTokenUpdate(registrationId);
        }
    }

    @Override // com.engagelab.privates.common.component.MTCommonReceiver
    public void onCustomMessage(Context context, CustomMessage customMessage) {
        Log.d(TAG, "onCustomMessage: " + customMessage);
    }

    @Override // com.engagelab.privates.common.component.MTCommonReceiver
    public void onNotificationArrived(Context context, NotificationMessage notificationMessage) {
        Log.d(TAG, "onNotificationArrived: " + notificationMessage);
    }

    @Override // com.engagelab.privates.common.component.MTCommonReceiver
    public void onNotificationClicked(Context context, NotificationMessage notificationMessage) {
        Log.d(TAG, "onNotificationClicked: " + notificationMessage);
    }

    @Override // com.engagelab.privates.common.component.MTCommonReceiver
    public void onNotificationDeleted(Context context, NotificationMessage notificationMessage) {
        Log.d(TAG, "onNotificationDeleted: " + notificationMessage);
    }
}
