package x3;

import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.y4;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f5991a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final v3.c f5992b;

    public /* synthetic */ k(a aVar, v3.c cVar) {
        this.f5991a = aVar;
        this.f5992b = cVar;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof k)) {
            k kVar = (k) obj;
            if (d0.k(this.f5991a, kVar.f5991a) && d0.k(this.f5992b, kVar.f5992b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5991a, this.f5992b});
    }

    public final String toString() {
        y4 y4Var = new y4(this);
        y4Var.f("key", this.f5991a);
        y4Var.f("feature", this.f5992b);
        return y4Var.toString();
    }
}
