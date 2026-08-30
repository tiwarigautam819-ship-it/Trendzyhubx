package x1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class t extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o f5936a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(o oVar, String str) {
        super(str);
        d7.g.f("requestError", oVar);
        this.f5936a = oVar;
    }

    @Override // x1.l, java.lang.Throwable
    public final String toString() {
        StringBuilder sb = new StringBuilder("{FacebookServiceException: httpResponseCode: ");
        o oVar = this.f5936a;
        sb.append(oVar.f5908a);
        sb.append(", facebookErrorCode: ");
        sb.append(oVar.f5909b);
        sb.append(", facebookErrorType: ");
        sb.append(oVar.f5911d);
        sb.append(", message: ");
        sb.append(oVar.a());
        sb.append("}");
        String string = sb.toString();
        d7.g.e("StringBuilder()\n        …(\"}\")\n        .toString()", string);
        return string;
    }
}
