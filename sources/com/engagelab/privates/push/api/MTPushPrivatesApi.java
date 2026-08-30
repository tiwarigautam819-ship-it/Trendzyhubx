package com.engagelab.privates.push.api;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.helper.CollectControlHelper;
import com.engagelab.privates.common.helper.MTCollectControl;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.m0;
import com.engagelab.privates.common.n0;
import com.engagelab.privates.common.r;
import com.engagelab.privates.common.z0;
import com.engagelab.privates.core.MTCore;
import com.engagelab.privates.push.MTPush;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.engagelab.privates.push.utils.ActivityUtil;
import com.engagelab.privates.push.utils.ApplicationContextUtil;
import com.engagelab.privates.push.utils.NotificationUtil;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTPushPrivatesApi {
    public static final byte PLATFORM_DEFAULT = 0;
    public static final byte PLATFORM_GOOGLE = 8;
    public static final byte PLATFORM_HONOR = 7;
    public static final byte PLATFORM_HUAWEI = 2;
    public static final byte PLATFORM_MEIZU = 3;
    public static final byte PLATFORM_OPPO = 4;
    public static final byte PLATFORM_VIVO = 5;
    public static final byte PLATFORM_XIAOMI = 1;
    public static int SDK_VERSION_CODE = 530;
    public static String SDK_VERSION_NAME = "5.3.0";
    private static final String TAG = "MTPushPrivatesApi";

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class Code {
        public static int CONNECT_NOT_ENABLE = 6012;
        public static int INVALID_ALIAS = 6003;
        public static int INVALID_JSON = 6010;
        public static int INVALID_MOBILE_NUMBER = 6023;
        public static int INVALID_TAGS = 6005;
        public static int INVOKE_TOO_SOON = 6011;
        public static int NULL_TAG_AND_ALIAS = 6001;
        public static final int SUCCESS = 0;
        public static int TIMEOUT = 6002;
        public static int TOO_LONG_ALIAS = 6004;
        public static int TOO_LONG_TAG = 6006;
        public static int TOO_LONG_TAGS = 6008;
        public static int TOO_MANY_TAGS = 6007;
        public static int UNKNOWN_ERROR = 6009;
    }

    public static void addTag(Context context, int i6, String... strArr) {
        if (context == null) {
            MTCommonLog.e(TAG, "addTag context can't be null, please check it");
            return;
        }
        if (i6 == 0) {
            MTCommonLog.e(TAG, "addTag sequence can't be 0, please check it");
            return;
        }
        if (strArr == null) {
            MTCommonLog.e(TAG, "addTag tag can't be null, please check it");
            return;
        }
        if (strArr.length == 0) {
            MTCommonLog.e(TAG, "addTag tag can't be empty, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt(MTPushConstants.Operation.KEY_SEQUENCE, i6);
            bundle.putStringArray(MTPushConstants.Operation.KEY_TAG, strArr);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.TAG_ADD, bundle);
        }
    }

    public static void clearAlias(Context context, int i6) {
        if (context == null) {
            MTCommonLog.e(TAG, "clearAlias context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt(MTPushConstants.Operation.KEY_SEQUENCE, i6);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.ALIAS_CLEAR, bundle);
        }
    }

    public static void clearNotification(Context context, int i6) {
        if (context == null) {
            MTCommonLog.e(TAG, "clearNotification context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt(MTPushConstants.Notification.KEY_NOTIFY_ID, i6);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.CLEAR_NOTIFICATION, bundle);
        }
    }

    public static void clearPlatformToken(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "clearPlatformToken context can't be null, please check it");
        } else {
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.ON_PLATFORM_CLEAR_TOKEN, null);
        }
    }

    public static void configOldPushVersion(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "init context can't be null, please check it");
            return;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext()) || MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            SDK_VERSION_CODE = 396;
            SDK_VERSION_NAME = "3.9.6";
            MTCommonLog.d(TAG, "configOldPushVersion " + SDK_VERSION_NAME);
        }
    }

    public static void configUserLanguage(Context context, String str) {
        if (context == null) {
            MTCommonLog.e(TAG, "configPushLanguage context can't be null, please check it");
            return;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext()) || MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            r.d(context, str);
            Bundle bundle = new Bundle();
            bundle.putString(MTPushConstants.SetData.SET_USER_LANGUAGE, str);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTPushConstants.RemoteWhat.SET_USER_LANGUAGE, bundle);
        }
    }

    public static void deleteAllTag(Context context, int i6) {
        if (context == null) {
            MTCommonLog.e(TAG, "deleteAllTag context can't be null, please check it");
            return;
        }
        if (i6 == 0) {
            MTCommonLog.e(TAG, "deleteAllTag sequence can't be 0, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt(MTPushConstants.Operation.KEY_SEQUENCE, i6);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.TAG_DELETE_ALL, bundle);
        }
    }

    public static void deleteGeofence(Context context, String str) {
        if (context == null) {
            MTCommonLog.e(TAG, "deleteGeofence context can't be null, please check it");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            MTCommonLog.e(TAG, "deleteGeofence geofenceId can't be empty, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putString("id", str);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.DELETE_GEOFENCE, bundle);
        }
    }

    public static void deleteTag(Context context, int i6, String... strArr) {
        if (context == null) {
            MTCommonLog.e(TAG, "deleteTag context can't be null, please check it");
            return;
        }
        if (i6 == 0) {
            MTCommonLog.e(TAG, "deleteTag sequence can't be 0, please check it");
            return;
        }
        if (strArr == null) {
            MTCommonLog.e(TAG, "deleteTag tag can't be null, please check it");
            return;
        }
        if (strArr.length == 0) {
            MTCommonLog.e(TAG, "deleteTag tag can't be empty, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt(MTPushConstants.Operation.KEY_SEQUENCE, i6);
            bundle.putStringArray(MTPushConstants.Operation.KEY_TAG, strArr);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.TAG_DELETE, bundle);
        }
    }

    public static void getAlias(Context context, int i6) {
        if (context == null) {
            MTCommonLog.e(TAG, "getAlias context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt(MTPushConstants.Operation.KEY_SEQUENCE, i6);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.ALIAS_GET, bundle);
        }
    }

    public static void goToAppNotificationSettings(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "goToAppNotificationSettings context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            NotificationUtil.goToAppNotificationSettings(context.getApplicationContext());
        }
    }

    public static void init(Context context) {
        MTCommonLog.d(TAG, "MTPushPrivatesApi.init 5.3.0");
        if (context == null) {
            MTCommonLog.e(TAG, "init context can't be null, please check it");
            return;
        }
        if (!MTGlobal.isMainProcess(context.getApplicationContext()) && !MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            MTCommonLog.e(TAG, "Please call the MTPushPrivatesApi.init function in the main process or the push process");
            return;
        }
        MTCommonPrivatesApi.init(context.getApplicationContext(), true);
        if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            ApplicationContextUtil.init(context.getApplicationContext());
            ActivityUtil.registerActivityLifecycleCallbacks(context.getApplicationContext());
            MTCommonPrivatesApi.observer(context.getApplicationContext(), new MTCore());
            MTCommonPrivatesApi.observer(context.getApplicationContext(), new MTPush());
            m0.a().a(context.getApplicationContext());
            n0.a().a(context);
        }
    }

    public static void onFragmentPause(Context context, String str) {
        if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            String str2 = MTGlobal.getCurrentActivityName() + "&" + str;
            Bundle bundle = new Bundle();
            bundle.putString(MTCommonConstants.Lifecycle.KEY_ACTIVITY, str2);
            MTCommonPrivatesApi.sendMessageToMainProcess(context.getApplicationContext(), 1018, bundle);
        }
    }

    public static void onFragmentResume(Context context, String str) {
        if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            String str2 = MTGlobal.getCurrentActivityName() + "&" + str;
            Bundle bundle = new Bundle();
            bundle.putString(MTCommonConstants.Lifecycle.KEY_ACTIVITY, str2);
            MTCommonPrivatesApi.sendMessageToMainProcess(context.getApplicationContext(), MTCommonConstants.MainWhat.ON_FRAGMENT_RESUMED, bundle);
        }
    }

    public static void queryAllTag(Context context, int i6) {
        if (context == null) {
            MTCommonLog.e(TAG, "queryAllTag context can't be null, please check it");
            return;
        }
        if (i6 == 0) {
            MTCommonLog.e(TAG, "queryAllTag sequence can't be 0, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt(MTPushConstants.Operation.KEY_SEQUENCE, i6);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.TAG_QUERY_ALL, bundle);
        }
    }

    public static void queryTag(Context context, int i6, String str) {
        if (context == null) {
            MTCommonLog.e(TAG, "queryTag context can't be null, please check it");
            return;
        }
        if (i6 == 0) {
            MTCommonLog.e(TAG, "queryTag sequence can't be 0, please check it");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            MTCommonLog.e(TAG, "queryTag tag can't be empty, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt(MTPushConstants.Operation.KEY_SEQUENCE, i6);
            bundle.putString(MTPushConstants.Operation.KEY_TAG, str);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.TAG_QUERY, bundle);
        }
    }

    public static void reportNotificationArrived(Context context, String str, byte b3, String str2) {
        if (context == null) {
            MTCommonLog.e(TAG, "reportNotificationArrived context can't be null, please check it");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            MTCommonLog.e(TAG, "reportNotificationArrived messageId can't be empty, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            NotificationMessage platformMessageId = new NotificationMessage().setMessageId(str).setPlatform(b3).setPlatformMessageId(str2);
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTPushConstants.Message.KEY_MESSAGE, platformMessageId);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.ON_NOTIFICATION_ARRIVED, bundle);
        }
    }

    public static void reportNotificationClicked(Context context, String str, byte b3, String str2) {
        if (context == null) {
            MTCommonLog.e(TAG, "reportNotificationClicked context can't be null, please check it");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            MTCommonLog.e(TAG, "reportNotificationClicked messageId can't be empty, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            NotificationMessage platformMessageId = new NotificationMessage().setMessageId(str).setPlatform(b3).setPlatformMessageId(str2);
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTPushConstants.Message.KEY_MESSAGE, platformMessageId);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.ON_NOTIFICATION_CLICKED, bundle);
        }
    }

    public static void reportNotificationDeleted(Context context, String str, byte b3, String str2) {
        if (context == null) {
            MTCommonLog.e(TAG, "reportNotificationDeleted context can't be null, please check it");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            MTCommonLog.e(TAG, "reportNotificationDeleted messageId can't be empty, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            NotificationMessage platformMessageId = new NotificationMessage().setMessageId(str).setPlatform(b3).setPlatformMessageId(str2);
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTPushConstants.Message.KEY_MESSAGE, platformMessageId);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.ON_NOTIFICATION_DELETED, bundle);
        }
    }

    public static void reportNotificationOpened(Context context, String str, byte b3, String str2) {
        if (context == null) {
            MTCommonLog.e(TAG, "reportNotificationOpened context can't be null, please check it");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            MTCommonLog.e(TAG, "reportNotificationOpened messageId can't be empty, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            NotificationMessage platformMessageId = new NotificationMessage().setMessageId(str).setPlatform(b3).setPlatformMessageId(str2);
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTPushConstants.Message.KEY_MESSAGE, platformMessageId);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.ON_NOTIFICATION_OPENED, bundle);
        }
    }

    public static void resetNotificationBadge(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "resetNotificationBadge context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.RESET_NOTIFICATION_BADGE, null);
        }
    }

    public static void resetNotificationCount(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "resetNotificationCount context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.RESET_NOTIFICATION_COUNT, null);
        }
    }

    public static void resetNotificationLayout(Context context, int i6) {
        if (context == null) {
            MTCommonLog.e(TAG, "resetNotificationLayout context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt("id", i6);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.RESET_NOTIFICATION_LAYOUT, bundle);
        }
    }

    public static void resetNotificationShowTime(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "resetNotificationShowTime context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.RESET_NOTIFICATION_SHOW_TIME, null);
        }
    }

    public static void resetNotificationSilenceTime(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "resetNotificationSilenceTime context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.RESET_NOTIFICATION_SILENCE_TIME, null);
        }
    }

    public static void setAlias(Context context, int i6, String str) {
        if (context == null) {
            MTCommonLog.e(TAG, "setAlias context can't be null, please check it");
            return;
        }
        if (str == null) {
            MTCommonLog.e(TAG, "setAlias alias can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt(MTPushConstants.Operation.KEY_SEQUENCE, i6);
            bundle.putString(MTPushConstants.Operation.KEY_ALIAS, str);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.ALIAS_SET, bundle);
        }
    }

    public static void setCollectControl(MTPushCollectControl mTPushCollectControl) {
        MTCollectControl mTCollectControl = new MTCollectControl();
        mTCollectControl.setGAID(mTPushCollectControl.getGaid());
        mTCollectControl.setAID(mTPushCollectControl.getAid());
        CollectControlHelper.getInstance().setCollectControl(mTCollectControl);
    }

    public static void setEnablePushTextToSpeech(Context context, boolean z5) {
        if (context == null) {
            MTCommonLog.e(TAG, "setEnablePushTextToSpeech context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext()) || MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            z0.a().a(context, z5);
        }
    }

    public static void setGeofenceCount(Context context, int i6) {
        if (context == null) {
            MTCommonLog.e(TAG, "setGeofenceCount context can't be null, please check it");
            return;
        }
        if (i6 <= 0 || i6 >= 100) {
            MTCommonLog.e(TAG, "setGeofenceCount count must between 0~100, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt(MTPushConstants.Geofence.KEY_COUNT, i6);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.SET_GEOFENCE_COUNT, bundle);
        }
    }

    public static void setGeofenceInterval(Context context, long j3) {
        if (context == null) {
            MTCommonLog.e(TAG, "setGeofenceInterval context can't be null, please check it");
            return;
        }
        if (j3 < 180000 || j3 > 86400000) {
            MTCommonLog.e(TAG, "setGeofenceInterval interval must between 3 * 60 * 1000 ~ 24 * 60 * 60 * 1000, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putLong(MTPushConstants.Geofence.KEY_INTERVAL, j3);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.SET_GEOFENCE_INTERVAL, bundle);
        }
    }

    public static void setNotificationBadge(Context context, int i6) {
        if (context == null) {
            MTCommonLog.e(TAG, "setNotificationBadge context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt(MTPushConstants.NotificationBadge.KEY_BADGE, i6);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.SET_NOTIFICATION_BADGE, bundle);
        }
    }

    public static void setNotificationCount(Context context, int i6) {
        if (context == null) {
            MTCommonLog.e(TAG, "setNotificationCount context can't be null, please check it");
            return;
        }
        if (i6 < 0) {
            MTCommonLog.e(TAG, "setNotificationCount count can't small than 0, please check it");
            return;
        }
        if (i6 == 0) {
            MTCommonLog.e(TAG, "setNotificationCount count can't equal with 0, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt(MTPushConstants.NotificationCount.KEY_COUNT, i6);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.SET_NOTIFICATION_COUNT, bundle);
        }
    }

    public static void setNotificationLayout(Context context, int i6, NotificationLayout notificationLayout) {
        if (context == null) {
            MTCommonLog.e(TAG, "setNotificationLayout context can't be null, please check it");
            return;
        }
        if (notificationLayout == null) {
            MTCommonLog.e(TAG, "setNotificationLayout notificationLayout can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt("id", i6);
            bundle.putParcelable(MTPushConstants.NotificationLayout.KEY_NOTIFICATION_LAYOUT, notificationLayout);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.SET_NOTIFICATION_LAYOUT, bundle);
        }
    }

    public static void setNotificationShowTime(Context context, int i6, int i9, int... iArr) {
        if (context == null) {
            MTCommonLog.e(TAG, "setNotificationShowTime context can't be null, please check it");
            return;
        }
        if (i6 < 0 || i6 > 23) {
            MTCommonLog.e(TAG, "setNotificationShowTime beginHour must between 0~23, please check it");
            return;
        }
        if (i9 < 0 || i9 > 23) {
            MTCommonLog.e(TAG, "setNotificationShowTime endHour must between 0~23, please check it");
            return;
        }
        if (i6 > i9) {
            MTCommonLog.e(TAG, "setNotificationShowTime beginHour can't large than endHour, please check it");
            return;
        }
        if (i6 == i9) {
            MTCommonLog.e(TAG, "setNotificationShowTime beginHour can't equal with endHour, please check it");
            return;
        }
        if (iArr.length > 7) {
            MTCommonLog.e(TAG, "setNotificationShowTime weekDays.length must between 0~7, please check it");
            return;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt(MTPushConstants.NotificationTime.KEY_BEGIN_HOUR, i6);
            bundle.putInt(MTPushConstants.NotificationTime.KEY_END_HOUR, i9);
            bundle.putIntArray(MTPushConstants.NotificationTime.KEY_DAYS, iArr);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.SET_NOTIFICATION_SHOW_TIME, bundle);
        }
    }

    public static void setNotificationSilenceTime(Context context, int i6, int i9, int i10, int i11) {
        if (context == null) {
            MTCommonLog.e(TAG, "setNotificationSilenceTime context can't be null, please check it");
            return;
        }
        if (i6 < 0 || i6 > 23) {
            MTCommonLog.e(TAG, "setNotificationSilenceTime beginHour must between 0~23, please check it");
            return;
        }
        if (i9 < 0 || i9 > 59) {
            MTCommonLog.e(TAG, "setNotificationSilenceTime beginMinute must between 0~59, please check it");
            return;
        }
        if (i10 < 0 || i10 > 23) {
            MTCommonLog.e(TAG, "setNotificationSilenceTime endHour must between 0~23, please check it");
            return;
        }
        if (i11 < 0 || i11 > 59) {
            MTCommonLog.e(TAG, "setNotificationSilenceTime endMinute must between 0~59, please check it");
            return;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt(MTPushConstants.NotificationTime.KEY_BEGIN_HOUR, i6);
            bundle.putInt(MTPushConstants.NotificationTime.KEY_BEGIN_MINUTE, i9);
            bundle.putInt(MTPushConstants.NotificationTime.KEY_END_HOUR, i10);
            bundle.putInt(MTPushConstants.NotificationTime.KEY_END_MINUTE, i11);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.SET_NOTIFICATION_SILENCE_TIME, bundle);
        }
    }

    public static void showNotification(Context context, NotificationMessage notificationMessage) {
        if (context == null) {
            MTCommonLog.e(TAG, "showNotification context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTPushConstants.Message.KEY_MESSAGE, notificationMessage);
            bundle.putBoolean(MTPushConstants.Message.KEY_MESSAGE_LIMIT, false);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.SHOW_NOTIFICATION, bundle);
        }
    }

    public static void turnOffGeofenceSwitch(Context context) {
        if (context == null) {
            MTCommonLog.e("MTCommonPrivatesApi", "turnOffGeofenceSwitch context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.TURN_OFF_GEOFENCESWITCH, null);
        } else {
            MTCommonLog.e("MTCommonPrivatesApi", "turnOffGeofenceSwitch should be called in main process");
        }
    }

    public static void turnOffPush(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "turnOffPush context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.TURN_OFF_PUSH, null);
        }
    }

    public static void turnOnGeofenceSwitch(Context context) {
        if (context == null) {
            MTCommonLog.e("MTCommonPrivatesApi", "turnOnGeofenceSwitch context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.TURN_ON_GEOFENCESWITCH, null);
        } else {
            MTCommonLog.e("MTCommonPrivatesApi", "turnOnGeofenceSwitch should be called in main process");
        }
    }

    public static void turnOnPush(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "turnOnPush context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.TURN_ON_PUSH, null);
        }
    }

    public static void updateTag(Context context, int i6, String... strArr) {
        if (context == null) {
            MTCommonLog.e(TAG, "updateTag context can't be null, please check it");
            return;
        }
        if (i6 == 0) {
            MTCommonLog.e(TAG, "updateTag sequence can't be 0, please check it");
            return;
        }
        if (strArr == null) {
            MTCommonLog.e(TAG, "updateTag tag can't be null, please check it");
            return;
        }
        if (strArr.length == 0) {
            MTCommonLog.e(TAG, "updateTag tag can't be empty, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt(MTPushConstants.Operation.KEY_SEQUENCE, i6);
            bundle.putStringArray(MTPushConstants.Operation.KEY_TAG, strArr);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.TAG_UPDATE, bundle);
        }
    }

    public static void uploadMobileNumber(Context context, int i6, String str) {
        if (context == null) {
            MTCommonLog.e(TAG, "uploadMobileNumber context can't be null, please check it");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            MTCommonLog.e(TAG, "uploadMobileNumber mobileNumber can't be empty, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putInt(MTPushConstants.Operation.KEY_SEQUENCE, i6);
            bundle.putString(MTPushConstants.Operation.KEY_MOBILE_NUMBER, str);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.ON_MOBILE_NUMBER, bundle);
        }
    }

    public static void uploadPlatformToken(Context context, byte b3, String str, String str2) {
        if (context == null) {
            MTCommonLog.e(TAG, "onPlatformToken context can't be null, please check it");
            return;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            PlatformTokenMessage isUserSettings = new PlatformTokenMessage().setPlatform(b3).setToken(str).setIsUserSettings(true);
            if (!TextUtils.isEmpty(str2)) {
                isUserSettings.setRegion(str2);
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTPushConstants.Message.KEY_MESSAGE, isUserSettings);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.ON_PLATFORM_TOKEN, bundle);
        }
    }

    public static void clearNotification(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "clearNotification context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context.getApplicationContext(), MTPushConstants.RemoteWhat.CLEAR_NOTIFICATION, null);
        }
    }
}
