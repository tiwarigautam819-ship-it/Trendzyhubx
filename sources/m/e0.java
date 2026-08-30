package m;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e0 implements k0, DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public g.k f3943a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public f0 f3944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CharSequence f3945c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ l0 f3946d;

    public e0(l0 l0Var) {
        this.f3946d = l0Var;
    }

    @Override // m.k0
    public final boolean a() {
        g.k kVar = this.f3943a;
        if (kVar != null) {
            return kVar.isShowing();
        }
        return false;
    }

    @Override // m.k0
    public final int b() {
        return 0;
    }

    @Override // m.k0
    public final Drawable d() {
        return null;
    }

    @Override // m.k0
    public final void dismiss() {
        g.k kVar = this.f3943a;
        if (kVar != null) {
            kVar.dismiss();
            this.f3943a = null;
        }
    }

    @Override // m.k0
    public final void f(CharSequence charSequence) {
        this.f3945c = charSequence;
    }

    @Override // m.k0
    public final void g(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // m.k0
    public final void h(int i6) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // m.k0
    public final void i(int i6) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }

    @Override // m.k0
    public final void j(int i6) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // m.k0
    public final void k(int i6, int i9) {
        if (this.f3944b == null) {
            return;
        }
        l0 l0Var = this.f3946d;
        g.j jVar = new g.j(l0Var.getPopupContext());
        g.f fVar = (g.f) jVar.f2743b;
        CharSequence charSequence = this.f3945c;
        if (charSequence != null) {
            fVar.f2673d = charSequence;
        }
        f0 f0Var = this.f3944b;
        int selectedItemPosition = l0Var.getSelectedItemPosition();
        fVar.f2676g = f0Var;
        fVar.h = this;
        fVar.f2678j = selectedItemPosition;
        fVar.f2677i = true;
        g.k kVarB = jVar.b();
        this.f3943a = kVarB;
        AlertController$RecycleListView alertController$RecycleListView = kVarB.f2746f.f2717e;
        alertController$RecycleListView.setTextDirection(i6);
        alertController$RecycleListView.setTextAlignment(i9);
        this.f3943a.show();
    }

    @Override // m.k0
    public final int m() {
        return 0;
    }

    @Override // m.k0
    public final CharSequence o() {
        return this.f3945c;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        l0 l0Var = this.f3946d;
        l0Var.setSelection(i6);
        if (l0Var.getOnItemClickListener() != null) {
            l0Var.performItemClick(null, i6, this.f3944b.getItemId(i6));
        }
        dismiss();
    }

    @Override // m.k0
    public final void p(ListAdapter listAdapter) {
        this.f3944b = (f0) listAdapter;
    }
}
