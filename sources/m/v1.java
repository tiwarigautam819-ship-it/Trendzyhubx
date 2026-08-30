package m;

import android.widget.AbsListView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class v1 implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x1 f4129a;

    public v1(x1 x1Var) {
        this.f4129a = x1Var;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i6) {
        x1 x1Var = this.f4129a;
        t1 t1Var = x1Var.f4169y;
        v vVar = x1Var.G;
        if (i6 != 1 || vVar.getInputMethodMode() == 2 || vVar.getContentView() == null) {
            return;
        }
        x1Var.C.removeCallbacks(t1Var);
        t1Var.run();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i6, int i9, int i10) {
    }
}
