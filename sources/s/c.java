package s;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Iterator, Map.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5180b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ e f5182d;

    public c(e eVar) {
        this.f5182d = eVar;
        this.f5179a = eVar.f5198c - 1;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!this.f5181c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        int i6 = this.f5180b;
        e eVar = this.f5182d;
        return d7.g.a(key, eVar.e(i6)) && d7.g.a(entry.getValue(), eVar.h(this.f5180b));
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        if (this.f5181c) {
            return this.f5182d.e(this.f5180b);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f5181c) {
            return this.f5182d.h(this.f5180b);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f5180b < this.f5179a;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        if (!this.f5181c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        int i6 = this.f5180b;
        e eVar = this.f5182d;
        Object objE = eVar.e(i6);
        Object objH = eVar.h(this.f5180b);
        return (objE == null ? 0 : objE.hashCode()) ^ (objH != null ? objH.hashCode() : 0);
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f5180b++;
        this.f5181c = true;
        return this;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f5181c) {
            throw new IllegalStateException();
        }
        this.f5182d.f(this.f5180b);
        this.f5180b--;
        this.f5179a--;
        this.f5181c = false;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (this.f5181c) {
            return this.f5182d.g(this.f5180b, obj);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
