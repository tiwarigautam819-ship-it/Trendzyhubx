package o;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Map.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f4385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c f4386d;

    public c(Object obj, Object obj2) {
        this.f4383a = obj;
        this.f4384b = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f4383a.equals(cVar.f4383a) && this.f4384b.equals(cVar.f4384b);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f4383a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f4384b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f4383a.hashCode() ^ this.f4384b.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public final String toString() {
        return this.f4383a + "=" + this.f4384b;
    }
}
