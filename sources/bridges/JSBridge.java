package bridges;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import android.provider.Settings;
import android.util.Base64;
import android.util.Log;
import android.webkit.JavascriptInterface;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.lottery.app.GameActivity;
import d4.a;
import h8.b;
import java.io.OutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import q2.x;
import utils.ReplacePropertiesUtil;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class JSBridge {
    public static final String bridgeName = "NativeBridge";
    private final Activity activity;
    private final Context appContext;
    private final String eventTrackString;
    private final ReplacePropertiesUtil reader;

    public JSBridge(Context context, Activity activity) {
        Context applicationContext = context.getApplicationContext();
        this.appContext = applicationContext;
        this.activity = activity;
        this.reader = new ReplacePropertiesUtil(applicationContext);
        this.eventTrackString = b.q(applicationContext);
    }

    private static String ensureExtMatchesMime(String str, String str2) {
        String lowerCase = str.toLowerCase();
        return (!str2.startsWith("image/png") || lowerCase.endsWith(".png")) ? (!str2.startsWith("image/jpeg") || lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) ? (!str2.startsWith("image/webp") || lowerCase.endsWith(".webp")) ? (!str2.startsWith("image/gif") || lowerCase.endsWith(".gif")) ? str : str.concat(".gif") : str.concat(".webp") : str.concat(".jpg") : str.concat(".png");
    }

    private static String guessExtByMime(String str) {
        return str == null ? ".bin" : str.startsWith("image/png") ? ".png" : str.startsWith("image/jpeg") ? ".jpg" : str.startsWith("image/webp") ? ".webp" : str.startsWith("image/gif") ? ".gif" : ".bin";
    }

    private static String jsonError(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("error", str == null ? "unknown" : str);
            return jSONObject.toString();
        } catch (JSONException unused) {
            StringBuilder sb = new StringBuilder("{\"error\":\"");
            if (str == null) {
                str = "unknown";
            }
            return x.h(sb, str, "\"}");
        }
    }

    @JavascriptInterface
    public String getInfoString() {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("deviceId", Settings.Secure.getString(this.appContext.getContentResolver(), "android_id"));
            ReplacePropertiesUtil replacePropertiesUtil = this.reader;
            String strValueOf = (replacePropertiesUtil == null || replacePropertiesUtil.get("packageType") == null) ? "" : String.valueOf(this.reader.get("packageType"));
            ReplacePropertiesUtil replacePropertiesUtil2 = this.reader;
            String strValueOf2 = (replacePropertiesUtil2 == null || replacePropertiesUtil2.get("applicationId") == null) ? "" : String.valueOf(this.reader.get("applicationId"));
            ReplacePropertiesUtil replacePropertiesUtil3 = this.reader;
            String strValueOf3 = "";
            String strValueOf4 = (replacePropertiesUtil3 == null || replacePropertiesUtil3.get("appName") == null) ? strValueOf3 : String.valueOf(this.reader.get("appName"));
            ReplacePropertiesUtil replacePropertiesUtil4 = this.reader;
            String strValueOf5 = (replacePropertiesUtil4 == null || replacePropertiesUtil4.get("versionCode") == null) ? strValueOf3 : String.valueOf(this.reader.get("versionCode"));
            ReplacePropertiesUtil replacePropertiesUtil5 = this.reader;
            String strValueOf6 = (replacePropertiesUtil5 == null || replacePropertiesUtil5.get("versionName") == null) ? strValueOf3 : String.valueOf(this.reader.get("versionName"));
            ReplacePropertiesUtil replacePropertiesUtil6 = this.reader;
            String strValueOf7 = (replacePropertiesUtil6 == null || replacePropertiesUtil6.get("invitationCode") == null) ? strValueOf3 : String.valueOf(this.reader.get("invitationCode"));
            ReplacePropertiesUtil replacePropertiesUtil7 = this.reader;
            String strValueOf8 = (replacePropertiesUtil7 == null || replacePropertiesUtil7.get("is_valid_pwd") == null) ? strValueOf3 : String.valueOf(this.reader.get("is_valid_pwd"));
            ReplacePropertiesUtil replacePropertiesUtil8 = this.reader;
            String strValueOf9 = (replacePropertiesUtil8 == null || replacePropertiesUtil8.get("channelPackageId") == null) ? strValueOf3 : String.valueOf(this.reader.get("channelPackageId"));
            ReplacePropertiesUtil replacePropertiesUtil9 = this.reader;
            String strValueOf10 = (replacePropertiesUtil9 == null || replacePropertiesUtil9.get("env") == null) ? strValueOf3 : String.valueOf(this.reader.get("env"));
            ReplacePropertiesUtil replacePropertiesUtil10 = this.reader;
            String str = strValueOf10;
            String strValueOf11 = (replacePropertiesUtil10 == null || replacePropertiesUtil10.get("type") == null) ? strValueOf3 : String.valueOf(this.reader.get("type"));
            ReplacePropertiesUtil replacePropertiesUtil11 = this.reader;
            String strValueOf12 = (replacePropertiesUtil11 == null || replacePropertiesUtil11.get("domainUrl") == null) ? strValueOf3 : String.valueOf(this.reader.get("domainUrl"));
            ReplacePropertiesUtil replacePropertiesUtil12 = this.reader;
            String strValueOf13 = (replacePropertiesUtil12 == null || replacePropertiesUtil12.get("tenantId") == null) ? strValueOf3 : String.valueOf(this.reader.get("tenantId"));
            ReplacePropertiesUtil replacePropertiesUtil13 = this.reader;
            String strValueOf14 = (replacePropertiesUtil13 == null || replacePropertiesUtil13.get("icon") == null) ? strValueOf3 : String.valueOf(this.reader.get("icon"));
            ReplacePropertiesUtil replacePropertiesUtil14 = this.reader;
            if (replacePropertiesUtil14 != null && replacePropertiesUtil14.get("launcher") != null) {
                strValueOf3 = String.valueOf(this.reader.get("launcher"));
            }
            jSONObject2.put("apkType", "native".equals(strValueOf) ? "full_apk" : "quick_apk");
            jSONObject2.put("appId", strValueOf2);
            jSONObject2.put("appName", strValueOf4);
            jSONObject2.put("isValidPwd", strValueOf8);
            jSONObject2.put("versionCode", strValueOf5);
            jSONObject2.put("versionName", strValueOf6);
            jSONObject2.put("eventList", this.eventTrackString);
            jSONObject2.put("invitationCode", strValueOf7);
            jSONObject2.put("channelPackageId", strValueOf9);
            jSONObject2.put("env", str);
            String str2 = strValueOf11;
            jSONObject2.put("type", str2);
            String str3 = strValueOf13;
            jSONObject2.put("tenantId", str3);
            String str4 = strValueOf12;
            jSONObject2.put("domainUrl", str4);
            String str5 = strValueOf14;
            jSONObject2.put("icon", str5);
            String str6 = strValueOf3;
            jSONObject2.put("launcher", str6);
            jSONObject = jSONObject2;
            try {
                Log.d("ReplaceProps", "✅读取到的数据: eventTrackString=" + this.eventTrackString);
                Log.d("ReplaceProps", "✅读取到的数据: packageType=".concat(strValueOf));
                Log.d("ReplaceProps", "✅读取到的数据: appId=".concat(strValueOf2));
                Log.d("ReplaceProps", "✅读取到的数据: appName=".concat(strValueOf4));
                Log.d("ReplaceProps", "✅读取到的数据: versionCode=".concat(strValueOf5));
                Log.d("ReplaceProps", "✅读取到的数据: versionName=".concat(strValueOf6));
                Log.d("ReplaceProps", "✅读取到的数据: invitationCode=".concat(strValueOf7));
                Log.d("ReplaceProps", "✅读取到的数据: channelPackageId=".concat(strValueOf9));
                Log.d("ReplaceProps", "✅读取到的数据: env=".concat(str));
                Log.d("ReplaceProps", "✅读取到的数据: type=".concat(str2));
                Log.d("ReplaceProps", "✅读取到的数据: tenantId=".concat(str3));
                Log.d("ReplaceProps", "✅读取到的数据: domainUrl=".concat(str4));
                Log.d("ReplaceProps", "✅读取到的数据: icon=".concat(str5));
                Log.d("ReplaceProps", "✅读取到的数据: launcher=".concat(str6));
            } catch (JSONException e9) {
                e = e9;
                Log.e("JSBridge", "getInfoString JSON 失败", e);
            }
        } catch (JSONException e10) {
            e = e10;
            jSONObject = jSONObject2;
        }
        return jSONObject.toString();
    }

    @JavascriptInterface
    public void openExternalPage(String str) {
        Log.d("✅JSBridge", "openExternalPage: params=" + str);
        try {
            Intent intent = new Intent(this.appContext, (Class<?>) GameActivity.class);
            intent.addFlags(268435456);
            intent.putExtra("params", str);
            this.appContext.startActivity(intent);
        } catch (Exception e9) {
            Log.e("JSBridge", "openExternalPage 失败: " + e9.getMessage(), e9);
        }
    }

    @JavascriptInterface
    public void openExternalUrl(String str) {
        Log.d("✅JSBridge", "openExternalUrl: " + str);
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(268435456);
            this.appContext.startActivity(intent);
        } catch (Exception e9) {
            Log.e("☹️JSBridge", "openExternalUrl 失败: " + e9.getMessage(), e9);
        }
    }

    @JavascriptInterface
    public String readClipboardPayload() {
        try {
            if (!this.activity.hasWindowFocus()) {
                return new JSONObject().put("ok", false).put("reason", "no_focus").toString();
            }
            String strE = a.e(this.activity);
            if (strE != null && !strE.trim().isEmpty()) {
                return strE.startsWith("[") ? new JSONObject().put("ok", true).put(MTCoreConstants.Protocol.KEY_DATA, new JSONArray(strE)).toString() : strE.startsWith("{") ? new JSONObject().put("ok", true).put(MTCoreConstants.Protocol.KEY_DATA, new JSONObject(strE)).toString() : new JSONObject().put("ok", true).put(MTCoreConstants.Protocol.KEY_DATA, strE).toString();
            }
            return new JSONObject().put("ok", false).put("reason", "no_data").toString();
        } catch (Throwable th) {
            return new JSONObject().put("ok", false).put("reason", "error").put(MTPushConstants.Message.KEY_MESSAGE, String.valueOf(th.getMessage())).toString();
        }
    }

    @JavascriptInterface
    public String readClipboardPayloadNoEncode() {
        ClipData primaryClip;
        CharSequence charSequenceCoerceToText;
        try {
            if (!this.activity.hasWindowFocus()) {
                return new JSONObject().put("ok", false).put("reason", "no_focus").toString();
            }
            ClipboardManager clipboardManager = (ClipboardManager) this.appContext.getSystemService(ClipboardManager.class);
            if (clipboardManager == null || !clipboardManager.hasPrimaryClip() || (primaryClip = clipboardManager.getPrimaryClip()) == null || primaryClip.getItemCount() == 0 || (charSequenceCoerceToText = primaryClip.getItemAt(0).coerceToText(this.appContext)) == null) {
                return null;
            }
            String strTrim = charSequenceCoerceToText.toString().trim();
            if (strTrim != null && !strTrim.trim().isEmpty()) {
                return strTrim.startsWith("[") ? new JSONObject().put("ok", true).put(MTCoreConstants.Protocol.KEY_DATA, new JSONArray(strTrim)).toString() : strTrim.startsWith("{") ? new JSONObject().put("ok", true).put(MTCoreConstants.Protocol.KEY_DATA, new JSONObject(strTrim)).toString() : new JSONObject().put("ok", true).put(MTCoreConstants.Protocol.KEY_DATA, strTrim).toString();
            }
            return new JSONObject().put("ok", false).put("reason", "no_data").toString();
        } catch (Throwable th) {
            return new JSONObject().put("ok", false).put("reason", "error").put(MTPushConstants.Message.KEY_MESSAGE, String.valueOf(th.getMessage())).toString();
        }
    }

    @JavascriptInterface
    public String saveBase64(String str, String str2, String str3) {
        String strTrim;
        String strEnsureExtMatchesMime;
        byte[] bArrDecode;
        if (str2 != null) {
            try {
                strTrim = str2.trim().isEmpty() ? "image/png" : str2.trim();
            } catch (Throwable th) {
                Log.e("JSBridge", "saveBase64 failed", th);
                return jsonError(th.getMessage());
            }
        }
        if (str == null || str.trim().isEmpty()) {
            strEnsureExtMatchesMime = "image_" + System.currentTimeMillis() + guessExtByMime(strTrim);
        } else {
            strEnsureExtMatchesMime = str.trim();
        }
        String strTrim2 = str3 == null ? "" : str3.trim();
        int iIndexOf = strTrim2.indexOf(44);
        if (strTrim2.startsWith("data:") && iIndexOf > 0) {
            String strReplace = strTrim2.substring(0, iIndexOf).replaceFirst("^data:", "").replace(";base64", "");
            if (strReplace != null && !strReplace.isEmpty()) {
                strTrim = strReplace;
            }
            strTrim2 = strTrim2.substring(iIndexOf + 1);
        }
        String strReplaceAll = strTrim2.replaceAll("\\s+", "");
        if (strReplaceAll.isEmpty()) {
            return jsonError("empty base64");
        }
        boolean z5 = strReplaceAll.contains("-") || strReplaceAll.contains("_");
        int length = strReplaceAll.length() % 4;
        if (length == 2) {
            strReplaceAll = strReplaceAll.concat("==");
        } else if (length == 3) {
            strReplaceAll = strReplaceAll.concat("=");
        } else if (length == 1) {
            return jsonError("invalid base64 length");
        }
        try {
            bArrDecode = Base64.decode(strReplaceAll, (z5 ? 8 : 0) | 2);
        } catch (IllegalArgumentException unused) {
            bArrDecode = Base64.decode(strReplaceAll, 2);
        }
        boolean zStartsWith = strTrim.startsWith("image/");
        if (zStartsWith) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options);
            if (options.outWidth > 0 && options.outHeight > 0) {
                strEnsureExtMatchesMime = ensureExtMatchesMime(strEnsureExtMatchesMime, strTrim);
            }
            return jsonError("decoded bytes are not a valid image");
        }
        Uri contentUri = zStartsWith ? MediaStore.Images.Media.EXTERNAL_CONTENT_URI : MediaStore.Files.getContentUri("external");
        ContentResolver contentResolver = this.appContext.getContentResolver();
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", strEnsureExtMatchesMime);
        contentValues.put("mime_type", strTrim);
        contentValues.put("relative_path", "Pictures/MyApp");
        contentValues.put("is_pending", (Integer) 1);
        Uri uriInsert = contentResolver.insert(contentUri, contentValues);
        if (uriInsert == null) {
            return jsonError("insert failed");
        }
        OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(uriInsert);
        try {
            if (outputStreamOpenOutputStream == null) {
                String strJsonError = jsonError("openOutputStream null");
                if (outputStreamOpenOutputStream != null) {
                    outputStreamOpenOutputStream.close();
                }
                return strJsonError;
            }
            outputStreamOpenOutputStream.write(bArrDecode);
            outputStreamOpenOutputStream.flush();
            outputStreamOpenOutputStream.close();
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("is_pending", (Integer) 0);
            contentResolver.update(uriInsert, contentValues2, null, null);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("uri", uriInsert.toString());
            jSONObject.put("bytes", bArrDecode.length);
            jSONObject.put("mime", strTrim);
            jSONObject.put("filename", strEnsureExtMatchesMime);
            return jSONObject.toString();
        } finally {
        }
    }

    @JavascriptInterface
    public void shareImageToApp(String str, String str2) {
        if (str == null || str.trim().isEmpty()) {
            return;
        }
        try {
            Uri uri = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("image/*");
            intent.putExtra("android.intent.extra.STREAM", uri);
            intent.addFlags(268435457);
            intent.setClipData(ClipData.newUri(this.appContext.getContentResolver(), "image", uri));
            if (str2 != null && !str2.trim().isEmpty()) {
                intent.setPackage(str2);
            }
            this.appContext.startActivity(Intent.createChooser(intent, "Share image"));
        } catch (Exception e9) {
            Log.e("JSBridge", "shareImageToApp failed", e9);
        }
    }

    @JavascriptInterface
    public void trackEvent(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            Log.d("✅JSBridge", "收到事件: " + jSONObject);
            jSONObject.optString("event", "");
            jSONObject.optJSONObject("params");
        } catch (JSONException e9) {
            Log.e("JSBridge", "JSON解析失败: " + e9.getMessage());
        }
    }

    @JavascriptInterface
    public void shareFacebookBase64(String str) {
    }
}
