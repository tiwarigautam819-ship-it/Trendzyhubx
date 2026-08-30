package j7;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Iterable, e7.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k7.c f3418a;

    public i(k7.c cVar) {
        this.f3418a = cVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new k7.b(this.f3418a);
    }
}
