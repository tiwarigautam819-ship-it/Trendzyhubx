package c3;

import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1036a;

    public c(String str) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        this.f1036a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        return this.f1036a.equals(((c) obj).f1036a);
    }

    public final int hashCode() {
        return this.f1036a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return x.h(new StringBuilder("Encoding{name=\""), this.f1036a, "\"}");
    }
}
