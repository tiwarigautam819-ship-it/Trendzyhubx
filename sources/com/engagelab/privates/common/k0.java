package com.engagelab.privates.common;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.component.MTCommonReceiver;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.DeviceUtil;
import com.engagelab.privates.core.api.MTReporter;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.api.NotificationLayout;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.engagelab.privates.push.utils.NotificationUtil;
import java.util.Arrays;
import java.util.Calendar;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class k0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile k0 f1203b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1204a = -1;

    public static k0 a() {
        if (f1203b == null) {
            synchronized (k0.class) {
                f1203b = new k0();
            }
        }
        return f1203b;
    }

    public int b(Context context) {
        return a1.f(context);
    }

    public boolean c(Context context) {
        try {
            String strG = a1.g(context);
            if (TextUtils.isEmpty(strG)) {
                return true;
            }
            MTCommonLog.d("MTPushBusiness", "isNotificationShowTime showTime:" + strG);
            String[] strArrSplit = strG.split("_");
            String str = strArrSplit[0];
            String str2 = strArrSplit[1];
            char[] charArray = str.toCharArray();
            String[] strArrSplit2 = str2.split("\\^");
            Calendar calendar = Calendar.getInstance();
            int i6 = calendar.get(7);
            int i9 = calendar.get(11);
            MTCommonLog.d("MTPushBusiness", "isNotificationShowTime currentHour:" + i9 + ",currentDay:" + i6);
            int length = charArray.length;
            for (int i10 = 0; i10 < length; i10++) {
                int i11 = Integer.parseInt(String.valueOf(charArray[i10]));
                MTCommonLog.d("MTPushBusiness", "settingDay:" + i11);
                if (i6 != i11 + 1) {
                    break;
                }
                int i12 = Integer.parseInt(strArrSplit2[0]);
                int i13 = Integer.parseInt(strArrSplit2[1]);
                if (i9 >= i12 && i9 <= i13) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("isNotificationShowTime failed "), "MTPushBusiness");
            return true;
        }
    }

    public boolean d(Context context) {
        String strH;
        try {
            strH = a1.h(context);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("isNotificationSilenceTime failed "), "MTPushBusiness");
        }
        if (TextUtils.isEmpty(strH)) {
            return false;
        }
        MTCommonLog.d("MTPushBusiness", "isNotificationSilenceTime cacheSilenceTime:" + strH);
        JSONObject jSONObject = new JSONObject(strH);
        int iOptInt = jSONObject.optInt(MTPushConstants.NotificationTime.KEY_BEGIN_HOUR);
        int iOptInt2 = jSONObject.optInt(MTPushConstants.NotificationTime.KEY_BEGIN_MINUTE);
        int iOptInt3 = jSONObject.optInt(MTPushConstants.NotificationTime.KEY_END_HOUR);
        int iOptInt4 = jSONObject.optInt(MTPushConstants.NotificationTime.KEY_END_MINUTE);
        Calendar calendar = Calendar.getInstance();
        int i6 = calendar.get(11);
        int i9 = calendar.get(12);
        MTCommonLog.d("MTPushBusiness", "isNotificationSilenceTime currentTime:" + i6 + ":" + i9 + ", silenceTime:" + iOptInt + ":" + iOptInt2 + "-" + iOptInt3 + ":" + iOptInt4);
        if (iOptInt < iOptInt3) {
            if (i6 > iOptInt && i6 < iOptInt3) {
                MTCommonLog.d("MTPushBusiness", "is notificationSilenceTime 1");
                return true;
            }
            if (i6 == iOptInt && i9 >= iOptInt2) {
                MTCommonLog.d("MTPushBusiness", "is notificationSilenceTime 2");
                return true;
            }
            if (i6 != iOptInt3 || i9 > iOptInt4) {
                MTCommonLog.d("MTPushBusiness", "not notificationSilenceTime 1");
                return false;
            }
            MTCommonLog.d("MTPushBusiness", "is notificationSilenceTime 3");
            return true;
        }
        if (iOptInt == iOptInt3) {
            if (iOptInt2 < iOptInt4) {
                if (i6 != iOptInt || i9 < iOptInt2 || i9 > iOptInt4) {
                    MTCommonLog.d("MTPushBusiness", "not notificationSilenceTime 3");
                    return false;
                }
                MTCommonLog.d("MTPushBusiness", "is notificationSilenceTime 7");
                return true;
            }
            if (i6 != iOptInt) {
                MTCommonLog.d("MTPushBusiness", "is notificationSilenceTime 4");
                return true;
            }
            if (i9 >= iOptInt2) {
                MTCommonLog.d("MTPushBusiness", "is notificationSilenceTime 5");
                return true;
            }
            if (i9 <= iOptInt4) {
                MTCommonLog.d("MTPushBusiness", "is notificationSilenceTime 6");
                return true;
            }
            MTCommonLog.d("MTPushBusiness", "not notificationSilenceTime 2");
            return false;
        }
        if (iOptInt > iOptInt3) {
            if (i6 > iOptInt && i6 <= 23) {
                MTCommonLog.d("MTPushBusiness", "is notificationSilenceTime 8");
                return true;
            }
            if (i6 >= 0 && i6 < iOptInt3) {
                MTCommonLog.d("MTPushBusiness", "is notificationSilenceTime 9");
                return true;
            }
            if (i6 == iOptInt && i9 >= iOptInt2) {
                MTCommonLog.d("MTPushBusiness", "is notificationSilenceTime 10");
                return true;
            }
            if (i6 != iOptInt3 || i9 > iOptInt4) {
                MTCommonLog.d("MTPushBusiness", "not notificationSilenceTime 4");
                return false;
            }
            MTCommonLog.d("MTPushBusiness", "is notificationSilenceTime 11");
            return true;
        }
        MTCommonLog.d("MTPushBusiness", "not notificationSilenceTime 5");
        return false;
    }

    public void e(Context context, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        int i6 = bundle.getInt(MTPushConstants.NotificationCount.KEY_COUNT);
        if (i6 <= 0) {
            MTCommonLog.e("MTPushBusiness", "setNotificationCount error: count must > 0");
            return;
        }
        MTCommonLog.e("MTPushBusiness", "setNotificationCount " + i6);
        a1.c(context, i6);
    }

    public void f(Context context) {
        a1.b(context, 0);
        String str = Build.MANUFACTURER;
        String lowerCase = str.toLowerCase();
        String lowerCase2 = str.toLowerCase();
        lowerCase2.getClass();
        if (lowerCase2.equals(MTPushConstants.Manufacturer.HUAWEI)) {
            NotificationUtil.setHuaweiBadgeNumber(context, 0);
        } else {
            if (lowerCase2.equals(MTPushConstants.Manufacturer.HONOR)) {
                NotificationUtil.setHonorBadge(context, 0);
                return;
            }
            MTCommonLog.d("MTPushBusiness", "setNotificationBadge not support " + lowerCase);
        }
    }

    public void g(Context context, Bundle bundle) {
        try {
            MTCommonLog.d("MTPushBusiness", "setNotificationShowTime:" + MTCommonLog.toLogString(bundle));
            int[] intArray = bundle.getIntArray(MTPushConstants.NotificationTime.KEY_DAYS);
            if (intArray.length == 0) {
                MTCommonLog.d("MTPushBusiness", "setNotificationShowTime weekDays.length is 0, can't show notification everyTime");
                a1.c(context, "");
                return;
            }
            int i6 = bundle.getInt(MTPushConstants.NotificationTime.KEY_BEGIN_HOUR);
            int i9 = bundle.getInt(MTPushConstants.NotificationTime.KEY_END_HOUR);
            MTCommonLog.d("MTPushBusiness", "setNotificationShowTime startHour:" + i6 + ",endHour:" + i9 + ",weekDays:" + Arrays.toString(intArray));
            StringBuilder sb = new StringBuilder();
            for (int i10 : intArray) {
                sb.append(Integer.valueOf(i10));
            }
            sb.append("_");
            sb.append(i6);
            sb.append("^");
            sb.append(i9);
            if (Pattern.compile("([0-6]{0,7})_((([0-9]|1[0-9]|2[0-3])\\^([0-9]|1[0-9]|2[0-3]))|(([0-9]|1[0-9]|2[0-3])\\^([0-9]|1[0-9]|2[0-3])-)+(([0-9]|1[0-9]|2[0-3])\\^([0-9]|1[0-9]|2[0-3])))").matcher(sb).matches()) {
                a1.c(context, sb.toString());
                return;
            }
            MTCommonLog.e("MTPushBusiness", "setNotificationShowTime invalid time format - " + ((Object) sb));
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("setNotificationPushTime failed "), "MTPushBusiness");
        }
    }

    public void h(Context context) {
        MTCommonLog.d("MTPushBusiness", "resetNotificationShowTime");
        a1.c(context, "");
    }

    public void i(Context context) {
        MTCommonLog.d("MTPushBusiness", "resetNotificationSilenceTime");
        a1.d(context, "");
    }

    public void b(Context context, Bundle bundle) {
        try {
            MTCommonReceiver commonReceiver = MTGlobal.getCommonReceiver(context);
            if (commonReceiver == null) {
                return;
            }
            commonReceiver.onNotificationStatus(context, bundle.getBoolean(MTPushConstants.NotificationState.KEY_STATE));
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("processMainNotificationState failed "), "MTPushBusiness");
        }
    }

    public void h(Context context, Bundle bundle) {
        try {
            int i6 = bundle.getInt(MTPushConstants.NotificationTime.KEY_BEGIN_HOUR);
            int i9 = bundle.getInt(MTPushConstants.NotificationTime.KEY_BEGIN_MINUTE);
            int i10 = bundle.getInt(MTPushConstants.NotificationTime.KEY_END_HOUR);
            int i11 = bundle.getInt(MTPushConstants.NotificationTime.KEY_END_MINUTE);
            MTCommonLog.d("MTPushBusiness", "setNotificationSilenceTime:" + i6 + ":" + i9 + "-" + i10 + ":" + i11);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MTPushConstants.NotificationTime.KEY_BEGIN_HOUR, i6);
            jSONObject.put(MTPushConstants.NotificationTime.KEY_BEGIN_MINUTE, i9);
            jSONObject.put(MTPushConstants.NotificationTime.KEY_END_HOUR, i10);
            jSONObject.put(MTPushConstants.NotificationTime.KEY_END_MINUTE, i11);
            a1.d(context, jSONObject.toString());
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("setNotificationSilenceTime failed "), "MTPushBusiness");
        }
    }

    public void e(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("itime", System.currentTimeMillis() / 1000);
            String strS = r.s(context);
            if (TextUtils.isEmpty(strS)) {
                strS = DeviceUtil.getLanguage(context);
            }
            Object obj = DeviceUtil.getGAID(context) + "&" + (((DeviceUtil.hasGAIDPermission(context) ? 1 : 0) << 1) | (DeviceUtil.isAdTrackingEnabled(context) ? 1 : 0));
            jSONObject.put("lang", strS);
            jSONObject.put("contry", MTGlobal.getCountryCode(context));
            jSONObject.put("carrier", DeviceUtil.getCarrier(context));
            jSONObject.put("os_version", DeviceUtil.getSystemVersionRelease());
            jSONObject.put("os_version_code", DeviceUtil.getSystemVersionSdkInt());
            jSONObject.put("model", DeviceUtil.getModel());
            jSONObject.put("device_name", DeviceUtil.getSystemDevice());
            jSONObject.put("product", DeviceUtil.getProduct());
            jSONObject.put("manufacturer", DeviceUtil.getManufacturer());
            jSONObject.put("time_zone", DeviceUtil.getTimeZone());
            jSONObject.put("time_zone_id", DeviceUtil.getTimeZoneId());
            jSONObject.put("app_version", MTGlobal.getAppVersionName(context));
            jSONObject.put("android_id", DeviceUtil.getAndroidId(context));
            jSONObject.put("gaid", obj);
            MTReporter content = new MTReporter().setType("oversea_info").setContent(jSONObject.toString());
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, content);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.REPORT, bundle);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("reportSoverseaInfo failed "), "MTPushBusiness");
        }
    }

    public int a(Context context) {
        return a1.e(context);
    }

    public NotificationLayout a(Context context, int i6) {
        try {
            String strA = a1.a(context, i6);
            if (TextUtils.isEmpty(strA)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(strA);
            if (jSONObject.length() == 0) {
                return null;
            }
            int iOptInt = jSONObject.optInt(MTPushConstants.NotificationLayout.KEY_LAYOUT_ID);
            int iOptInt2 = jSONObject.optInt(MTPushConstants.NotificationLayout.KEY_ICON_VIEW_ID);
            int iOptInt3 = jSONObject.optInt(MTPushConstants.NotificationLayout.KEY_ICON_RESOURCE_ID);
            int iOptInt4 = jSONObject.optInt(MTPushConstants.NotificationLayout.KEY_TITLE_VIEW_ID);
            NotificationLayout timeViewId = new NotificationLayout().setLayoutId(iOptInt).setIconViewId(iOptInt2).setIconResourceId(iOptInt3).setTitleViewId(iOptInt4).setContentViewId(jSONObject.optInt(MTPushConstants.NotificationLayout.KEY_CONTENT_VIEW_ID)).setTimeViewId(jSONObject.optInt(MTPushConstants.NotificationLayout.KEY_TIME_VIEW_ID));
            MTCommonLog.d("MTPushBusiness", "getNotificationLayout builderId:" + i6 + timeViewId.toString());
            return timeViewId;
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("getNotificationLayout builderId:");
            sb.append(i6);
            sb.append(" failed ");
            q2.x.j(th, sb, "MTPushBusiness");
            return null;
        }
    }

    public void f(Context context, Bundle bundle) {
        try {
            bundle.setClassLoader(NotificationLayout.class.getClassLoader());
            int i6 = bundle.getInt("id");
            NotificationLayout notificationLayout = (NotificationLayout) bundle.getParcelable(MTPushConstants.NotificationLayout.KEY_NOTIFICATION_LAYOUT);
            MTCommonLog.d("MTPushBusiness", "setNotificationLayout id:" + i6 + notificationLayout.toString());
            int layoutId = notificationLayout.getLayoutId();
            int iconViewId = notificationLayout.getIconViewId();
            int iconResourceId = notificationLayout.getIconResourceId();
            int titleViewId = notificationLayout.getTitleViewId();
            int contentViewId = notificationLayout.getContentViewId();
            int timeViewId = notificationLayout.getTimeViewId();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MTPushConstants.NotificationLayout.KEY_LAYOUT_ID, layoutId);
            jSONObject.put(MTPushConstants.NotificationLayout.KEY_ICON_VIEW_ID, iconViewId);
            jSONObject.put(MTPushConstants.NotificationLayout.KEY_ICON_RESOURCE_ID, iconResourceId);
            jSONObject.put(MTPushConstants.NotificationLayout.KEY_TITLE_VIEW_ID, titleViewId);
            jSONObject.put(MTPushConstants.NotificationLayout.KEY_CONTENT_VIEW_ID, contentViewId);
            jSONObject.put(MTPushConstants.NotificationLayout.KEY_TIME_VIEW_ID, timeViewId);
            a1.a(context, i6, jSONObject.toString());
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("setNotificationLayout failed "), "MTPushBusiness");
        }
    }

    public void b(Context context, int i6) {
        boolean notificationState = NotificationUtil.getNotificationState(context);
        int i9 = this.f1204a;
        if (i9 == -1) {
            MTCommonLog.d("MTPushBusiness", "notification state is " + notificationState);
            this.f1204a = notificationState ? 1 : 0;
            a(context, i6, notificationState);
            return;
        }
        if (i9 == notificationState) {
            MTCommonLog.d("MTPushBusiness", "no need update notification state lastNotificationState:" + this.f1204a + ",currentNotificationState:" + (notificationState ? 1 : 0));
            return;
        }
        MTCommonLog.d("MTPushBusiness", "notification state is " + notificationState);
        this.f1204a = notificationState ? 1 : 0;
        a(context, i6, notificationState);
    }

    public void c(Context context, Bundle bundle) {
        int i6 = bundle.getInt("id");
        MTCommonLog.d("MTPushBusiness", "resetNotificationLayout builderId:" + i6);
        a1.a(context, i6, "");
    }

    public void g(Context context) {
        MTCommonLog.d("MTPushBusiness", "resetNotificationCount");
        a1.c(context, 5);
    }

    public final void a(Context context, int i6, boolean z5) {
        try {
            Bundle bundle = new Bundle();
            bundle.putBoolean(MTPushConstants.NotificationState.KEY_STATE, z5);
            MTCommonPrivatesApi.sendMessageToMainProcess(context, 3006, bundle);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MTPushConstants.NotificationState.KEY_STATE, z5);
            jSONObject.put("trigger_scene", i6);
            MTReporter content = new MTReporter().setType("android_notification_state").setContent(jSONObject.toString());
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, content);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.REPORT, bundle2);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTPushConstants.RemoteWhat.REPORT_NOTIFICATION_STATE, bundle2);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("onNotificationState failed "), "MTPushBusiness");
        }
    }

    public void d(Context context, Bundle bundle) {
        int i6 = bundle.getInt(MTPushConstants.NotificationBadge.KEY_BADGE);
        if (i6 < 0) {
            MTCommonLog.e("MTPushBusiness", "setNotificationBadge error: number count must >= 0");
            return;
        }
        a1.b(context, i6);
        String str = Build.MANUFACTURER;
        String lowerCase = str.toLowerCase();
        String lowerCase2 = str.toLowerCase();
        lowerCase2.getClass();
        if (lowerCase2.equals(MTPushConstants.Manufacturer.HUAWEI)) {
            NotificationUtil.setHuaweiBadgeNumber(context, i6);
        } else {
            if (!lowerCase2.equals(MTPushConstants.Manufacturer.HONOR)) {
                MTCommonLog.d("MTPushBusiness", "setNotificationBadge not support " + lowerCase);
                return;
            }
            NotificationUtil.setHonorBadge(context, i6);
        }
    }

    public void a(Context context, Bundle bundle) {
        Context context2;
        try {
            if (bundle == null) {
                MTCommonLog.w("MTPushBusiness", "handleEventMatchNotification: bundle is null");
                return;
            }
            String string = bundle.getString("event_match_data");
            if (TextUtils.isEmpty(string)) {
                MTCommonLog.w("MTPushBusiness", "handleEventMatchNotification: event_match_data is empty");
                return;
            }
            JSONArray jSONArrayOptJSONArray = new JSONObject(string).optJSONArray("match_results");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                int i6 = 0;
                while (i6 < jSONArrayOptJSONArray.length()) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i6);
                    if (jSONObjectOptJSONObject != null) {
                        String strOptString = jSONObjectOptJSONObject.optString("msgid");
                        String strOptString2 = jSONObjectOptJSONObject.optString("event_name");
                        long jOptLong = jSONObjectOptJSONObject.optLong("timestamp");
                        String strOptString3 = jSONObjectOptJSONObject.optString(MTPushConstants.PlatformNode.KEY_PLATFORM);
                        String strOptString4 = jSONObjectOptJSONObject.optString("msgtype");
                        String strOptString5 = jSONObjectOptJSONObject.optString(MTPushConstants.Message.KEY_APPKEY);
                        if ("1".equals(strOptString4)) {
                            context2 = context;
                            a(context2, strOptString, strOptString2, jOptLong, strOptString3, strOptString4, strOptString5);
                        } else {
                            context2 = context;
                            MTCommonLog.d("MTPushBusiness", "handleEventMatchNotification: skip reporting for msgtype: " + strOptString4 + ", msgid: " + strOptString + " (only process Notification messages)");
                        }
                    } else {
                        context2 = context;
                    }
                    i6++;
                    context = context2;
                }
                MTCommonLog.d("MTPushBusiness", "handleEventMatchNotification: processed " + jSONArrayOptJSONArray.length() + " match results");
                return;
            }
            MTCommonLog.w("MTPushBusiness", "handleEventMatchNotification: no match results");
        } catch (Exception e9) {
            MTCommonLog.e("MTPushBusiness", "handleEventMatchNotification: error: " + e9.getMessage());
        }
    }

    public final void a(Context context, String str, String str2, long j3, String str3, String str4, String str5) {
        String str6;
        try {
            if (TextUtils.isEmpty(str3)) {
                MTCommonLog.w("MTPushBusiness", "reportEventMatch: empty platform :" + str3);
                return;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                byte b3 = Byte.parseByte(str3);
                if (b3 != 0) {
                    jSONObject.put("sdk_type", (int) b3);
                    str6 = MTPushConstants.Message.TYPE_PLATFORM_MESSAGE_STATE;
                } else {
                    str6 = MTPushConstants.Message.TYPE_MESSAGE_STATE;
                }
                jSONObject.put("msg_id", str);
                jSONObject.put("result", MTPushConstants.Message.CODE_CLICK_EVENT_MATCH);
                jSONObject.put("target_event_time", j3);
                jSONObject.put("target_event", str2);
                MTReporter content = new MTReporter().setAppkey(str5).setType(str6).setContent(jSONObject.toString());
                Bundle bundle = new Bundle();
                bundle.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, content);
                MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.REPORT, bundle);
                MTCommonLog.d("MTPushBusiness", "reportEventMatch: reported event match for msgid: " + str + ", event: " + str2 + ", timestamp: " + j3 + ", type: " + str6 + ", appkey: " + str5);
            } catch (NumberFormatException unused) {
                MTCommonLog.w("MTPushBusiness", "reportEventMatch: failed to parse platform to byte: " + str3);
            }
        } catch (Throwable th) {
            MTCommonLog.e("MTPushBusiness", "reportEventMatch: error: " + th.getMessage());
        }
    }
}
