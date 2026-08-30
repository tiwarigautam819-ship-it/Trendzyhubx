package e5;

import android.content.Context;
import android.util.Log;
import com.engagelab.privates.core.api.WakeMessage;
import e8.j;
import f3.o;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executors;
import l.n;
import l.y;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.cordova.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class e implements d1.c, y5.d, h3.b, f4.c, g.c, d0, y {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static e f2402b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2403a;

    public /* synthetic */ e(int i6) {
        this.f2403a = i6;
    }

    public static final String d(byte[] bArr, byte[][] bArr2, int i6) {
        int i9;
        boolean z5;
        int i10;
        int i11;
        byte[] bArr3 = PublicSuffixDatabase.f4448e;
        int length = bArr.length;
        int i12 = 0;
        while (i12 < length) {
            int i13 = (i12 + length) / 2;
            while (i13 > -1 && bArr[i13] != 10) {
                i13--;
            }
            int i14 = i13 + 1;
            int i15 = 1;
            while (true) {
                i9 = i14 + i15;
                if (bArr[i9] == 10) {
                    break;
                }
                i15++;
            }
            int i16 = i9 - i14;
            int i17 = i6;
            boolean z8 = false;
            int i18 = 0;
            int i19 = 0;
            while (true) {
                if (z8) {
                    i10 = 46;
                    z5 = false;
                } else {
                    byte b3 = bArr2[i17][i18];
                    byte[] bArr4 = s7.b.f5287a;
                    int i20 = b3 & 255;
                    z5 = z8;
                    i10 = i20;
                }
                byte b7 = bArr[i14 + i19];
                byte[] bArr5 = s7.b.f5287a;
                i11 = i10 - (b7 & 255);
                if (i11 != 0) {
                    break;
                }
                i19++;
                i18++;
                if (i19 == i16) {
                    break;
                }
                if (bArr2[i17].length != i18) {
                    z8 = z5;
                } else {
                    if (i17 == bArr2.length - 1) {
                        break;
                    }
                    i17++;
                    i18 = -1;
                    z8 = true;
                }
            }
            if (i11 >= 0) {
                if (i11 <= 0) {
                    int i21 = i16 - i19;
                    int length2 = bArr2[i17].length - i18;
                    int length3 = bArr2.length;
                    for (int i22 = i17 + 1; i22 < length3; i22++) {
                        length2 += bArr2[i22].length;
                    }
                    if (length2 >= i21) {
                        if (length2 <= i21) {
                            Charset charset = StandardCharsets.UTF_8;
                            d7.g.e("UTF_8", charset);
                            return new String(bArr, i14, i16, charset);
                        }
                    }
                }
                i12 = i9 + 1;
            }
            length = i13;
        }
        return null;
    }

    public static b6.b e(byte[][] bArr, int i6) {
        int i9 = i6 * 2;
        int length = bArr[0].length + i9;
        int length2 = bArr.length + i9;
        b6.b bVar = new b6.b(length, length2);
        int[] iArr = bVar.f978d;
        int length3 = iArr.length;
        for (int i10 = 0; i10 < length3; i10++) {
            iArr[i10] = 0;
        }
        int i11 = (length2 - i6) - 1;
        int i12 = 0;
        while (i12 < bArr.length) {
            byte[] bArr2 = bArr[i12];
            for (int i13 = 0; i13 < bArr[0].length; i13++) {
                if (bArr2[i13] == 1) {
                    bVar.b(i13 + i6, i11);
                }
            }
            i12++;
            i11--;
        }
        return bVar;
    }

    public static j h(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: ".concat(str).toString());
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i6 = 0; i6 < length; i6++) {
            int i9 = i6 * 2;
            bArr[i6] = (byte) (f8.b.a(str.charAt(i9 + 1)) + (f8.b.a(str.charAt(i9)) << 4));
        }
        return new j(bArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:177:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0432 A[LOOP:12: B:215:0x0430->B:216:0x0432, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0454  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final b6.b l(java.lang.String r26, int r27, java.util.EnumMap r28) throws y5.e {
        /*
            Method dump skipped, instruction units count: 1281
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: e5.e.l(java.lang.String, int, java.util.EnumMap):b6.b");
    }

    public static String n(StringBuilder sb) {
        int length = sb.length();
        if (length == 0) {
            throw new IllegalStateException("StringBuilder must not be empty");
        }
        int iCharAt = (sb.charAt(0) << 18) + ((length >= 2 ? sb.charAt(1) : (char) 0) << '\f') + ((length >= 3 ? sb.charAt(2) : (char) 0) << 6) + (length >= 4 ? sb.charAt(3) : (char) 0);
        char c8 = (char) ((iCharAt >> 16) & 255);
        char c9 = (char) ((iCharAt >> 8) & 255);
        char c10 = (char) (iCharAt & 255);
        StringBuilder sb2 = new StringBuilder(3);
        sb2.append(c8);
        if (length >= 2) {
            sb2.append(c9);
        }
        if (length >= 3) {
            sb2.append(c10);
        }
        return sb2.toString();
    }

    public static j o(String str) {
        d7.g.f("<this>", str);
        byte[] bytes = str.getBytes(k7.a.f3570a);
        d7.g.e("this as java.lang.String).getBytes(charset)", bytes);
        j jVar = new j(bytes);
        jVar.f2454c = str;
        return jVar;
    }

    public static byte[][] t(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, bArr[0].length, bArr.length);
        for (int i6 = 0; i6 < bArr.length; i6++) {
            int length = (bArr.length - i6) - 1;
            for (int i9 = 0; i9 < bArr[0].length; i9++) {
                bArr2[i9][length] = bArr[i6][i9];
            }
        }
        return bArr2;
    }

    public static void v(e6.c cVar, StringBuilder sb) {
        int iCharAt = (sb.charAt(1) * '(') + (sb.charAt(0) * 1600) + sb.charAt(2) + 1;
        cVar.f2410c.append(new String(new char[]{(char) (iCharAt / 256), (char) (iCharAt % 256)}));
        sb.delete(0, 3);
    }

    @Override // f4.c
    public int a(Context context, String str) {
        return f4.e.a(context, str);
    }

    @Override // f4.c
    public int c(Context context, String str, boolean z5) {
        return f4.e.d(context, str, z5);
    }

    @Override // l.y
    public boolean f(n nVar) {
        return false;
    }

    @Override // d1.c
    public void g() {
        switch (this.f2403a) {
            case WakeMessage.ACTIVITY /* 8 */:
                break;
            default:
                Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
                break;
        }
    }

    @Override // q6.a
    public Object get() {
        switch (this.f2403a) {
            case 18:
                return new o(0, Executors.newSingleThreadExecutor());
            default:
                o3.a aVar = new o3.a(1);
                HashMap map = new HashMap();
                Set set = Collections.EMPTY_SET;
                if (set == null) {
                    throw new NullPointerException("Null flags");
                }
                map.put(c3.d.f1037a, new l3.b(30000L, 86400000L, set));
                if (set == null) {
                    throw new NullPointerException("Null flags");
                }
                map.put(c3.d.f1039c, new l3.b(1000L, 86400000L, set));
                if (set == null) {
                    throw new NullPointerException("Null flags");
                }
                Set setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(l3.c.f3787b)));
                if (setUnmodifiableSet == null) {
                    throw new NullPointerException("Null flags");
                }
                map.put(c3.d.f1038b, new l3.b(86400000L, 86400000L, setUnmodifiableSet));
                if (map.keySet().size() < c3.d.values().length) {
                    throw new IllegalStateException("Not all priorities have been configured");
                }
                new HashMap();
                return new l3.a(aVar, map);
        }
    }

    @Override // d1.c
    public void i(int i6, Object obj) {
        String str;
        switch (this.f2403a) {
            case WakeMessage.ACTIVITY /* 8 */:
                break;
            default:
                switch (i6) {
                    case 1:
                        str = "RESULT_INSTALL_SUCCESS";
                        break;
                    case 2:
                        str = "RESULT_ALREADY_INSTALLED";
                        break;
                    case 3:
                        str = "RESULT_UNSUPPORTED_ART_VERSION";
                        break;
                    case 4:
                        str = "RESULT_NOT_WRITABLE";
                        break;
                    case 5:
                        str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                        break;
                    case 6:
                        str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                        break;
                    case 7:
                        str = "RESULT_IO_EXCEPTION";
                        break;
                    case WakeMessage.ACTIVITY /* 8 */:
                        str = "RESULT_PARSE_EXCEPTION";
                        break;
                    case 9:
                    default:
                        str = "";
                        break;
                    case 10:
                        str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                        break;
                    case 11:
                        str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                        break;
                }
                if (i6 == 6 || i6 == 7 || i6 == 8) {
                    Log.e("ProfileInstaller", str, (Throwable) obj);
                } else {
                    Log.d("ProfileInstaller", str);
                }
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x00f9, code lost:
    
        r8 = r13;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0692  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0703  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:657:0x00fb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:706:0x0705 A[SYNTHETIC] */
    @Override // y5.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public b6.b j(java.lang.String r29, int r30, java.util.EnumMap r31) throws y5.e {
        /*
            Method dump skipped, instruction units count: 3234
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: e5.e.j(java.lang.String, int, java.util.EnumMap):b6.b");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0056, code lost:
    
        h8.b.h(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0059, code lost:
    
        throw null;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void k(e6.c r12) {
        /*
            Method dump skipped, instruction units count: 790
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: e5.e.k(e6.c):void");
    }

    public int m(char c8, StringBuilder sb) {
        if (c8 == ' ') {
            sb.append((char) 3);
            return 1;
        }
        if (c8 >= '0' && c8 <= '9') {
            sb.append((char) (c8 - ','));
            return 1;
        }
        if (c8 >= 'A' && c8 <= 'Z') {
            sb.append((char) (c8 - '3'));
            return 1;
        }
        if (c8 < ' ') {
            sb.append((char) 0);
            sb.append(c8);
            return 2;
        }
        if (c8 >= '!' && c8 <= '/') {
            sb.append((char) 1);
            sb.append((char) (c8 - '!'));
            return 2;
        }
        if (c8 >= ':' && c8 <= '@') {
            sb.append((char) 1);
            sb.append((char) (c8 - '+'));
            return 2;
        }
        if (c8 >= '[' && c8 <= '_') {
            sb.append((char) 1);
            sb.append((char) (c8 - 'E'));
            return 2;
        }
        if (c8 < '`' || c8 > 127) {
            sb.append("\u0001\u001e");
            return m((char) (c8 - 128), sb) + 2;
        }
        sb.append((char) 2);
        sb.append((char) (c8 - '`'));
        return 2;
    }

    public int p() {
        return 1;
    }

    public void q(e6.c cVar, StringBuilder sb) {
        int length = (sb.length() / 3) << 1;
        int length2 = sb.length() % 3;
        int length3 = cVar.f2410c.length() + length;
        cVar.c(length3);
        int i6 = cVar.f2413f.f2421b - length3;
        if (length2 == 2) {
            sb.append((char) 0);
            while (sb.length() >= 3) {
                v(cVar, sb);
            }
            if (cVar.b()) {
                cVar.d((char) 254);
            }
        } else if (i6 == 1 && length2 == 1) {
            while (sb.length() >= 3) {
                v(cVar, sb);
            }
            if (cVar.b()) {
                cVar.d((char) 254);
            }
            cVar.f2411d--;
        } else {
            if (length2 != 0) {
                throw new IllegalStateException("Unexpected case. Please report!");
            }
            while (sb.length() >= 3) {
                v(cVar, sb);
            }
            if (i6 > 0 || cVar.b()) {
                cVar.d((char) 254);
            }
        }
        cVar.f2412e = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004b A[PHI: r6
      0x004b: PHI (r6v2 int) = (r6v1 int), (r6v3 int) binds: [B:18:0x0044, B:20:0x0047] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public f4.d u(android.content.Context r5, java.lang.String r6, f4.c r7) {
        /*
            r4 = this;
            int r0 = r4.f2403a
            switch(r0) {
                case 20: goto L30;
                default: goto L5;
            }
        L5:
            f4.d r0 = new f4.d
            r0.<init>()
            int r1 = r7.a(r5, r6)
            r0.f2591a = r1
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L1b
            int r5 = r7.c(r5, r6, r3)
            r0.f2592b = r5
            goto L21
        L1b:
            int r5 = r7.c(r5, r6, r2)
            r0.f2592b = r5
        L21:
            int r6 = r0.f2591a
            if (r6 != 0) goto L29
            if (r5 != 0) goto L2a
            r2 = r3
            goto L2d
        L29:
            r3 = r6
        L2a:
            if (r3 < r5) goto L2d
            r2 = -1
        L2d:
            r0.f2593c = r2
            return r0
        L30:
            f4.d r0 = new f4.d
            r0.<init>()
            int r1 = r7.a(r5, r6)
            r0.f2591a = r1
            r1 = 1
            int r5 = r7.c(r5, r6, r1)
            r0.f2592b = r5
            int r6 = r0.f2591a
            if (r6 != 0) goto L4b
            r6 = 0
            if (r5 != 0) goto L4b
            r1 = r6
            goto L4e
        L4b:
            if (r6 < r5) goto L4e
            r1 = -1
        L4e:
            r0.f2593c = r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e5.e.u(android.content.Context, java.lang.String, f4.c):f4.d");
    }

    private final void r() {
    }

    private final void s(int i6, Object obj) {
    }

    @Override // l.y
    public void b(n nVar, boolean z5) {
    }
}
