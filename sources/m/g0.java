package m;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.SearchView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g0 implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3965b;

    public /* synthetic */ g0(int i6, Object obj) {
        this.f3964a = i6;
        this.f3965b = obj;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i6, long j3) {
        switch (this.f3964a) {
            case 0:
                i0 i0Var = (i0) this.f3965b;
                l0 l0Var = i0Var.O;
                l0Var.setSelection(i6);
                if (l0Var.getOnItemClickListener() != null) {
                    l0Var.performItemClick(view, i6, i0Var.L.getItemId(i6));
                }
                i0Var.dismiss();
                break;
            default:
                ((SearchView) this.f3965b).m(i6);
                break;
        }
    }
}
