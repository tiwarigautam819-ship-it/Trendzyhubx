package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f1534a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f1535b;

    static {
        Charset.forName("US-ASCII");
        f1534a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f1535b = bArr;
        ByteBuffer.wrap(bArr);
        int length = bArr.length;
        try {
            if (length < 0) {
                throw i6.b();
            }
            int i6 = (0 - 0) + length;
            if (i6 < 0) {
                throw i6.c();
            }
            if (i6 > Integer.MAX_VALUE) {
                throw i6.d();
            }
        } catch (i6 e9) {
            throw new IllegalArgumentException(e9);
        }
    }

    public static int a(long j3) {
        return (int) (j3 ^ (j3 >>> 32));
    }
}
