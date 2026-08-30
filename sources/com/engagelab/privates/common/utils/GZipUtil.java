package com.engagelab.privates.common.utils;

import com.engagelab.privates.common.log.MTCommonLog;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class GZipUtil {
    private static final String TAG = "GZipUtil";

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                x.j(th, new StringBuilder("closeQuietly failed "), TAG);
            }
        }
    }

    public static byte[] unzip(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
        try {
            byte[] bArr2 = new byte[256];
            while (true) {
                int i6 = gZIPInputStream.read(bArr2);
                if (i6 < 0) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr2, 0, i6);
            }
        } catch (Throwable th) {
            try {
                MTCommonLog.w(TAG, "unzip failed " + th.getMessage());
                closeQuietly(byteArrayOutputStream);
                closeQuietly(byteArrayInputStream);
                closeQuietly(gZIPInputStream);
                return null;
            } finally {
                closeQuietly(byteArrayOutputStream);
                closeQuietly(byteArrayInputStream);
                closeQuietly(gZIPInputStream);
            }
        }
    }

    public static byte[] zip(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        try {
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th) {
            try {
                MTCommonLog.w(TAG, "zip failed " + th.getMessage());
                closeQuietly(byteArrayOutputStream);
                closeQuietly(gZIPOutputStream);
                return null;
            } finally {
                closeQuietly(byteArrayOutputStream);
                closeQuietly(gZIPOutputStream);
            }
        }
    }
}
