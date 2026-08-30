package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Iterator f1689a;

    public k(Iterator it) {
        this.f1689a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f1689a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return new p((String) this.f1689a.next());
    }
}
