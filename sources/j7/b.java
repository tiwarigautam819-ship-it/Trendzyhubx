package j7;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f3403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3404b;

    public b(e eVar, int i6) {
        this.f3403a = eVar;
        this.f3404b = i6;
        if (i6 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i6 + '.').toString());
    }

    @Override // j7.e
    public final Iterator iterator() {
        return new d7.a(this);
    }
}
