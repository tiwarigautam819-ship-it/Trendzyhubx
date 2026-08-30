package k7;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Iterator, e7.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3573a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3575c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public h7.c f3576d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3577e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ c f3578f;

    public b(c cVar) {
        this.f3578f = cVar;
        int length = cVar.f3579a.length();
        if (length < 0) {
            throw new IllegalArgumentException(a1.a.j(length, "Cannot coerce value to an empty range: maximum ", " is less than minimum 0."));
        }
        length = length >= 0 ? 0 : length;
        this.f3574b = length;
        this.f3575c = length;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
    /* JADX WARN: Type inference failed for: r0v1, types: [c7.p, d7.h] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a() {
        /*
            r8 = this;
            k7.c r0 = r8.f3578f
            java.lang.CharSequence r1 = r0.f3579a
            int r2 = r8.f3575c
            r3 = 0
            if (r2 >= 0) goto Lf
            r8.f3573a = r3
            r0 = 0
            r8.f3576d = r0
            return
        Lf:
            int r4 = r0.f3580b
            r5 = -1
            r6 = 1
            if (r4 <= 0) goto L1c
            int r7 = r8.f3577e
            int r7 = r7 + r6
            r8.f3577e = r7
            if (r7 >= r4) goto L22
        L1c:
            int r4 = r1.length()
            if (r2 <= r4) goto L32
        L22:
            h7.c r0 = new h7.c
            int r2 = r8.f3574b
            int r1 = k7.g.y(r1)
            r0.<init>(r2, r1, r6)
            r8.f3576d = r0
            r8.f3575c = r5
            goto L73
        L32:
            d7.h r0 = r0.f3581c
            int r2 = r8.f3575c
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Object r0 = r0.f(r1, r2)
            r6.d r0 = (r6.d) r0
            if (r0 != 0) goto L52
            h7.c r0 = new h7.c
            int r2 = r8.f3574b
            int r1 = k7.g.y(r1)
            r0.<init>(r2, r1, r6)
            r8.f3576d = r0
            r8.f3575c = r5
            goto L73
        L52:
            java.lang.Object r1 = r0.f4993a
            java.lang.Number r1 = (java.lang.Number) r1
            int r1 = r1.intValue()
            java.lang.Object r0 = r0.f4994b
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            int r2 = r8.f3574b
            h7.c r2 = a2.c.m(r2, r1)
            r8.f3576d = r2
            int r1 = r1 + r0
            r8.f3574b = r1
            if (r0 != 0) goto L70
            r3 = r6
        L70:
            int r1 = r1 + r3
            r8.f3575c = r1
        L73:
            r8.f3573a = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k7.b.a():void");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f3573a == -1) {
            a();
        }
        return this.f3573a == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f3573a == -1) {
            a();
        }
        if (this.f3573a == 0) {
            throw new NoSuchElementException();
        }
        h7.c cVar = this.f3576d;
        d7.g.d("null cannot be cast to non-null type kotlin.ranges.IntRange", cVar);
        this.f3576d = null;
        this.f3573a = -1;
        return cVar;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
