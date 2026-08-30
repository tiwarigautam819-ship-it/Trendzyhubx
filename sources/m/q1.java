package m;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.SearchView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q1 implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4072b;

    public /* synthetic */ q1(int i6, Object obj) {
        this.f4071a = i6;
        this.f4072b = obj;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i6, long j3) {
        m1 m1Var;
        switch (this.f4071a) {
            case 0:
                if (i6 != -1 && (m1Var = ((x1) this.f4072b).f4156c) != null) {
                    m1Var.setListSelectionHidden(false);
                    break;
                }
                break;
            default:
                ((SearchView) this.f4072b).n(i6);
                break;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i6 = this.f4071a;
    }

    private final void a(AdapterView adapterView) {
    }

    private final void b(AdapterView adapterView) {
    }
}
