package q4;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile d f4857a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile boolean f4858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f4859c;

    @Override // q4.d
    public final Object get() {
        if (!this.f4858b) {
            synchronized (this) {
                try {
                    if (!this.f4858b) {
                        d dVar = this.f4857a;
                        Objects.requireNonNull(dVar);
                        Object obj = dVar.get();
                        this.f4859c = obj;
                        this.f4858b = true;
                        this.f4857a = null;
                        return obj;
                    }
                } finally {
                }
            }
        }
        return this.f4859c;
    }

    public final String toString() {
        Object string = this.f4857a;
        if (string == null) {
            String strValueOf = String.valueOf(this.f4859c);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 25);
            sb.append("<supplier that returned ");
            sb.append(strValueOf);
            sb.append(">");
            string = sb.toString();
        }
        String strValueOf2 = String.valueOf(string);
        StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(strValueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
