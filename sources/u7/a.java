package u7;

import d7.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5506a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f5507b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f5508c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f5509d;

    public a(String str, boolean z5) {
        g.f("name", str);
        this.f5506a = str;
        this.f5507b = z5;
        this.f5509d = -1L;
    }

    public abstract long a();

    public final String toString() {
        return this.f5506a;
    }
}
