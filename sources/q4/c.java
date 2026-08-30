package q4;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4853a;

    public c(Object obj) {
        this.f4853a = obj;
    }

    @Override // q4.b
    public final Object a() {
        return this.f4853a;
    }

    @Override // q4.b
    public final boolean b() {
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            return this.f4853a.equals(((c) obj).f4853a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4853a.hashCode() + 1502476572;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f4853a);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 13);
        sb.append("Optional.of(");
        sb.append(strValueOf);
        sb.append(")");
        return sb.toString();
    }
}
