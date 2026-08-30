package d7;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b implements i7.a, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient i7.a f2283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class f2285c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f2286d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f2287e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f2288f;

    public b(Object obj, Class cls, String str, String str2, boolean z5) {
        this.f2284b = obj;
        this.f2285c = cls;
        this.f2286d = str;
        this.f2287e = str2;
        this.f2288f = z5;
    }

    public final c a() {
        boolean z5 = this.f2288f;
        Class cls = this.f2285c;
        if (!z5) {
            return l.a(cls);
        }
        l.f2299a.getClass();
        return new i(cls);
    }
}
