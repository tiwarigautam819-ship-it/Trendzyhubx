package r7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.google.android.gms.common.internal.g f5137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public s f5138b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f5140d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public i f5141e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public w f5143g;
    public u h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public u f5144i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public u f5145j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f5146k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f5147l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public com.google.firebase.messaging.p f5148m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5139c = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public j f5142f = new j();

    public static void b(String str, u uVar) {
        if (uVar != null) {
            if (uVar.f5155g != null) {
                throw new IllegalArgumentException(str.concat(".body != null").toString());
            }
            if (uVar.h != null) {
                throw new IllegalArgumentException(str.concat(".networkResponse != null").toString());
            }
            if (uVar.f5156i != null) {
                throw new IllegalArgumentException(str.concat(".cacheResponse != null").toString());
            }
            if (uVar.f5157j != null) {
                throw new IllegalArgumentException(str.concat(".priorResponse != null").toString());
            }
        }
    }

    public final u a() {
        int i6 = this.f5139c;
        if (i6 < 0) {
            throw new IllegalStateException(("code < 0: " + this.f5139c).toString());
        }
        com.google.android.gms.common.internal.g gVar = this.f5137a;
        if (gVar == null) {
            throw new IllegalStateException("request == null");
        }
        s sVar = this.f5138b;
        if (sVar == null) {
            throw new IllegalStateException("protocol == null");
        }
        String str = this.f5140d;
        if (str != null) {
            return new u(gVar, sVar, str, i6, this.f5141e, this.f5142f.c(), this.f5143g, this.h, this.f5144i, this.f5145j, this.f5146k, this.f5147l, this.f5148m);
        }
        throw new IllegalStateException("message == null");
    }
}
