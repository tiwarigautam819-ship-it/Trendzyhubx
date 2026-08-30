package s5;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public l f5242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public l f5243b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ m f5245d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f5246e;

    public j(m mVar, int i6) {
        this.f5246e = i6;
        this.f5245d = mVar;
        this.f5242a = mVar.f5263f.f5252d;
        this.f5244c = mVar.f5262e;
    }

    public final Object a() {
        return b();
    }

    public final l b() {
        l lVar = this.f5242a;
        m mVar = this.f5245d;
        if (lVar == mVar.f5263f) {
            throw new NoSuchElementException();
        }
        if (mVar.f5262e != this.f5244c) {
            throw new ConcurrentModificationException();
        }
        this.f5242a = lVar.f5252d;
        this.f5243b = lVar;
        return lVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f5242a != this.f5245d.f5263f;
    }

    @Override // java.util.Iterator
    public Object next() {
        switch (this.f5246e) {
            case 1:
                return b().f5254f;
            default:
                return a();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        l lVar = this.f5243b;
        if (lVar == null) {
            throw new IllegalStateException();
        }
        m mVar = this.f5245d;
        mVar.c(lVar, true);
        this.f5243b = null;
        this.f5244c = mVar.f5262e;
    }
}
