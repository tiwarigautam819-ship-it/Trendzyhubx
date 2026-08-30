package androidx.fragment.app;

import android.util.Log;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o0 implements d.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f595a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y0 f596b;

    public /* synthetic */ o0(z0 z0Var, int i6) {
        this.f595a = i6;
        this.f596b = z0Var;
    }

    @Override // d.b
    public final void e(Object obj) {
        switch (this.f595a) {
            case 0:
                Map map = (Map) obj;
                ArrayList arrayList = new ArrayList(map.values());
                int[] iArr = new int[arrayList.size()];
                for (int i6 = 0; i6 < arrayList.size(); i6++) {
                    iArr[i6] = ((Boolean) arrayList.get(i6)).booleanValue() ? 0 : -1;
                }
                y0 y0Var = this.f596b;
                u0 u0Var = (u0) y0Var.F.pollFirst();
                if (u0Var == null) {
                    Log.w("FragmentManager", "No permissions were requested for " + this);
                } else {
                    String str = u0Var.f627a;
                    if (y0Var.f642c.n(str) == null) {
                        Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
                    }
                }
                break;
            default:
                d.a aVar = (d.a) obj;
                y0 y0Var2 = this.f596b;
                u0 u0Var2 = (u0) y0Var2.F.pollFirst();
                if (u0Var2 == null) {
                    Log.w("FragmentManager", "No IntentSenders were started for " + this);
                } else {
                    String str2 = u0Var2.f627a;
                    int i9 = u0Var2.f628b;
                    c0 c0VarN = y0Var2.f642c.n(str2);
                    if (c0VarN == null) {
                        Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str2);
                    } else {
                        c0VarN.o(i9, aVar.f2190a, aVar.f2191b);
                    }
                }
                break;
        }
    }
}
