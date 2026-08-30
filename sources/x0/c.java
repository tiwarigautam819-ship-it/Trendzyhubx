package x0;

import androidx.lifecycle.s0;
import androidx.lifecycle.t;
import java.io.PrintWriter;
import k1.h;
import s.k;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t f5787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f5788b;

    public c(t tVar, s0 s0Var) {
        this.f5787a = tVar;
        this.f5788b = (b) new h(s0Var, b.f5785c).r(b.class);
    }

    public final void b(String str, PrintWriter printWriter) {
        k kVar = this.f5788b.f5786b;
        if (kVar.f5201c > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            if (kVar.f5201c <= 0) {
                return;
            }
            if (kVar.f5200b[0] != null) {
                throw new ClassCastException();
            }
            printWriter.print(str);
            printWriter.print("  #");
            printWriter.print(kVar.f5199a[0]);
            printWriter.print(": ");
            throw null;
        }
    }

    public final String toString() {
        int iLastIndexOf;
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        t tVar = this.f5787a;
        if (tVar == null) {
            sb.append("null");
        } else {
            String simpleName = tVar.getClass().getSimpleName();
            if (simpleName.length() <= 0 && (iLastIndexOf = (simpleName = tVar.getClass().getName()).lastIndexOf(46)) > 0) {
                simpleName = simpleName.substring(iLastIndexOf + 1);
            }
            sb.append(simpleName);
            sb.append('{');
            sb.append(Integer.toHexString(System.identityHashCode(tVar)));
        }
        sb.append("}}");
        return sb.toString();
    }
}
