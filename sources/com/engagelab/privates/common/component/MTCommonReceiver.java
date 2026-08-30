package com.engagelab.privates.common.component;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.core.api.WakeMessage;
import com.engagelab.privates.push.api.AliasMessage;
import com.engagelab.privates.push.api.CustomMessage;
import com.engagelab.privates.push.api.InAppMessage;
import com.engagelab.privates.push.api.MobileNumberMessage;
import com.engagelab.privates.push.api.NotificationMessage;
import com.engagelab.privates.push.api.PlatformTokenMessage;
import com.engagelab.privates.push.api.TagMessage;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTCommonReceiver extends BroadcastReceiver {
    private static final String TAG = "MTCommonReceiver";

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        try {
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (TextUtils.equals(action, "android.net.conn.CONNECTIVITY_CHANGE")) {
                MTCommonPrivatesApi.sendMessageToMainProcess(context.getApplicationContext(), MTCommonConstants.MainWhat.ON_NETWORK_CHANGED, extras);
            } else {
                MTCommonPrivatesApi.sendMessageToMainProcess(context.getApplicationContext(), Integer.parseInt(action), extras);
            }
        } catch (Throwable th) {
            x.j(th, new StringBuilder("onReceiver failed "), TAG);
        }
    }

    public void onAliasMessage(Context context, AliasMessage aliasMessage) {
    }

    public void onConnectStatus(Context context, boolean z5) {
    }

    public void onCustomMessage(Context context, CustomMessage customMessage) {
    }

    public void onInAppMessageClick(Context context, InAppMessage inAppMessage) {
    }

    public void onInAppMessageShow(Context context, InAppMessage inAppMessage) {
    }

    public void onMobileNumber(Context context, MobileNumberMessage mobileNumberMessage) {
    }

    public void onNotificationArrived(Context context, NotificationMessage notificationMessage) {
    }

    public void onNotificationClicked(Context context, NotificationMessage notificationMessage) {
    }

    public void onNotificationDeleted(Context context, NotificationMessage notificationMessage) {
    }

    public void onNotificationStatus(Context context, boolean z5) {
    }

    public void onNotificationUnShow(Context context, NotificationMessage notificationMessage) {
    }

    public void onPlatformToken(Context context, PlatformTokenMessage platformTokenMessage) {
    }

    public void onTagMessage(Context context, TagMessage tagMessage) {
    }

    public void onWake(Context context, WakeMessage wakeMessage) {
    }
}
