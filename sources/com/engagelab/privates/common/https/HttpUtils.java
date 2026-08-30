package com.engagelab.privates.common.https;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class HttpUtils {
    private static final String TAG = "HttpClients";

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
    public static byte[] get(android.content.Context r7, java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instruction units count: 426
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.engagelab.privates.common.https.HttpUtils.get(android.content.Context, java.lang.String, java.lang.String):byte[]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0131 A[PHI: r2 r3 r6 r7 r9 r10
      0x0131: PHI (r2v8 java.io.OutputStream) = (r2v5 java.io.OutputStream), (r2v6 java.io.OutputStream), (r2v15 java.io.OutputStream) binds: [B:58:0x0102, B:64:0x012f, B:47:0x00be] A[DONT_GENERATE, DONT_INLINE]
      0x0131: PHI (r3v6 java.io.ByteArrayOutputStream) = (r3v3 java.io.ByteArrayOutputStream), (r3v4 java.io.ByteArrayOutputStream), (r3v8 java.io.ByteArrayOutputStream) binds: [B:58:0x0102, B:64:0x012f, B:47:0x00be] A[DONT_GENERATE, DONT_INLINE]
      0x0131: PHI (r6v8 byte[]) = (r6v4 byte[]), (r6v6 byte[]), (r6v10 byte[]) binds: [B:58:0x0102, B:64:0x012f, B:47:0x00be] A[DONT_GENERATE, DONT_INLINE]
      0x0131: PHI (r7v11 java.net.HttpURLConnection) = (r7v8 java.net.HttpURLConnection), (r7v9 java.net.HttpURLConnection), (r7v13 java.net.HttpURLConnection) binds: [B:58:0x0102, B:64:0x012f, B:47:0x00be] A[DONT_GENERATE, DONT_INLINE]
      0x0131: PHI (r9v6 int) = (r9v3 int), (r9v4 int), (r9v7 int) binds: [B:58:0x0102, B:64:0x012f, B:47:0x00be] A[DONT_GENERATE, DONT_INLINE]
      0x0131: PHI (r10v7 java.io.InputStream) = (r10v17 java.io.InputStream), (r10v18 java.io.InputStream), (r10v19 java.io.InputStream) binds: [B:58:0x0102, B:64:0x012f, B:47:0x00be] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r10v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v10, types: [android.util.Pair, android.util.Pair<java.lang.Integer, byte[]>] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.net.HttpURLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.util.Pair<java.lang.Integer, byte[]> postPair(android.content.Context r6, java.lang.String r7, java.util.Map<java.lang.String, java.lang.String> r8, byte[] r9, boolean r10) {
        /*
            Method dump skipped, instruction units count: 336
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.engagelab.privates.common.https.HttpUtils.postPair(android.content.Context, java.lang.String, java.util.Map, byte[], boolean):android.util.Pair");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:75:0x016d A[PHI: r2 r7 r8 r10 r11 r12
      0x016d: PHI (r2v8 java.io.OutputStream) = (r2v5 java.io.OutputStream), (r2v6 java.io.OutputStream), (r2v15 java.io.OutputStream) binds: [B:68:0x013e, B:74:0x016b, B:57:0x00fa] A[DONT_GENERATE, DONT_INLINE]
      0x016d: PHI (r7v8 byte[]) = (r7v4 byte[]), (r7v6 byte[]), (r7v10 byte[]) binds: [B:68:0x013e, B:74:0x016b, B:57:0x00fa] A[DONT_GENERATE, DONT_INLINE]
      0x016d: PHI (r8v11 java.net.HttpURLConnection) = (r8v8 java.net.HttpURLConnection), (r8v9 java.net.HttpURLConnection), (r8v13 java.net.HttpURLConnection) binds: [B:68:0x013e, B:74:0x016b, B:57:0x00fa] A[DONT_GENERATE, DONT_INLINE]
      0x016d: PHI (r10v6 int) = (r10v3 int), (r10v4 int), (r10v7 int) binds: [B:68:0x013e, B:74:0x016b, B:57:0x00fa] A[DONT_GENERATE, DONT_INLINE]
      0x016d: PHI (r11v7 java.io.InputStream) = (r11v17 java.io.InputStream), (r11v18 java.io.InputStream), (r11v19 java.io.InputStream) binds: [B:68:0x013e, B:74:0x016b, B:57:0x00fa] A[DONT_GENERATE, DONT_INLINE]
      0x016d: PHI (r12v7 java.io.ByteArrayOutputStream) = (r12v14 java.io.ByteArrayOutputStream), (r12v15 java.io.ByteArrayOutputStream), (r12v16 java.io.ByteArrayOutputStream) binds: [B:68:0x013e, B:74:0x016b, B:57:0x00fa] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r11v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.Map, java.util.Map<java.lang.String, java.lang.String>] */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v10, types: [android.util.Pair, android.util.Pair<java.lang.Integer, byte[]>] */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.net.HttpURLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.util.Pair<java.lang.Integer, byte[]> postPair(android.content.Context r7, java.lang.String r8, java.util.Map<java.lang.String, java.lang.String> r9, byte[] r10, boolean r11, java.util.Map<java.lang.String, java.lang.String> r12) {
        /*
            Method dump skipped, instruction units count: 396
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.engagelab.privates.common.https.HttpUtils.postPair(android.content.Context, java.lang.String, java.util.Map, byte[], boolean, java.util.Map):android.util.Pair");
    }
}
