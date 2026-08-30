package com.engagelab.privates.push.utils;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class HttpUtils {
    private static final String TAG = "HttpClient";
    private static HashMap<String, String> resultMap = new HashMap<>();

    public static void deleteErrorCode(String str) {
        try {
            HashMap<String, String> map = resultMap;
            if (map != null) {
                map.remove(str);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0168: INVOKE (r4 I:java.io.Closeable) STATIC call: com.engagelab.privates.common.utils.Utils.closeQuietly(java.io.Closeable):void A[Catch: all -> 0x0174, MD:(java.io.Closeable):void (m)] (LINE:361), block:B:84:0x0165 */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x0165: INVOKE (r5 I:java.io.Closeable) STATIC call: com.engagelab.privates.common.utils.Utils.closeQuietly(java.io.Closeable):void A[Catch: all -> 0x0174, MD:(java.io.Closeable):void (m), TRY_ENTER] (LINE:358), block:B:84:0x0165 */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e8 A[Catch: all -> 0x00ed, Exception -> 0x01a4, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x00ed, blocks: (B:55:0x00dd, B:57:0x00e8), top: B:108:0x00dd }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x011c A[Catch: all -> 0x0121, Exception -> 0x01a4, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0121, blocks: (B:65:0x0111, B:67:0x011c), top: B:106:0x0111 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x014d A[Catch: all -> 0x0151, Exception -> 0x01a4, TRY_ENTER, TRY_LEAVE, TryCatch #9 {Exception -> 0x01a4, blocks: (B:42:0x00a8, B:57:0x00e8, B:67:0x011c, B:75:0x014d, B:93:0x0189), top: B:114:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x015d A[Catch: all -> 0x00f5, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x00f5, blocks: (B:54:0x00c5, B:64:0x00f9, B:72:0x012a, B:82:0x015d), top: B:114:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0189 A[Catch: all -> 0x018d, Exception -> 0x01a4, TRY_ENTER, TRY_LEAVE, TryCatch #9 {Exception -> 0x01a4, blocks: (B:42:0x00a8, B:57:0x00e8, B:67:0x011c, B:75:0x014d, B:93:0x0189), top: B:114:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01a6 A[RETURN] */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, java.net.HttpURLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] get(android.content.Context r9, java.lang.String r10, boolean r11) {
        /*
            Method dump skipped, instruction units count: 428
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.engagelab.privates.push.utils.HttpUtils.get(android.content.Context, java.lang.String, boolean):byte[]");
    }

    public static String getErrorCode(String str) {
        HashMap<String, String> map = resultMap;
        if (map == null || map.size() <= 0 || !resultMap.containsKey(str)) {
            return null;
        }
        return resultMap.get(str);
    }
}
