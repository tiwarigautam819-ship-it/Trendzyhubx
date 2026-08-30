package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Iterator f1559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Iterator f1560b;

    public d(Iterator it, Iterator it2) {
        this.f1559a = it;
        this.f1560b = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f1559a.hasNext()) {
            return true;
        }
        return this.f1560b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Iterator it = this.f1559a;
        if (it.hasNext()) {
            return new p(((Integer) it.next()).toString());
        }
        Iterator it2 = this.f1560b;
        if (it2.hasNext()) {
            return new p((String) it2.next());
        }
        throw new NoSuchElementException();
    }
}
