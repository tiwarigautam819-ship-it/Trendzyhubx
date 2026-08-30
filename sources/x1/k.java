package x1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5905b;

    public k(String str, int i6, String str2) {
        super(str);
        this.f5904a = i6;
        this.f5905b = str2;
    }

    @Override // x1.l, java.lang.Throwable
    public final String toString() {
        String str = "{FacebookDialogException: errorCode: " + this.f5904a + ", message: " + getMessage() + ", url: " + this.f5905b + "}";
        d7.g.e("StringBuilder()\n        …(\"}\")\n        .toString()", str);
        return str;
    }
}
