package m;

import android.view.View;
import androidx.appcompat.widget.SearchView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k2 implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchView f4011a;

    public k2(SearchView searchView) {
        this.f4011a = searchView;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z5) {
        SearchView searchView = this.f4011a;
        View.OnFocusChangeListener onFocusChangeListener = searchView.S;
        if (onFocusChangeListener != null) {
            onFocusChangeListener.onFocusChange(searchView, z5);
        }
    }
}
