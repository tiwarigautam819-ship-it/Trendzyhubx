package q4;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements d, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4860a;

    public g(Object obj) {
        this.f4860a = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            return z7.d.d(this.f4860a, ((g) obj).f4860a);
        }
        return false;
    }

    @Override // q4.d
    public final Object get() {
        return this.f4860a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4860a});
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f4860a);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 22);
        sb.append("Suppliers.ofInstance(");
        sb.append(strValueOf);
        sb.append(")");
        return sb.toString();
    }
}
