package g;

import android.view.Window;
import m.d1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class v implements d1, l.y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f0 f2814a;

    public /* synthetic */ v(f0 f0Var) {
        this.f2814a = f0Var;
    }

    @Override // l.y
    public void b(l.n nVar, boolean z5) {
        e0 e0Var;
        l.n nVarK = nVar.k();
        int i6 = 0;
        boolean z8 = nVarK != nVar;
        if (z8) {
            nVar = nVarK;
        }
        f0 f0Var = this.f2814a;
        e0[] e0VarArr = f0Var.T;
        int length = e0VarArr != null ? e0VarArr.length : 0;
        while (true) {
            if (i6 < length) {
                e0Var = e0VarArr[i6];
                if (e0Var != null && e0Var.h == nVar) {
                    break;
                } else {
                    i6++;
                }
            } else {
                e0Var = null;
                break;
            }
        }
        if (e0Var != null) {
            if (!z8) {
                f0Var.t(e0Var, z5);
            } else {
                f0Var.r(e0Var.f2655a, e0Var, nVarK);
                f0Var.t(e0Var, true);
            }
        }
    }

    @Override // l.y
    public boolean f(l.n nVar) {
        Window.Callback callback;
        if (nVar != nVar.k()) {
            return true;
        }
        f0 f0Var = this.f2814a;
        if (!f0Var.N || (callback = f0Var.f2695l.getCallback()) == null || f0Var.Y) {
            return true;
        }
        callback.onMenuOpened(108, nVar);
        return true;
    }
}
