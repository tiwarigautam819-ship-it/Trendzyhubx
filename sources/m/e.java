package m;

import android.content.Context;
import android.view.View;
import com.YaarWin.app.R;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends l.x {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ int f3941l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ androidx.appcompat.widget.a f3942m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(androidx.appcompat.widget.a aVar, Context context, l.n nVar, View view) {
        super(context, nVar, view, true, R.attr.actionOverflowMenuStyle, 0);
        this.f3942m = aVar;
        this.f3737f = 8388613;
        k1.h hVar = aVar.E;
        this.h = hVar;
        l.v vVar = this.f3739i;
        if (vVar != null) {
            vVar.f(hVar);
        }
    }

    @Override // l.x
    public final void c() {
        switch (this.f3941l) {
            case 0:
                androidx.appcompat.widget.a aVar = this.f3942m;
                aVar.B = null;
                aVar.getClass();
                super.c();
                break;
            default:
                androidx.appcompat.widget.a aVar2 = this.f3942m;
                l.n nVar = aVar2.f3608c;
                if (nVar != null) {
                    nVar.c(true);
                }
                aVar2.A = null;
                super.c();
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(androidx.appcompat.widget.a aVar, Context context, l.f0 f0Var, View view) {
        super(context, f0Var, view, false, R.attr.actionOverflowMenuStyle, 0);
        this.f3942m = aVar;
        if ((f0Var.A.f3718x & 32) != 32) {
            View view2 = aVar.f297i;
            this.f3736e = view2 == null ? (View) aVar.h : view2;
        }
        k1.h hVar = aVar.E;
        this.h = hVar;
        l.v vVar = this.f3739i;
        if (vVar != null) {
            vVar.f(hVar);
        }
    }
}
