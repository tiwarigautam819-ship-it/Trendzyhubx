package j1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f3337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3339c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final g8.d f3340d;

    public c(String str, String str2, g8.d dVar) {
        if (str2.isEmpty() || str2.charAt(0) != '/') {
            throw new IllegalArgumentException("Path should start with a slash '/'.");
        }
        if (!str2.endsWith("/")) {
            throw new IllegalArgumentException("Path should end with a slash '/'");
        }
        this.f3338b = str;
        this.f3339c = str2;
        this.f3337a = true;
        this.f3340d = dVar;
    }
}
