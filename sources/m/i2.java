package m;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import androidx.appcompat.widget.SearchView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i2 implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchView f4000a;

    public i2(SearchView searchView) {
        this.f4000a = searchView;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i6, int i9, int i10) {
        SearchView searchView = this.f4000a;
        Editable text = searchView.f264x.getText();
        searchView.f256g0 = text;
        boolean zIsEmpty = TextUtils.isEmpty(text);
        searchView.u(!zIsEmpty);
        int i11 = 8;
        if (searchView.f255f0 && !searchView.V && zIsEmpty) {
            searchView.C.setVisibility(8);
            i11 = 0;
        }
        searchView.E.setVisibility(i11);
        searchView.q();
        searchView.t();
        charSequence.toString();
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i6, int i9, int i10) {
    }
}
