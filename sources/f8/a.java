package f8;

import d7.g;
import java.io.EOFException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f2636a;

    static {
        byte[] bytes = "0123456789abcdef".getBytes(k7.a.f3570a);
        g.e("this as java.lang.String).getBytes(charset)", bytes);
        f2636a = bytes;
    }

    public static final String a(long j3, e8.g gVar) throws EOFException {
        if (j3 > 0) {
            long j8 = j3 - 1;
            if (gVar.g(j8) == 13) {
                String strT = gVar.t(j8, k7.a.f3570a);
                gVar.skip(2L);
                return strT;
            }
        }
        String strT2 = gVar.t(j3, k7.a.f3570a);
        gVar.skip(1L);
        return strT2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x005c, code lost:
    
        if (r18 == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005e, code lost:
    
        return -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007e, code lost:
    
        return r9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final int b(e8.g r16, e8.o r17, boolean r18) {
        /*
            r0 = r17
            java.lang.String r1 = "options"
            d7.g.f(r1, r0)
            r1 = r16
            e8.r r1 = r1.f2449a
            r2 = -1
            if (r1 != 0) goto L12
            if (r18 == 0) goto L11
            goto L5e
        L11:
            return r2
        L12:
            byte[] r3 = r1.f2474a
            int r4 = r1.f2475b
            int r5 = r1.f2476c
            int[] r0 = r0.f2467b
            r6 = 0
            r8 = r1
            r9 = r2
            r7 = r6
        L1e:
            int r10 = r7 + 1
            r11 = r0[r7]
            int r7 = r7 + 2
            r10 = r0[r10]
            if (r10 == r2) goto L29
            r9 = r10
        L29:
            if (r8 != 0) goto L2c
            goto L5c
        L2c:
            r10 = 0
            if (r11 >= 0) goto L74
            int r11 = r11 * (-1)
            int r12 = r11 + r7
        L33:
            int r11 = r4 + 1
            r4 = r3[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r13 = r7 + 1
            r7 = r0[r7]
            if (r4 == r7) goto L40
            goto L7e
        L40:
            if (r13 != r12) goto L44
            r4 = 1
            goto L45
        L44:
            r4 = r6
        L45:
            if (r11 != r5) goto L64
            d7.g.c(r8)
            e8.r r3 = r8.f2479f
            d7.g.c(r3)
            int r5 = r3.f2475b
            byte[] r7 = r3.f2474a
            int r8 = r3.f2476c
            if (r3 != r1) goto L60
            if (r4 == 0) goto L5c
            r3 = r7
            r7 = r10
            goto L67
        L5c:
            if (r18 == 0) goto L7e
        L5e:
            r0 = -2
            return r0
        L60:
            r15 = r7
            r7 = r3
            r3 = r15
            goto L67
        L64:
            r7 = r8
            r8 = r5
            r5 = r11
        L67:
            if (r4 == 0) goto L6f
            r4 = r0[r13]
            r15 = r8
            r8 = r7
            r7 = r15
            goto La0
        L6f:
            r4 = r5
            r5 = r8
            r8 = r7
            r7 = r13
            goto L33
        L74:
            int r12 = r4 + 1
            r4 = r3[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r13 = r7 + r11
        L7c:
            if (r7 != r13) goto L7f
        L7e:
            return r9
        L7f:
            r14 = r0[r7]
            if (r4 != r14) goto Laa
            int r7 = r7 + r11
            r4 = r0[r7]
            if (r12 != r5) goto L9e
            e8.r r8 = r8.f2479f
            d7.g.c(r8)
            int r3 = r8.f2475b
            byte[] r5 = r8.f2474a
            int r7 = r8.f2476c
            if (r8 != r1) goto L9a
            r8 = r5
            r5 = r3
            r3 = r8
            r8 = r10
            goto La0
        L9a:
            r15 = r5
            r5 = r3
            r3 = r15
            goto La0
        L9e:
            r7 = r5
            r5 = r12
        La0:
            if (r4 < 0) goto La3
            return r4
        La3:
            int r4 = -r4
            r15 = r7
            r7 = r4
            r4 = r5
            r5 = r15
            goto L1e
        Laa:
            int r7 = r7 + 1
            goto L7c
        */
        throw new UnsupportedOperationException("Method not decompiled: f8.a.b(e8.g, e8.o, boolean):int");
    }
}
