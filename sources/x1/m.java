package x1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c0 f5906a;

    public m(c0 c0Var, String str) {
        super(str);
        this.f5906a = c0Var;
    }

    @Override // x1.l, java.lang.Throwable
    public final String toString() {
        c0 c0Var = this.f5906a;
        o oVar = c0Var != null ? c0Var.f5818c : null;
        StringBuilder sb = new StringBuilder("{FacebookGraphResponseException: ");
        String message = getMessage();
        if (message != null) {
            sb.append(message);
            sb.append(" ");
        }
        if (oVar != null) {
            sb.append("httpResponseCode: ");
            sb.append(oVar.f5908a);
            sb.append(", facebookErrorCode: ");
            sb.append(oVar.f5909b);
            sb.append(", facebookErrorType: ");
            sb.append(oVar.f5911d);
            sb.append(", message: ");
            sb.append(oVar.a());
            sb.append("}");
        }
        String string = sb.toString();
        d7.g.e("errorStringBuilder.toString()", string);
        return string;
    }
}
