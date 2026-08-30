package utils;

import android.content.Context;
import android.util.Log;
import b2.e;
import i8.h;
import i8.i;
import i8.j;
import i8.k;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import q5.l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ResistBanUtil {
    private static final String TAG = "ResistBan";
    private static final l gson = new l();
    public static String pro_old_kv_url = "https://anti-blockdomain.chenhaisheng008.workers.dev/old-domain/";
    public static String pro_saas_kv_url = "https://anti-blockdomain.chenhaisheng008.workers.dev/saas-domain/";
    public static String secret = "Authorization_Secret";
    public static String test_kv_url = "https://kv-url.june618.workers.dev/lottery/";

    public static String buildSignedJson() {
        return gson.d(getSignedInfo(secret));
    }

    public static String getKvUrl(Context context) {
        String str;
        ReplacePropertiesUtil replacePropertiesUtil = new ReplacePropertiesUtil(context);
        String str2 = replacePropertiesUtil.get("stationName");
        String str3 = replacePropertiesUtil.get("project_type");
        if (str2.isEmpty()) {
            return "";
        }
        if (replacePropertiesUtil.isDebugger()) {
            str = test_kv_url + str2 + "_api";
        } else if ("NEW".equals(str3)) {
            str = pro_saas_kv_url + str2 + "_api";
        } else {
            str = pro_old_kv_url + str2 + "_api";
        }
        Log.d(TAG, "✅kvUrl:" + str.replace("/", "\\"));
        return str;
    }

    public static Map<String, String> getSignedInfo(String str) throws NoSuchAlgorithmException, InvalidKeyException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String strValueOf = String.valueOf(new Random().nextLong() & 1099511627775L);
        String strValueOf2 = String.valueOf(System.currentTimeMillis());
        linkedHashMap.put("random", strValueOf);
        linkedHashMap.put("timestamp", strValueOf2);
        String strA = h.a(linkedHashMap);
        Mac mac = Mac.getInstance("HmacSHA256");
        Charset charset = StandardCharsets.UTF_8;
        mac.init(new SecretKeySpec(str.getBytes(charset), "HmacSHA256"));
        byte[] bArrDoFinal = mac.doFinal(strA.getBytes(charset));
        StringBuilder sb = new StringBuilder(bArrDoFinal.length * 2);
        for (byte b3 : bArrDoFinal) {
            String hexString = Integer.toHexString(b3 & 255);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        linkedHashMap.put("signature", sb.toString());
        return linkedHashMap;
    }

    public static void getUsefulUrl(String str, k kVar) {
        new Thread(new e(str, 1)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void lambda$getUsefulUrl$1(String str, k kVar) {
        try {
            i iVarB = j.b(str, buildSignedJson());
            int i6 = iVarB.f3236c;
            String str2 = (String) iVarB.f3237d;
            Log.d(TAG, "✅返回数据 " + iVarB);
            Log.d(TAG, "✅HTTP状态: " + i6);
            Log.d(TAG, "✅接口返回: " + str2);
            if (!(i6 >= 200 && i6 < 300) && !iVarB.f3235b) {
                throw new RuntimeException(iVarB.toString());
            }
            kVar.b();
        } catch (Exception e9) {
            Log.e(TAG, "❌接口错误: " + e9.getMessage(), e9);
            kVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void lambda$postUsefulUrl$0(String str, k kVar) {
        try {
            i iVarB = j.b(str, buildSignedJson());
            int i6 = iVarB.f3236c;
            String str2 = (String) iVarB.f3237d;
            Log.d(TAG, "✅返回数据 " + iVarB);
            Log.d(TAG, "✅HTTP状态: " + i6);
            Log.d(TAG, "✅接口返回: " + str2);
            if (!(i6 >= 200 && i6 < 300) && !iVarB.f3235b) {
                throw new RuntimeException(iVarB.toString());
            }
            kVar.b();
        } catch (Exception e9) {
            Log.e(TAG, "❌接口错误: " + e9.getMessage(), e9);
            kVar.a();
        }
    }

    public static void postUsefulUrl(String str, k kVar) {
        if (str.isEmpty()) {
            Log.d(TAG, "❌url为空");
        } else {
            new Thread(new e(str, 2)).start();
        }
    }
}
