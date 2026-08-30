package y2;

import android.app.Dialog;
import androidx.fragment.app.h0;
import com.YaarWin.app.R;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f6175a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(g gVar, h0 h0Var) {
        super(h0Var, R.style.com_facebook_auth_dialog);
        this.f6175a = gVar;
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        this.f6175a.getClass();
        super.onBackPressed();
    }
}
