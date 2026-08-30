package k7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h extends android.support.v4.media.session.a {
    /* JADX WARN: Removed duplicated region for block: B:14:0x005d A[PHI: r8
      0x005d: PHI (r8v2 java.lang.String) = (r8v1 java.lang.String), (r8v3 java.lang.String) binds: [B:13:0x005b, B:29:0x0092] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String o(java.lang.String r13) {
        /*
            java.lang.String r0 = "<this>"
            d7.g.f(r0, r13)
            java.lang.String r0 = "|"
            boolean r1 = k7.o.r(r0)
            if (r1 != 0) goto Lbe
            java.lang.String r1 = "\n"
            java.lang.String r2 = "\r"
            java.lang.String r3 = "\r\n"
            java.lang.String[] r1 = new java.lang.String[]{r3, r1, r2}
            r2 = 0
            k7.c r1 = k7.g.E(r13, r1, r2)
            f2.b r3 = new f2.b
            r4 = 1
            r3.<init>(r4, r13)
            j7.k r4 = new j7.k
            r4.<init>(r1, r3)
            java.util.List r1 = j7.f.A(r4)
            int r13 = r13.length()
            r1.size()
            int r3 = s6.h.j(r1)
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            java.util.Iterator r1 = r1.iterator()
            r5 = r2
        L42:
            boolean r6 = r1.hasNext()
            if (r6 == 0) goto La4
            java.lang.Object r6 = r1.next()
            int r7 = r5 + 1
            if (r5 < 0) goto L9c
            java.lang.String r6 = (java.lang.String) r6
            r8 = 0
            if (r5 == 0) goto L57
            if (r5 != r3) goto L5f
        L57:
            boolean r5 = k7.o.r(r6)
            if (r5 == 0) goto L5f
        L5d:
            r6 = r8
            goto L95
        L5f:
            int r5 = r6.length()
            r9 = r2
        L64:
            r10 = -1
            if (r9 >= r5) goto L7a
            char r11 = r6.charAt(r9)
            boolean r12 = java.lang.Character.isWhitespace(r11)
            if (r12 != 0) goto L77
            boolean r11 = java.lang.Character.isSpaceChar(r11)
            if (r11 == 0) goto L7b
        L77:
            int r9 = r9 + 1
            goto L64
        L7a:
            r9 = r10
        L7b:
            if (r9 != r10) goto L7e
            goto L92
        L7e:
            boolean r5 = k7.o.u(r6, r0, r9, r2)
            if (r5 == 0) goto L92
            int r5 = r0.length()
            int r5 = r5 + r9
            java.lang.String r8 = r6.substring(r5)
            java.lang.String r5 = "substring(...)"
            d7.g.e(r5, r8)
        L92:
            if (r8 == 0) goto L95
            goto L5d
        L95:
            if (r6 == 0) goto L9a
            r4.add(r6)
        L9a:
            r5 = r7
            goto L42
        L9c:
            java.lang.ArithmeticException r13 = new java.lang.ArithmeticException
            java.lang.String r0 = "Index overflow has happened."
            r13.<init>(r0)
            throw r13
        La4:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>(r13)
            java.lang.String r7 = ""
            java.lang.String r9 = "..."
            java.lang.String r6 = "\n"
            r10 = 0
            r8 = r7
            s6.g.r(r4, r5, r6, r7, r8, r9, r10)
            java.lang.String r13 = r5.toString()
            java.lang.String r0 = "toString(...)"
            d7.g.e(r0, r13)
            return r13
        Lbe:
            java.lang.IllegalArgumentException r13 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "marginPrefix must be non-blank string."
            r13.<init>(r0)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: k7.h.o(java.lang.String):java.lang.String");
    }
}
