package com.engagelab.privates.common;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.AESUtil;
import com.engagelab.privates.common.utils.SM4Util;
import com.engagelab.privates.common.utils.StringUtil;
import com.engagelab.privates.core.global.MTCoreGlobal;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class e {
    public static String a(Context context) {
        try {
            List<String> httpAddress = MTCoreGlobal.getHttpAddress(context);
            if (httpAddress.isEmpty()) {
                MTCommonLog.w("CrtClient", "there are no report url");
                return null;
            }
            String md5AesKey = AESUtil.getMd5AesKey(AESUtil.generateSeed());
            String iv = AESUtil.getIv(new String("\u000b\r\u0012PRQRVRWRT\u00032\tC".getBytes(), Charset.forName("UTF-8")), 'b');
            String appKey = MTGlobal.getAppKey(context);
            String str = appKey + ":" + md5AesKey;
            MTCommonLog.d("CrtClient", "atn:" + str);
            String str2 = "Basic " + Base64.encodeToString(SM4Util.encryptBytes(StringUtil.stringToUtf8Bytes(str), StringUtil.get32MD5String(appKey), iv), 10);
            ArrayList arrayList = new ArrayList();
            int i6 = 0;
            for (int i9 = 0; i9 < 3; i9++) {
                arrayList.addAll(httpAddress);
            }
            String str3 = "/get_cert?ver=" + r.p(context) + "&k=" + appKey;
            int size = arrayList.size();
            while (i6 < size) {
                Object obj = arrayList.get(i6);
                i6++;
                byte[] bArrA = t.a(context, ((String) obj) + str3, str2);
                if (bArrA != null) {
                    JSONObject jSONObject = new JSONObject(new String(bArrA, MTCommonConstants.UTF_8));
                    if (jSONObject.has("cert")) {
                        jSONObject.put("cert", new String(SM4Util.decryptBytes(Base64.decode(jSONObject.optString("cert"), 10), md5AesKey, iv), MTCommonConstants.UTF_8));
                    }
                    return jSONObject.toString();
                }
            }
            MTCommonLog.w("CrtClient", "get crt failed");
            return null;
        } catch (Exception e9) {
            MTCommonLog.w("CrtClient", "get crt failed un :" + e9);
            return null;
        }
    }

    public static boolean b(Context context) {
        JSONObject jSONObject;
        String strA = a(context);
        if (TextUtils.isEmpty(strA)) {
            MTCommonLog.w("CrtClient", "get crt failed");
            return false;
        }
        try {
            MTCommonLog.d("CrtClient", "get crt body : " + strA);
            jSONObject = new JSONObject(strA);
        } catch (Exception e9) {
            MTCommonLog.e("CrtClient", "get crt failed : " + e9);
        }
        if (jSONObject.optInt("code", -1) != 0) {
            MTCommonLog.e("CrtClient", "get crt failed jsonObject : " + jSONObject);
            return false;
        }
        int i6 = jSONObject.getInt("ver");
        String string = jSONObject.getString("cert");
        r.a(context, i6);
        r.a(context, string);
        MTCommonLog.d("CrtClient", "get crt Success ver = " + i6);
        return true;
    }
}
