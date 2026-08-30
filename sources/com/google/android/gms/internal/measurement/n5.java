package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n5 implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1760a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ p5 f1762c;

    public n5(p5 p5Var) {
        this.f1762c = p5Var;
        this.f1761b = p5Var.e();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f1760a < this.f1761b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i6 = this.f1760a;
        if (i6 >= this.f1761b) {
            throw new NoSuchElementException();
        }
        this.f1760a = i6 + 1;
        return Byte.valueOf(this.f1762c.d(i6));
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
