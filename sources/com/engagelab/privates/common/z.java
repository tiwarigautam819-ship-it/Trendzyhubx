package com.engagelab.privates.common;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.FileUtils;
import com.engagelab.privates.common.utils.ImageUtils;
import com.engagelab.privates.common.utils.Utils;
import com.engagelab.privates.push.api.InAppMessage;
import com.engagelab.privates.push.utils.HttpUtils;
import com.getcapacitor.Bridge;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class z {
    public static d0 a(InAppMessage inAppMessage, int i6) {
        boolean zC = f0.c(i6);
        d0 d0Var = new d0();
        long jAbs = Math.abs(inAppMessage.getDuration() - 1000);
        if (jAbs <= 0) {
            jAbs = 5000;
        }
        if (!zC) {
            return d0Var.d(-1).c(500.0f).a(jAbs).b(500.0f).c((Integer) (-1));
        }
        try {
            d0Var.a(Integer.valueOf(new JSONObject(inAppMessage.getContent()).optLong(FirebaseAnalytics.Param.LOCATION) == 0 ? 48 : 80));
        } catch (Throwable unused) {
        }
        return d0Var.d(-1).c((Integer) (-2)).b((Integer) 65824).c(500.0f).a(jAbs).b(500.0f);
    }

    public static String b(Context context, String str, String str2) {
        File appKeyFile = FileUtils.getAppKeyFile(context, "mt_in_app_down" + File.separator + "mt_in_app_" + str, str2);
        return appKeyFile == null ? "" : appKeyFile.getAbsolutePath();
    }

    public static InAppMessage c(Context context, InAppMessage inAppMessage) {
        try {
            JSONObject jSONObject = new JSONObject(inAppMessage.getContent());
            String messageId = inAppMessage.getMessageId();
            String strOptString = jSONObject.optString(FirebaseAnalytics.Param.CONTENT);
            MTCommonLog.w("InAppHelper", "handleHtmlImage html content=" + strOptString);
            String strB = b(context, messageId, "mt_in_app_html_" + messageId + ".html");
            boolean zCreateImgFile = FileUtils.createImgFile(strB, strOptString.getBytes());
            MTCommonLog.w("InAppHelper", "handleHtmlImage save html result=" + zCreateImgFile);
            if (zCreateImgFile) {
                inAppMessage.setContent(strB);
                return inAppMessage;
            }
        } catch (Throwable unused) {
        }
        MTCommonLog.w("InAppHelper", "handleHtmlImage no html");
        return null;
    }

    public static InAppMessage d(Context context, InAppMessage inAppMessage) {
        return 40 == inAppMessage.getType() ? c(context, inAppMessage) : 10 == inAppMessage.getType() ? a(context, inAppMessage) : b(context, inAppMessage);
    }

    public static InAppMessage b(Context context, InAppMessage inAppMessage) {
        String imageUrl = inAppMessage.getImageUrl();
        if (!TextUtils.isEmpty(imageUrl) && imageUrl.startsWith(Bridge.CAPACITOR_HTTP_SCHEME)) {
            if (Utils.checkValidImageUrl(imageUrl, true)) {
                String strA = a(context, imageUrl, inAppMessage.getMessageId());
                if (!TextUtils.isEmpty(strA)) {
                    inAppMessage.setLocalImageUrl(strA);
                    return inAppMessage;
                }
            }
            MTCommonLog.w("InAppHelper", "handleDefaultImage imageError");
            a(context, imageUrl, inAppMessage);
            return null;
        }
        MTCommonLog.w("InAppHelper", "handleDefaultImage no image url");
        return inAppMessage;
    }

    public static long a(Context context, long j3) {
        try {
            long jA = x.a(context);
            MTCommonLog.d("InAppHelper", "getIntervalTime lastShowMessageTime=" + jA);
            if (jA <= 0) {
                return j3;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jAbs = Math.abs(jCurrentTimeMillis - jA);
            MTCommonLog.d("InAppHelper", "getIntervalTime currentTimeMillis=" + jCurrentTimeMillis);
            MTCommonLog.d("InAppHelper", "getIntervalTime diff=" + jAbs);
            if (jAbs > j3) {
                MTCommonLog.d("InAppHelper", "getIntervalTime return value= 0");
                return 0L;
            }
            StringBuilder sb = new StringBuilder("getIntervalTime return value= ");
            long j8 = j3 - jAbs;
            sb.append(j8);
            MTCommonLog.d("InAppHelper", sb.toString());
            return j8;
        } catch (Throwable unused) {
            MTCommonLog.d("InAppHelper", "getIntervalTime return intervalTime= " + j3);
            return j3;
        }
    }

    public static String a(Context context, String str, String str2) {
        try {
            byte[] bArr = HttpUtils.get(context, str, true);
            if (bArr != null) {
                try {
                    String str3 = "mt_in_app_image_" + System.currentTimeMillis();
                    MTCommonLog.d("InAppHelper", "download image resource success, path: " + str3);
                    String strB = b(context, str2, str3);
                    boolean zCreateImgFile = FileUtils.createImgFile(strB, bArr);
                    if (zCreateImgFile) {
                        MTCommonLog.d("InAppHelper", "download image resource cache to local success, path: " + strB);
                        MTCommonLog.d("InAppHelper", "download image resource cache to local success, Uri.fromFile: " + Uri.fromFile(new File(str3)));
                        ImageUtils.compressImage(strB, str);
                        return strB;
                    }
                    MTCommonLog.d("InAppHelper", "Succeed to load image - " + strB + ", cache local status: " + zCreateImgFile);
                    return null;
                } catch (Throwable th) {
                    MTCommonLog.w("InAppHelper", "Write storage error,  create img file fail." + th);
                    return null;
                }
            }
            MTCommonLog.w("InAppHelper", "download image resource failed, path: " + str);
            return null;
        } catch (Throwable th2) {
            q2.x.j(th2, new StringBuilder("load h5 template image resource failed, "), "InAppHelper");
            return null;
        }
    }

    public static InAppMessage a(Context context, InAppMessage inAppMessage) {
        try {
            JSONObject jSONObject = new JSONObject(inAppMessage.getContent());
            if (jSONObject.has("small_image")) {
                String strOptString = jSONObject.optString("small_image");
                if (!TextUtils.isEmpty(strOptString) && strOptString.startsWith(Bridge.CAPACITOR_HTTP_SCHEME)) {
                    if (Utils.checkValidImageUrl(strOptString, true)) {
                        String strA = a(context, strOptString, inAppMessage.getMessageId());
                        if (!TextUtils.isEmpty(strA)) {
                            jSONObject.put("local_small_image", strA);
                            inAppMessage.setContent(jSONObject.toString());
                            return inAppMessage;
                        }
                    }
                    MTCommonLog.w("InAppHelper", "handleBannerImage imageError");
                    a(context, strOptString, inAppMessage);
                    return null;
                }
            }
        } catch (Throwable unused) {
        }
        MTCommonLog.w("InAppHelper", "handleBannerImage default");
        return inAppMessage;
    }

    public static void a(Context context, String str, InAppMessage inAppMessage) {
        if (!TextUtils.isEmpty(HttpUtils.getErrorCode(str))) {
            HttpUtils.deleteErrorCode(str);
        } else {
            u.a().a(context, 10133008, inAppMessage.getMessageId(), inAppMessage.getAppkey());
            w.d().b(inAppMessage.getMessageId());
        }
    }
}
