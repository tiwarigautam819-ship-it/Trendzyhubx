package x3;

import com.google.android.gms.common.internal.d0;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final u3.o f5954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.common.internal.s f5955c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f5956d;

    public a(u3.o oVar, com.google.android.gms.common.internal.s sVar, String str) {
        this.f5954b = oVar;
        this.f5955c = sVar;
        this.f5956d = str;
        this.f5953a = Arrays.hashCode(new Object[]{oVar, sVar, str});
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return d0.k(this.f5954b, aVar.f5954b) && d0.k(this.f5955c, aVar.f5955c) && d0.k(this.f5956d, aVar.f5956d);
    }

    public final int hashCode() {
        return this.f5953a;
    }
}
