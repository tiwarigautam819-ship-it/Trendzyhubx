package b;

import android.view.View;
import android.view.Window;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements androidx.lifecycle.r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f788b;

    public /* synthetic */ e(int i6, Object obj) {
        this.f787a = i6;
        this.f788b = obj;
    }

    @Override // androidx.lifecycle.r
    public final void a(androidx.lifecycle.t tVar, androidx.lifecycle.m mVar) {
        Window window;
        View viewPeekDecorView;
        switch (this.f787a) {
            case 0:
                androidx.fragment.app.h0 h0Var = (androidx.fragment.app.h0) this.f788b;
                if (mVar == androidx.lifecycle.m.ON_STOP && (window = h0Var.getWindow()) != null && (viewPeekDecorView = window.peekDecorView()) != null) {
                    viewPeekDecorView.cancelPendingInputEvents();
                    break;
                }
                break;
            case 1:
                p.b((androidx.fragment.app.h0) this.f788b, tVar, mVar);
                break;
            default:
                e1.e eVar = (e1.e) this.f788b;
                d7.g.f("this$0", eVar);
                if (mVar == androidx.lifecycle.m.ON_START) {
                    eVar.f2312f = true;
                } else if (mVar == androidx.lifecycle.m.ON_STOP) {
                    eVar.f2312f = false;
                }
                break;
        }
    }
}
