package g0;

import com.google.android.gms.internal.measurement.y4;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements i0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2834b;

    public /* synthetic */ g(int i6, Object obj) {
        this.f2833a = i6;
        this.f2834b = obj;
    }

    @Override // i0.a
    public final void accept(Object obj) {
        switch (this.f2833a) {
            case 0:
                h hVar = (h) obj;
                if (hVar == null) {
                    hVar = new h(-3);
                }
                ((y4) this.f2834b).C(hVar);
                return;
            default:
                h hVar2 = (h) obj;
                synchronized (i.f2839c) {
                    try {
                        s.j jVar = i.f2840d;
                        ArrayList arrayList = (ArrayList) jVar.get((String) this.f2834b);
                        if (arrayList == null) {
                            return;
                        }
                        jVar.remove((String) this.f2834b);
                        for (int i6 = 0; i6 < arrayList.size(); i6++) {
                            ((i0.a) arrayList.get(i6)).accept(hVar2);
                        }
                        return;
                    } finally {
                    }
                }
        }
    }
}
