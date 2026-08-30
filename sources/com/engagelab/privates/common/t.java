package com.engagelab.privates.common;

import android.content.Context;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.https.HttpUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class t {
    public static int a(Context context, String str, String str2, byte[] bArr, Map<String, String> map) {
        HashMap map2 = new HashMap();
        map2.put("Authorization", str2);
        map2.put("Charset", MTCommonConstants.UTF_8);
        map2.put("Accept", "application/jason");
        map2.put("Accept-Encoding", "gzip");
        map2.put("content-type", "application/octet-stream");
        map2.put("Content-Length", String.valueOf(bArr.length));
        map2.put("X-App-Key", MTGlobal.getAppKey(context));
        map2.put("Encrypt-Type", MTGlobal.getEncryptType() == 2 ? "SM4" : "");
        return ((Integer) HttpUtils.postPair(context, str, map2, bArr, false, map).first).intValue();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:(4:131|12|23|24)|(7:26|127|27|28|133|29|(2:30|(1:32)(7:135|39|116|40|118|41|42)))(4:111|58|59|121)|87|88|119|89|(1:91)|113|121) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x00e0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0094 A[Catch: all -> 0x00d5, IOException -> 0x00d8, MalformedURLException -> 0x00dc, TRY_LEAVE, TryCatch #18 {MalformedURLException -> 0x00dc, IOException -> 0x00d8, all -> 0x00d5, blocks: (B:8:0x002f, B:10:0x0043, B:24:0x0073, B:26:0x0094), top: B:129:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0126 A[Catch: all -> 0x012a, Exception -> 0x0193, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x012a, blocks: (B:71:0x011e, B:73:0x0126), top: B:109:0x011e }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0157 A[Catch: all -> 0x015b, Exception -> 0x0193, TRY_ENTER, TRY_LEAVE, TryCatch #19 {Exception -> 0x0193, blocks: (B:73:0x0126, B:83:0x0157, B:91:0x0186, B:59:0x00e6), top: B:122:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0186 A[Catch: all -> 0x018a, Exception -> 0x0193, TRY_ENTER, TRY_LEAVE, TryCatch #16 {all -> 0x018a, blocks: (B:89:0x017e, B:91:0x0186), top: B:119:0x017e }] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v31 */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v34 */
    /* JADX WARN: Type inference failed for: r7v35 */
    /* JADX WARN: Type inference failed for: r7v36 */
    /* JADX WARN: Type inference failed for: r7v37 */
    /* JADX WARN: Type inference failed for: r7v38 */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v28 */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v30 */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v32 */
    /* JADX WARN: Type inference failed for: r9v33 */
    /* JADX WARN: Type inference failed for: r9v34 */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.io.Closeable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] a(android.content.Context r7, java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instruction units count: 426
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.engagelab.privates.common.t.a(android.content.Context, java.lang.String, java.lang.String):byte[]");
    }
}
