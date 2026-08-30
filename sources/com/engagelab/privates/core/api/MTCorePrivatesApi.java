package com.engagelab.privates.core.api;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.observer.MTObservable;
import com.engagelab.privates.common.p;
import com.engagelab.privates.common.r;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.core.global.MTCoreGlobal;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTCorePrivatesApi {
    public static final int SDK_VERSION_CODE = 530;
    public static final String SDK_VERSION_NAME = "5.3.0";
    private static final String TAG = "MTCorePrivatesApi";

    public static void configAppChannel(Context context, String str) {
        if (context == null) {
            MTCommonLog.e(TAG, "configAppChannel context can't be null, please check it");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            MTCommonLog.e(TAG, "configAppChannel appChannel can't be empty, please check it");
            return;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext()) || MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putString(MTCoreConstants.Config.APP_CHANNEL, str);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.SET_CONFIG, bundle);
            MTGlobal.setAppChannel(str);
        }
    }

    public static void configAppKey(Context context, String str) {
        if (context == null) {
            MTCommonLog.e(TAG, "configAppKey context can't be null, please check it");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            MTCommonLog.e(TAG, "configAppKey appKey can't be empty, please check it");
            return;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext()) || MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putString(MTCoreConstants.Config.APP_KEY, str);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.SET_CONFIG, bundle);
            MTGlobal.setAppKey(str);
            MTCoreGlobal.setRegistrationId("");
            MTCoreGlobal.setUserId(0L);
            MTCoreGlobal.setPassword("");
            MTCoreGlobal.setLoginCode(-1);
            MTCoreGlobal.setRegisterCode(-1);
        }
    }

    public static void configAppSiteName(Context context, String str) {
        if (context == null) {
            MTCommonLog.e(TAG, "configAppSiteName context can't be null, please check it");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            MTCommonLog.e(TAG, "configAppSiteName appSiteName can't be empty, please check it");
            return;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext()) || MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putString(MTCoreConstants.Config.APP_SITE_NAME, str);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.SET_CONFIG, bundle);
            MTGlobal.setAppSiteName(str);
        }
    }

    public static void configConnectRetryCount(Context context, int i6) {
        if (context == null) {
            MTCoreGlobal.setConnectRetryCount(i6);
        } else if (MTGlobal.isMainProcess(context.getApplicationContext()) || MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            MTCoreGlobal.setConnectRetryCount(i6);
        }
    }

    public static void configDebugMode(Context context, boolean z5) {
        if (context == null) {
            MTGlobal.setDebugMode(z5);
            return;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext()) || MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putBoolean(MTCoreConstants.Config.DEBUG_MODE, z5);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.SET_CONFIG, bundle);
            MTGlobal.setDebugMode(z5);
        }
    }

    public static void configHeartbeatInterval(Context context, long j3) {
        if (context == null) {
            MTCoreGlobal.setHeartbeatInterval(j3);
        } else if (MTGlobal.isMainProcess(context.getApplicationContext()) || MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            MTCoreGlobal.setHeartbeatInterval(j3);
        }
    }

    public static void configSM4(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "configSM4 context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext()) || MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            MTGlobal.setEncryptType(2);
        }
    }

    public static void configWakeAndBeWake(Context context, boolean z5) {
        if (context == null) {
            MTCommonLog.e(TAG, "configWakeAndBeWake context can't be null, please check it");
        } else if (MTGlobal.isMainProcess(context.getApplicationContext()) || MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            MTCoreGlobal.setWakeAndBeWakeState(z5);
        }
    }

    public static int getLoginCode(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "getLoginCode context can't be null, please check it");
            return 0;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            return MTCoreGlobal.getLoginCode(context);
        }
        if (MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            return r.f(context.getApplicationContext());
        }
        return 0;
    }

    public static String getPassword(Context context) {
        if (context != null) {
            return MTGlobal.isMainProcess(context.getApplicationContext()) ? MTCoreGlobal.getPassword(context) : MTGlobal.isRemoteProcess(context.getApplicationContext()) ? r.g(context.getApplicationContext()) : "";
        }
        MTCommonLog.e(TAG, "getPassword context can't be null, please check it");
        return "";
    }

    public static int getRegisterCode(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "getRegisterCode context can't be null, please check it");
            return 0;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            return MTCoreGlobal.getRegisterCode(context);
        }
        if (MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            return r.i(context.getApplicationContext());
        }
        return 0;
    }

    public static String getRegistrationId(Context context) {
        if (context != null) {
            return MTGlobal.isMainProcess(context.getApplicationContext()) ? MTCoreGlobal.getRegistrationId(context) : MTGlobal.isRemoteProcess(context.getApplicationContext()) ? r.j(context.getApplicationContext()) : "";
        }
        MTCommonLog.e(TAG, "getRegistrationId context can't be null, please check it");
        return "";
    }

    public static int getSeedId(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "getSeedId context can't be null, please check it");
            return 0;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            return MTCoreGlobal.getSeedId(context);
        }
        if (MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            return r.k(context.getApplicationContext());
        }
        return 0;
    }

    public static long getServerTime(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "getServerTime context can't be null, please check it");
            return 0L;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            return MTCoreGlobal.getServerTime(context);
        }
        if (MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            return r.l(context.getApplicationContext());
        }
        return 0L;
    }

    public static long getUserId(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "getUserId context can't be null, please check it");
            return 0L;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext())) {
            return MTCoreGlobal.getUserId(context);
        }
        if (MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            return r.r(context.getApplicationContext());
        }
        return 0L;
    }

    public static boolean isConnectContinue(Context context) {
        if (context == null) {
            MTCommonLog.e(TAG, "isConnectContinue context can't be null, please check it");
            return false;
        }
        if (!MTGlobal.isMainProcess(context.getApplicationContext()) && !MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            return false;
        }
        for (String str : MTObservable.getInstance().observeNameQueue) {
            if (TextUtils.equals(str, "com.engagelab.privates.push.MTPush") || TextUtils.equals(str, "com.engagelab.privates.message.MTMessage")) {
                return true;
            }
        }
        return false;
    }

    public static void setEnableResetOnDeviceChange(Context context, boolean z5) {
        if (context == null) {
            MTCommonLog.e(TAG, "setEnableResetOnDeviceChange context can't be null, please check it");
            return;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext()) || MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            Bundle bundle = new Bundle();
            bundle.putBoolean(MTCoreConstants.Config.DEVICE_MIGRATION, z5);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.SET_CONFIG, bundle);
            MTCoreGlobal.setResetOnDeviceChangeEnabled(z5);
        }
    }

    public static void setEnableUdp(Context context, boolean z5) {
        if (MTGlobal.IS_FOR_ENGAGELAB) {
            Bundle bundle = new Bundle();
            bundle.putBoolean(MTCoreConstants.Config.ENABLE_UDP, z5);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.SET_CONFIG, bundle);
            MTGlobal.setUdpEnable(z5);
        }
    }

    public static void setLCCapacity(Context context, int i6) {
        if (context == null) {
            MTCommonLog.e(TAG, "setLCCapacity context can't be null, please check it");
            return;
        }
        if (i6 < 5) {
            MTCommonLog.e(TAG, "setLCCapacity capacity must be at least 5M, please check it");
            return;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext()) || MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            MTCommonLog.d(TAG, "setLCCapacity: " + i6);
            Bundle bundle = new Bundle();
            bundle.putInt(MTCoreConstants.Config.LOG_COLLECTION_CAPACITY, i6);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.SET_CONFIG, bundle);
            MTCommonLog.setMaxTotalSize(i6);
        }
    }

    public static void setLCOn(Context context, boolean z5) {
        if (context == null) {
            MTCommonLog.e(TAG, "setLCOn context can't be null, please check it");
            return;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext()) || MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            MTCommonLog.d(TAG, "setLCOn: " + z5);
            Bundle bundle = new Bundle();
            bundle.putBoolean(MTCoreConstants.Config.LOG_COLLECTION_ON, z5);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.SET_CONFIG, bundle);
            MTCommonLog.setLogCacheEnabled(z5);
        }
    }

    public static void setReportCacheFileMaximum(int i6) {
        if (i6 >= 0) {
            p.f1235d = i6;
        }
    }

    @Deprecated
    public static void setTcpSSl(boolean z5) {
        if (MTGlobal.IS_FOR_ENGAGELAB) {
            MTGlobal.setTcpSSL(z5);
        }
    }

    @Deprecated
    public static void setWakeAndBeWakeEnable(Context context, boolean z5) {
        configWakeAndBeWake(context, z5);
    }

    public static void testConfigGoogle(Context context, boolean z5) {
        if (context == null) {
            MTCommonLog.e(TAG, "testConfigGoogle context can't be null, please check it");
            return;
        }
        if (MTGlobal.isMainProcess(context.getApplicationContext()) || MTGlobal.isRemoteProcess(context.getApplicationContext())) {
            MTCommonLog.e(TAG, "testConfigGoogle, Can only be used in the debugging version, please do not call the release version");
            if (z5) {
                MTGlobal.setCountryCode("US");
            } else {
                MTGlobal.setCountryCode("CN");
            }
        }
    }

    public static void setTcpSSl(Context context, boolean z5) {
        if (MTGlobal.IS_FOR_ENGAGELAB) {
            Bundle bundle = new Bundle();
            bundle.putBoolean(MTCoreConstants.Config.IS_SSL, z5);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.SET_CONFIG, bundle);
            MTGlobal.setTcpSSL(z5);
        }
    }
}
