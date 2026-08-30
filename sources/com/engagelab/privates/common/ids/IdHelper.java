package com.engagelab.privates.common.ids;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.text.TextUtils;
import com.engagelab.privates.common.helper.CollectControlHelper;
import com.engagelab.privates.common.ids.google.AdvertisingInterface;
import com.engagelab.privates.common.ids.google.GoogleSericeConnection;
import com.engagelab.privates.common.log.MTCommonLog;
import java.util.concurrent.TimeUnit;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class IdHelper {
    private static final String TAG = "IdHelper";
    private static String gGoogleAdID = null;
    private static boolean limitAdTrackingEnabled = false;
    private static String mGaid;

    public static String getGaid(Context context) {
        if (!CollectControlHelper.getInstance().getCollectControl("gaid")) {
            return "";
        }
        if (mGaid == null) {
            mGaid = getGoogleAdid(context);
        }
        return TextUtils.isEmpty(mGaid) ? "" : mGaid;
    }

    private static String getGoogleAdid(Context context) {
        try {
            if (gGoogleAdID == null) {
                String googleAdidInternal = getGoogleAdidInternal(context);
                gGoogleAdID = googleAdidInternal;
                gGoogleAdID = TextUtils.isEmpty(googleAdidInternal) ? "" : gGoogleAdID;
            }
        } catch (Throwable th) {
            gGoogleAdID = "";
            x.j(th, new StringBuilder("getGoogleAdid failed:"), TAG);
        }
        return gGoogleAdID;
    }

    private static String getGoogleAdidInternal(Context context) {
        if (isMainThread()) {
            MTCommonLog.w(TAG, "not get id in main thread");
            return "";
        }
        try {
            String str = GuardConstant.COM_GOOGLE_ANDROID_GMS_ADS_IDENTIFIER_SERVICE_START;
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            Intent intent = new Intent(str);
            String str2 = GuardConstant.COM_GOOGLE_ANDROID_GMS;
            if (TextUtils.isEmpty(str2)) {
                return "";
            }
            intent.setPackage(str2);
            GoogleSericeConnection googleSericeConnection = new GoogleSericeConnection();
            if (context.bindService(intent, googleSericeConnection, 1)) {
                try {
                    if (googleSericeConnection.connected) {
                        MTCommonLog.w(TAG, "google service repeat bind");
                        return "";
                    }
                    AdvertisingInterface advertisingInterface = new AdvertisingInterface(googleSericeConnection.linkedBlockingQueue.poll(2L, TimeUnit.SECONDS));
                    String id = advertisingInterface.getId();
                    limitAdTrackingEnabled = advertisingInterface.isLimitAdTrackingEnabled(false);
                    MTCommonLog.d(TAG, "google ad id:" + id + "limitAdTrackingEnabled:" + limitAdTrackingEnabled);
                    return id;
                } catch (Throwable th) {
                    try {
                        MTCommonLog.w(TAG, "get google Ids by service error: " + th.getMessage());
                        context.unbindService(googleSericeConnection);
                        return "";
                    } finally {
                        context.unbindService(googleSericeConnection);
                    }
                }
            }
            MTCommonLog.w(TAG, "google service bind failed");
        } catch (Throwable th2) {
            MTCommonLog.w(TAG, "google getAdvertisingIdInfo Exception: " + th2.toString());
        }
        return "";
    }

    public static boolean hasGAIDPermission(Context context) {
        return AdvertisingInterface.hasGAIDPermission(context);
    }

    public static boolean isLimitAdTrackingEnabled(Context context) {
        return limitAdTrackingEnabled;
    }

    private static boolean isMainThread() {
        try {
            return Looper.getMainLooper().getThread().getId() == Thread.currentThread().getId();
        } catch (Throwable th) {
            x.j(th, new StringBuilder("[isMainThread] failed:"), TAG);
            return true;
        }
    }
}
