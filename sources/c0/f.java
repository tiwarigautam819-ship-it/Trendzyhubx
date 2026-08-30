package c0;

import android.content.res.Resources;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x2.a f996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final s.i f997b;

    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    static {
        /*
            java.lang.String r0 = "TypefaceCompat static init"
            z7.d.a(r0)
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 29
            if (r0 < r1) goto L13
            c0.k r0 = new c0.k
            r0.<init>()
            c0.f.f996a = r0
            goto L4b
        L13:
            r1 = 28
            if (r0 < r1) goto L1f
            c0.j r0 = new c0.j
            r0.<init>()
            c0.f.f996a = r0
            goto L4b
        L1f:
            r1 = 26
            if (r0 < r1) goto L2b
            c0.i r0 = new c0.i
            r0.<init>()
            c0.f.f996a = r0
            goto L4b
        L2b:
            r1 = 24
            if (r0 < r1) goto L44
            java.lang.reflect.Method r0 = c0.h.f1005c
            if (r0 != 0) goto L3a
            java.lang.String r1 = "TypefaceCompatApi24Impl"
            java.lang.String r2 = "Unable to collect necessary private methods.Fallback to legacy implementation."
            android.util.Log.w(r1, r2)
        L3a:
            if (r0 == 0) goto L44
            c0.h r0 = new c0.h
            r0.<init>()
            c0.f.f996a = r0
            goto L4b
        L44:
            c0.g r0 = new c0.g
            r0.<init>()
            c0.f.f996a = r0
        L4b:
            s.i r0 = new s.i
            r1 = 16
            r0.<init>(r1)
            c0.f.f997b = r0
            android.os.Trace.endSection()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c0.f.<clinit>():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Typeface a(android.content.Context r12, b0.e r13, android.content.res.Resources r14, int r15, java.lang.String r16, int r17, int r18, e6.b r19) {
        /*
            Method dump skipped, instruction units count: 495
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c0.f.a(android.content.Context, b0.e, android.content.res.Resources, int, java.lang.String, int, int, e6.b):android.graphics.Typeface");
    }

    public static String b(Resources resources, int i6, String str, int i9, int i10) {
        return resources.getResourcePackageName(i6) + '-' + str + '-' + i9 + '-' + i6 + '-' + i10;
    }
}
