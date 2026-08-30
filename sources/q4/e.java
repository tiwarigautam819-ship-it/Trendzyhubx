package q4;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements d, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f4854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile transient boolean f4855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient Object f4856c;

    public e(d dVar) {
        this.f4854a = dVar;
    }

    @Override // q4.d
    public final Object get() {
        if (!this.f4855b) {
            synchronized (this) {
                try {
                    if (!this.f4855b) {
                        Object obj = this.f4854a.get();
                        this.f4856c = obj;
                        this.f4855b = true;
                        return obj;
                    }
                } finally {
                }
            }
        }
        return this.f4856c;
    }

    public final String toString() {
        Object string;
        if (this.f4855b) {
            String strValueOf = String.valueOf(this.f4856c);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 25);
            sb.append("<supplier that returned ");
            sb.append(strValueOf);
            sb.append(">");
            string = sb.toString();
        } else {
            string = this.f4854a;
        }
        String strValueOf2 = String.valueOf(string);
        StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(strValueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
