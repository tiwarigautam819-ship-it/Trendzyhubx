package s;

import java.util.ConcurrentModificationException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f5194a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f5195b = new Object();

    public static final void a(f fVar, int i6) {
        fVar.f5187a = new int[i6];
        fVar.f5188b = new Object[i6];
    }

    public static final int b(f fVar, Object obj, int i6) {
        int i9 = fVar.f5189c;
        if (i9 == 0) {
            return -1;
        }
        try {
            int iA = t.a.a(i9, i6, fVar.f5187a);
            if (iA < 0 || d7.g.a(obj, fVar.f5188b[iA])) {
                return iA;
            }
            int i10 = iA + 1;
            while (i10 < i9 && fVar.f5187a[i10] == i6) {
                if (d7.g.a(obj, fVar.f5188b[i10])) {
                    return i10;
                }
                i10++;
            }
            for (int i11 = iA - 1; i11 >= 0 && fVar.f5187a[i11] == i6; i11--) {
                if (d7.g.a(obj, fVar.f5188b[i11])) {
                    return i11;
                }
            }
            return ~i10;
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }
}
