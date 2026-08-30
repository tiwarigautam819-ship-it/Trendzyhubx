package a2;

import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f37a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f38b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f39c;

    public h(String str, String str2, String str3) {
        d7.g.f("cloudBridgeURL", str2);
        this.f37a = str;
        this.f38b = str2;
        this.f39c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return d7.g.a(this.f37a, hVar.f37a) && d7.g.a(this.f38b, hVar.f38b) && d7.g.a(this.f39c, hVar.f39c);
    }

    public final int hashCode() {
        return this.f39c.hashCode() + x.d(this.f37a.hashCode() * 31, this.f38b, 31);
    }

    public final String toString() {
        return "CloudBridgeCredentials(datasetID=" + this.f37a + ", cloudBridgeURL=" + this.f38b + ", accessKey=" + this.f39c + ')';
    }
}
