package h6;

import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f3014c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f3012a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f3013b = {59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, 63, 123, 125, 39, 0};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f3015d = new byte[128];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Charset f3016e = StandardCharsets.ISO_8859_1;

    static {
        byte[] bArr = new byte[128];
        f3014c = bArr;
        Arrays.fill(bArr, (byte) -1);
        int i6 = 0;
        int i9 = 0;
        while (true) {
            byte[] bArr2 = f3012a;
            if (i9 >= bArr2.length) {
                break;
            }
            byte b3 = bArr2[i9];
            if (b3 > 0) {
                f3014c[b3] = (byte) i9;
            }
            i9++;
        }
        Arrays.fill(f3015d, (byte) -1);
        while (true) {
            byte[] bArr3 = f3013b;
            if (i6 >= bArr3.length) {
                return;
            }
            byte b7 = bArr3[i6];
            if (b7 > 0) {
                f3015d[b7] = (byte) i6;
            }
            i6++;
        }
    }

    public static void a(byte[] bArr, int i6, int i9, StringBuilder sb) {
        if (i6 == 1 && i9 == 0) {
            sb.append((char) 913);
        } else if (i6 % 6 == 0) {
            sb.append((char) 924);
        } else {
            sb.append((char) 901);
        }
        int i10 = 0;
        if (i6 >= 6) {
            char[] cArr = new char[5];
            int i11 = 0;
            while (i6 - i11 >= 6) {
                long j3 = 0;
                for (int i12 = 0; i12 < 6; i12++) {
                    j3 = (j3 << 8) + ((long) (bArr[i11 + i12] & 255));
                }
                for (int i13 = 0; i13 < 5; i13++) {
                    cArr[i13] = (char) (j3 % 900);
                    j3 /= 900;
                }
                for (int i14 = 4; i14 >= 0; i14--) {
                    sb.append(cArr[i14]);
                }
                i11 += 6;
            }
            i10 = i11;
        }
        while (i10 < i6) {
            sb.append((char) (bArr[i10] & 255));
            i10++;
        }
    }

    public static void b(int i6, int i9, String str, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder((i9 / 3) + 1);
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(0L);
        int i10 = 0;
        while (i10 < i9) {
            sb2.setLength(0);
            int iMin = Math.min(44, i9 - i10);
            StringBuilder sb3 = new StringBuilder("1");
            int i11 = i6 + i10;
            sb3.append(str.substring(i11, i11 + iMin));
            BigInteger bigInteger = new BigInteger(sb3.toString());
            do {
                sb2.append((char) bigInteger.mod(bigIntegerValueOf).intValue());
                bigInteger = bigInteger.divide(bigIntegerValueOf);
            } while (!bigInteger.equals(bigIntegerValueOf2));
            for (int length = sb2.length() - 1; length >= 0; length--) {
                sb.append(sb2.charAt(length));
            }
            i10 += iMin;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x00e6 A[EDGE_INSN: B:76:0x00e6->B:57:0x00e6 BREAK  A[LOOP:0: B:3:0x000e->B:93:0x000e], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x000e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int c(java.lang.String r17, int r18, int r19, java.lang.StringBuilder r20, int r21) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: h6.c.c(java.lang.String, int, int, java.lang.StringBuilder, int):int");
    }

    public static boolean d(char c8) {
        if (c8 != ' ') {
            return c8 >= 'a' && c8 <= 'z';
        }
        return true;
    }

    public static boolean e(char c8) {
        if (c8 != ' ') {
            return c8 >= 'A' && c8 <= 'Z';
        }
        return true;
    }
}
