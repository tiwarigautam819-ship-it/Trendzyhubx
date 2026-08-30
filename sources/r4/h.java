package r4;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f4979a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4980b;

    public h(Object obj) {
        this.f4980b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f4979a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f4979a) {
            throw new NoSuchElementException();
        }
        this.f4979a = true;
        return this.f4980b;
    }
}
