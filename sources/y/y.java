package y;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class y implements Iterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f6093a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g.m f6094b;

    public y(g.m mVar) {
        this.f6094b = mVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f6093a.iterator();
    }
}
