package com.engagelab.privates.push.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Icon;
import com.engagelab.privates.common.log.MTCommonLog;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ResourceHelper {
    private static final String TAG = "ResourceHelper";

    public static Icon createIcon(String str) {
        try {
            if (new File(str).exists()) {
                return Icon.createWithFilePath(str);
            }
            MTCommonLog.w(TAG, "icon file doesn't exist, path=" + str);
            return null;
        } catch (Throwable th) {
            MTCommonLog.w(TAG, "createIcon err:" + th);
            return null;
        }
    }

    public static Bitmap getBitmap(Context context, int i6) {
        try {
            if (i6 != 0) {
                return BitmapFactory.decodeResource(context.getResources(), i6);
            }
            MTCommonLog.w(TAG, "getBitmap: resId is 0");
            return null;
        } catch (Throwable th) {
            MTCommonLog.w(TAG, "getBitmap failed: resId=" + i6 + th);
            return null;
        }
    }

    private static Bitmap getBitmapFromAssets(Context context, String str) {
        InputStream inputStreamOpen;
        try {
            inputStreamOpen = context.getResources().getAssets().open(str);
        } catch (Throwable th) {
            th = th;
            inputStreamOpen = null;
        }
        try {
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen);
            MTCommonLog.d(TAG, "getBitmapFromAssets success: " + str);
            if (inputStreamOpen != null) {
                try {
                    return bitmapDecodeStream;
                } catch (Throwable th2) {
                }
            }
            return bitmapDecodeStream;
        } catch (Throwable th3) {
            th = th3;
            try {
                MTCommonLog.w(TAG, "getBitmapFromAssets failed: " + str + th);
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (Throwable th4) {
                        MTCommonLog.w(TAG, "close InputStream failed" + th4);
                    }
                }
                return null;
            } finally {
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (Throwable th22) {
                        MTCommonLog.w(TAG, "close InputStream failed" + th22);
                    }
                }
            }
        }
    }

    public static Bitmap getBitmapFromLocalResource(Context context, String str) {
        if (context == null || str == null || str.isEmpty()) {
            MTCommonLog.w(TAG, "getBitmapFromLocalResource: context or path is null or empty");
            return null;
        }
        try {
            String strNormalizePath = normalizePath(str);
            if (strNormalizePath.startsWith("assets/")) {
                return getBitmapFromAssets(context, strNormalizePath.substring(7));
            }
            int resIdFromResource = getResIdFromResource(context, strNormalizePath);
            if (resIdFromResource == 0) {
                MTCommonLog.w(TAG, "getBitmapFromLocalResource: resource not found - ".concat(strNormalizePath));
                return null;
            }
            Bitmap bitmap = getBitmap(context, resIdFromResource);
            if (bitmap == null) {
                MTCommonLog.w(TAG, "getBitmapFromLocalResource: decodeResource returned null for resId: " + resIdFromResource);
                return bitmap;
            }
            MTCommonLog.d(TAG, "getBitmapFromLocalResource success: " + strNormalizePath + ", resId: " + resIdFromResource);
            return bitmap;
        } catch (Throwable th) {
            MTCommonLog.e(TAG, "getBitmapFromLocalResource failed: " + str + th);
            return null;
        }
    }

    public static Icon getIconFromLocalResource(Context context, String str) {
        String strNormalizePath;
        if (context == null || str == null || str.isEmpty()) {
            MTCommonLog.w(TAG, "getIconFromLocalResource: context or path is null or empty");
            return null;
        }
        try {
            strNormalizePath = normalizePath(str);
        } catch (Throwable th) {
            MTCommonLog.w(TAG, "getIconFromLocalResource failed: " + str + th);
        }
        if (strNormalizePath.startsWith("assets/")) {
            Bitmap bitmapFromAssets = getBitmapFromAssets(context, strNormalizePath.substring(7));
            if (bitmapFromAssets != null) {
                return Icon.createWithBitmap(bitmapFromAssets);
            }
            return null;
        }
        Icon iconCreateIcon = createIcon(strNormalizePath);
        if (iconCreateIcon != null) {
            MTCommonLog.d(TAG, "getIconFromLocalResource success with file path: ".concat(strNormalizePath));
            return iconCreateIcon;
        }
        int resIdFromResource = getResIdFromResource(context, strNormalizePath);
        if (resIdFromResource == 0) {
            MTCommonLog.d(TAG, "getIconFromLocalResource: resource not found - ".concat(strNormalizePath));
            return null;
        }
        Icon iconCreateWithResource = Icon.createWithResource(context, resIdFromResource);
        MTCommonLog.d(TAG, "getIconFromLocalResource success with resId: " + resIdFromResource);
        return iconCreateWithResource;
    }

    public static int getResIdFromDrawable(Context context, String str) {
        if (context == null || str == null || str.isEmpty()) {
            MTCommonLog.w(TAG, "getResIdFromDrawable: context or path is null or empty");
            return 0;
        }
        try {
            String strNormalizePath = normalizePath(str);
            if (strNormalizePath.startsWith("res/")) {
                strNormalizePath = strNormalizePath.substring(4);
            }
            if (!strNormalizePath.contains("/")) {
                return getResIdFromResourceType(context, strNormalizePath.contains(".") ? strNormalizePath.substring(0, strNormalizePath.lastIndexOf(".")) : strNormalizePath, "drawable");
            }
            String[] strArrSplit = strNormalizePath.split("/", 2);
            if (strArrSplit.length != 2) {
                MTCommonLog.w(TAG, "getResIdFromDrawable: invalid path format: ".concat(strNormalizePath));
                return 0;
            }
            String lowerCase = strArrSplit[0].toLowerCase();
            String strSubstring = strArrSplit[1];
            if (strSubstring.contains("/")) {
                MTCommonLog.w(TAG, "getResIdFromDrawable: resourceName is a path, not a file name: ".concat(strSubstring));
                return 0;
            }
            if (strSubstring.contains(".")) {
                strSubstring = strSubstring.substring(0, strSubstring.lastIndexOf("."));
            }
            if (lowerCase.startsWith("drawable")) {
                return getResIdFromResourceType(context, strSubstring, "drawable");
            }
            MTCommonLog.w(TAG, "getResIdFromDrawable: unsupported prefix: ".concat(lowerCase));
            return 0;
        } catch (Throwable th) {
            MTCommonLog.e(TAG, "getResIdFromDrawable failed: " + str + th);
            return 0;
        }
    }

    private static int getResIdFromResource(Context context, String str) {
        if (context == null || str == null || str.isEmpty()) {
            MTCommonLog.w(TAG, "getResIdFromResource: context or path is null or empty");
            return 0;
        }
        try {
            String strNormalizePath = normalizePath(str);
            if (strNormalizePath.startsWith("res/")) {
                strNormalizePath = strNormalizePath.substring(4);
            }
            if (!strNormalizePath.contains("/")) {
                return getResIdFromResourceType(context, strNormalizePath.contains(".") ? strNormalizePath.substring(0, strNormalizePath.lastIndexOf(".")) : strNormalizePath, "drawable");
            }
            String[] strArrSplit = strNormalizePath.split("/", 2);
            if (strArrSplit.length != 2) {
                MTCommonLog.w(TAG, "getResIdFromResource: invalid path format: ".concat(strNormalizePath));
                return 0;
            }
            String lowerCase = strArrSplit[0].toLowerCase();
            String strSubstring = strArrSplit[1];
            if (strSubstring.contains("/")) {
                MTCommonLog.w(TAG, "getResIdFromResource: resourceName is a path, not a file name: ".concat(strSubstring));
                return 0;
            }
            if (strSubstring.contains(".")) {
                strSubstring = strSubstring.substring(0, strSubstring.lastIndexOf("."));
            }
            if ("assets".equals(lowerCase)) {
                MTCommonLog.w(TAG, "getResIdFromResource: assets resource does not have resId: ".concat(strNormalizePath));
                return 0;
            }
            if (lowerCase.startsWith("drawable")) {
                return getResIdFromResourceType(context, strSubstring, "drawable");
            }
            if (lowerCase.startsWith("mipmap")) {
                return getResIdFromResourceType(context, strSubstring, "mipmap");
            }
            if ("raw".equals(lowerCase)) {
                return getResIdFromResourceType(context, strSubstring, "raw");
            }
            MTCommonLog.w(TAG, "getResIdFromResource: unsupported prefix: ".concat(lowerCase));
            return 0;
        } catch (Throwable th) {
            MTCommonLog.e(TAG, "getResIdFromResource failed: " + str + th);
            return 0;
        }
    }

    private static int getResIdFromResourceType(Context context, String str, String str2) {
        try {
            int identifier = context.getResources().getIdentifier(str, str2, context.getPackageName());
            if (identifier == 0) {
                MTCommonLog.w(TAG, "getResIdFromResourceType: resource not found - " + str2 + "/" + str);
                return identifier;
            }
            MTCommonLog.d(TAG, "getResIdFromResourceType success: " + str2 + "/" + str + ", resId: " + identifier);
            return identifier;
        } catch (Throwable th) {
            MTCommonLog.e(TAG, "getResIdFromResourceType failed: " + str2 + "/" + str + "/" + th);
            return 0;
        }
    }

    private static String normalizePath(String str) {
        return (str == null || str.isEmpty()) ? str : (str.startsWith("/assets/") || str.startsWith("/res/")) ? str.substring(1) : str;
    }
}
