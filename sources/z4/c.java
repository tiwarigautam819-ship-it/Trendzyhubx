package z4;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f6412b;

    public c(String str, Map map) {
        this.f6411a = str;
        this.f6412b = map;
    }

    public static c a(String str) {
        return new c(str, Collections.EMPTY_MAP);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f6411a.equals(cVar.f6411a) && this.f6412b.equals(cVar.f6412b);
    }

    public final int hashCode() {
        return this.f6412b.hashCode() + (this.f6411a.hashCode() * 31);
    }

    public final String toString() {
        return "FieldDescriptor{name=" + this.f6411a + ", properties=" + this.f6412b.values() + "}";
    }
}
