package m;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3984c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3985d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3986e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3987f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3988g;
    public boolean h;

    public final void a(int i6, int i9) {
        this.f3984c = i6;
        this.f3985d = i9;
        this.h = true;
        if (this.f3988g) {
            if (i9 != Integer.MIN_VALUE) {
                this.f3982a = i9;
            }
            if (i6 != Integer.MIN_VALUE) {
                this.f3983b = i6;
                return;
            }
            return;
        }
        if (i6 != Integer.MIN_VALUE) {
            this.f3982a = i6;
        }
        if (i9 != Integer.MIN_VALUE) {
            this.f3983b = i9;
        }
    }
}
