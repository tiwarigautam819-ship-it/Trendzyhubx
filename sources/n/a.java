package n;

import k2.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile a f4309b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f4310a = new c();

    public static a n() {
        if (f4309b != null) {
            return f4309b;
        }
        synchronized (a.class) {
            try {
                if (f4309b == null) {
                    f4309b = new a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f4309b;
    }
}
