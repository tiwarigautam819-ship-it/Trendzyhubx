package x0;

import androidx.fragment.app.b1;
import androidx.lifecycle.p0;
import s.k;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class b extends p0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b1 f5785c = new b1(3);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k f5786b = new k();

    @Override // androidx.lifecycle.p0
    public final void b() {
        k kVar = this.f5786b;
        int i6 = kVar.f5201c;
        if (i6 > 0) {
            kVar.f5200b[0].getClass();
            throw new ClassCastException();
        }
        Object[] objArr = kVar.f5200b;
        for (int i9 = 0; i9 < i6; i9++) {
            objArr[i9] = null;
        }
        kVar.f5201c = 0;
    }
}
