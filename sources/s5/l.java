package s5;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements Map.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public l f5249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public l f5250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l f5251c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public l f5252d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public l f5253e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f5254f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f5255g;
    public Object h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5256i;

    public l(boolean z5) {
        this.f5254f = null;
        this.f5255g = z5;
        this.f5253e = this;
        this.f5252d = this;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.f5254f;
            if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                Object obj3 = this.h;
                if (obj3 == null) {
                    if (entry.getValue() == null) {
                        return true;
                    }
                } else if (obj3.equals(entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f5254f;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.h;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object obj = this.f5254f;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.h;
        return (obj2 != null ? obj2.hashCode() : 0) ^ iHashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj == null && !this.f5255g) {
            throw new NullPointerException("value == null");
        }
        Object obj2 = this.h;
        this.h = obj;
        return obj2;
    }

    public final String toString() {
        return this.f5254f + "=" + this.h;
    }

    public l(boolean z5, l lVar, Object obj, l lVar2, l lVar3) {
        this.f5249a = lVar;
        this.f5254f = obj;
        this.f5255g = z5;
        this.f5256i = 1;
        this.f5252d = lVar2;
        this.f5253e = lVar3;
        lVar3.f5252d = this;
        lVar2.f5253e = this;
    }
}
