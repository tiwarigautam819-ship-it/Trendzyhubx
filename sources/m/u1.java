package m;

import android.database.DataSetObserver;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class u1 extends DataSetObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4117b;

    public /* synthetic */ u1(int i6, Object obj) {
        this.f4116a = i6;
        this.f4117b = obj;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        switch (this.f4116a) {
            case 0:
                x1 x1Var = (x1) this.f4117b;
                if (x1Var.G.isShowing()) {
                    x1Var.c();
                }
                break;
            default:
                u2 u2Var = (u2) this.f4117b;
                u2Var.f4314a = true;
                u2Var.notifyDataSetChanged();
                break;
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        switch (this.f4116a) {
            case 0:
                ((x1) this.f4117b).dismiss();
                break;
            default:
                u2 u2Var = (u2) this.f4117b;
                u2Var.f4314a = false;
                u2Var.notifyDataSetInvalidated();
                break;
        }
    }
}
