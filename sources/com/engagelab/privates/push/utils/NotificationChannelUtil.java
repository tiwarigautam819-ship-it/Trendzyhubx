package com.engagelab.privates.push.utils;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.push.api.NotificationMessage;
import r1.a;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class NotificationChannelUtil {
    private static final String CHANNEL_DEFAULT = "ENGAGELAB_PRIVATES_CHANNEL_normal";
    private static final String CHANNEL_HIGH = "ENGAGELAB_PRIVATES_CHANNEL_high";
    private static final String CHANNEL_LOW = "ENGAGELAB_PRIVATES_CHANNEL_low";
    private static final String CHANNEL_SILENCE = "ENGAGELAB_PRIVATES_CHANNEL_silence";
    private static final String TAG = "NotificationChannelUtil";

    public static String getChannel(Context context, boolean z5, NotificationMessage notificationMessage) {
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        String channelId = getChannelId(context, z5, notificationMessage);
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        NotificationChannel notificationChannel = notificationManager.getNotificationChannel(channelId);
        int channelImportance = getChannelImportance(context, z5, notificationMessage);
        if (notificationChannel != null) {
            if (-1 != notificationMessage.getImportance()) {
                notificationChannel.setImportance(channelImportance);
                MTCommonLog.d(TAG, "has channelId:" + channelId + " and set channelImportance:" + channelImportance);
            }
            MTCommonLog.d(TAG, "has channelId:" + channelId);
            return channelId;
        }
        String channelName = getChannelName(context, z5, notificationMessage);
        NotificationChannel notificationChannelB = a.b(channelImportance, channelId, channelName);
        Uri soundUri = NotificationUtil.getSoundUri(context, z5, notificationMessage);
        int defaults = NotificationUtil.getDefaults(context, z5, notificationMessage);
        notificationChannelB.setLockscreenVisibility(NotificationUtil.getVisibility(context, z5, notificationMessage));
        try {
            if (soundUri != null) {
                notificationChannelB.setSound(soundUri, null);
            } else if ((defaults & 1) == 0) {
                notificationChannelB.setSound(null, null);
            }
        } catch (Throwable th) {
            MTCommonLog.w(TAG, "setSound fail:" + th);
        }
        notificationChannelB.enableLights((defaults & 4) != 0);
        notificationChannelB.enableVibration((defaults & 2) != 0);
        notificationManager.createNotificationChannel(notificationChannelB);
        MTCommonLog.d(TAG, "build channel channelId:" + channelId + ", channelName:" + channelName + ", channelImportance:" + channelImportance);
        return channelId;
    }

    private static String getChannelId(Context context, boolean z5, NotificationMessage notificationMessage) {
        if (z5) {
            return "N_ENGAGELAB_PRIVATES_CHANNEL_silence_" + notificationMessage.getPriority();
        }
        if (!TextUtils.isEmpty(notificationMessage.getChannelId())) {
            return notificationMessage.getChannelId();
        }
        int priority = notificationMessage.getPriority();
        if (priority == -2 || priority == -1) {
            return "N_ENGAGELAB_PRIVATES_CHANNEL_low_" + notificationMessage.getPriority();
        }
        if (priority == 1 || priority == 2) {
            if (TextUtils.isEmpty(notificationMessage.getSound())) {
                return "N_ENGAGELAB_PRIVATES_CHANNEL_high_" + notificationMessage.getPriority() + "_" + notificationMessage.getDefaults();
            }
            return "N_ENGAGELAB_PRIVATES_CHANNEL_high_" + notificationMessage.getPriority() + "_" + notificationMessage.getDefaults() + "_" + notificationMessage.getSound();
        }
        if (TextUtils.isEmpty(notificationMessage.getSound())) {
            return "N_ENGAGELAB_PRIVATES_CHANNEL_normal_" + notificationMessage.getPriority() + "_" + notificationMessage.getDefaults();
        }
        return "N_ENGAGELAB_PRIVATES_CHANNEL_normal_" + notificationMessage.getPriority() + "_" + notificationMessage.getDefaults() + "_" + notificationMessage.getSound();
    }

    private static int getChannelImportance(Context context, boolean z5, NotificationMessage notificationMessage) {
        return z5 ? notificationMessage.getPriority() != -2 ? 2 : 1 : getImportance(notificationMessage.getPriority());
    }

    private static String getChannelName(Context context, boolean z5, NotificationMessage notificationMessage) {
        if (z5) {
            int identifier = context.getResources().getIdentifier(CHANNEL_SILENCE, "string", context.getPackageName());
            return identifier > 0 ? context.getString(identifier) : "SILENCE";
        }
        int priority = notificationMessage.getPriority();
        int identifier2 = context.getResources().getIdentifier((priority == -2 || priority == -1) ? CHANNEL_LOW : (priority == 1 || priority == 2) ? CHANNEL_HIGH : CHANNEL_DEFAULT, "string", context.getPackageName());
        return identifier2 > 0 ? context.getString(identifier2) : "NORMAL";
    }

    private static int getImportance(int i6) {
        if (i6 == -2) {
            return 1;
        }
        if (i6 == -1) {
            return 2;
        }
        if (i6 != 1) {
            return i6 != 2 ? 3 : 5;
        }
        return 4;
    }
}
