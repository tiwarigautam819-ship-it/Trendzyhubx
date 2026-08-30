package s6;

import java.util.RandomAccess;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends c implements RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f5272a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5274c;

    public b(c cVar, int i6, int i9) {
        this.f5272a = cVar;
        this.f5273b = i6;
        int iA = cVar.a();
        if (i6 >= 0 && i9 <= iA) {
            if (i6 > i9) {
                throw new IllegalArgumentException(x.e(i6, i9, "fromIndex: ", " > toIndex: "));
            }
            this.f5274c = i9 - i6;
        } else {
            throw new IndexOutOfBoundsException("fromIndex: " + i6 + ", toIndex: " + i9 + ", size: " + iA);
        }
    }

    @Override // s6.c
    public final int a() {
        return this.f5274c;
    }

    @Override // java.util.List
    public final Object get(int i6) {
        int i9 = this.f5274c;
        if (i6 < 0 || i6 >= i9) {
            throw new IndexOutOfBoundsException(x.e(i6, i9, "index: ", ", size: "));
        }
        return this.f5272a.get(this.f5273b + i6);
    }
}
