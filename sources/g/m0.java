package g;

import androidx.appcompat.widget.ActionMenuView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m0 implements l.y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2750a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f2751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f2752c;

    public m0(String str, boolean z5) {
        this.f2752c = str;
        this.f2751b = z5;
    }

    @Override // l.y
    public void b(l.n nVar, boolean z5) {
        androidx.appcompat.widget.a aVar;
        n0 n0Var = (n0) this.f2752c;
        if (this.f2751b) {
            return;
        }
        this.f2751b = true;
        ActionMenuView actionMenuView = n0Var.f2753a.f327a.f270a;
        if (actionMenuView != null && (aVar = actionMenuView.B) != null) {
            aVar.c();
            m.e eVar = aVar.B;
            if (eVar != null && eVar.b()) {
                eVar.f3739i.dismiss();
            }
        }
        n0Var.f2754b.onPanelClosed(108, nVar);
        this.f2751b = false;
    }

    @Override // l.y
    public boolean f(l.n nVar) {
        ((n0) this.f2752c).f2754b.onMenuOpened(108, nVar);
        return true;
    }

    public String toString() {
        switch (this.f2750a) {
            case 1:
                String str = (String) this.f2752c;
                String str2 = this.f2751b ? "Applink" : "Unclassified";
                if (str == null) {
                    return str2;
                }
                return str2 + '(' + str + ')';
            default:
                return super.toString();
        }
    }

    public m0(n0 n0Var) {
        this.f2752c = n0Var;
    }
}
