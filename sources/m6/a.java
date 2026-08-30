package m6;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4285a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f4286b;

    public /* synthetic */ a(e eVar, int i6) {
        this.f4285a = i6;
        this.f4286b = eVar;
    }

    @Override // m6.f
    public final void a(String str) {
        switch (this.f4285a) {
            case 0:
                e eVar = this.f4286b;
                g.f4301b = str;
                try {
                    g.f4303d.countDown();
                    break;
                } catch (Throwable unused) {
                }
                if (eVar != null && str != null && !str.trim().isEmpty()) {
                    eVar.f(str);
                    break;
                }
                break;
            default:
                e eVar2 = this.f4286b;
                g.f4301b = str;
                try {
                    g.f4303d.countDown();
                    break;
                } catch (Throwable unused2) {
                }
                if (eVar2 != null) {
                    eVar2.f(g.f4301b);
                }
                break;
        }
    }
}
