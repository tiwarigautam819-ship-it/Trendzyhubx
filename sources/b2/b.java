package b2;

import android.view.View;
import android.widget.AdapterView;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c2.a f901a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WeakReference f902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference f903c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public AdapterView.OnItemClickListener f904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f905e;

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i6, long j3) {
        d7.g.f("view", view);
        AdapterView.OnItemClickListener onItemClickListener = this.f904d;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(adapterView, view, i6, j3);
        }
        View view2 = (View) this.f903c.get();
        AdapterView adapterView2 = (AdapterView) this.f902b.get();
        if (view2 == null || adapterView2 == null) {
            return;
        }
        c.c(this.f901a, view2, adapterView2);
    }
}
