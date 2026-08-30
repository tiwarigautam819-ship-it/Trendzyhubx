package l;

import android.view.View;
import androidx.appcompat.view.menu.ActionMenuItemView;
import m.p1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends p1 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f3603j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ View f3604k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.f3604k = actionMenuItemView;
    }

    @Override // m.p1
    public final d0 b() {
        m.e eVar;
        switch (this.f3603j) {
            case 0:
                c cVar = ((ActionMenuItemView) this.f3604k).f160m;
                if (cVar == null || (eVar = ((m.f) cVar).f3948a.B) == null) {
                    return null;
                }
                return eVar.a();
            default:
                m.e eVar2 = ((m.h) this.f3604k).f3979d.A;
                if (eVar2 == null) {
                    return null;
                }
                return eVar2.a();
        }
    }

    @Override // m.p1
    public final boolean c() {
        d0 d0VarB;
        switch (this.f3603j) {
            case 0:
                ActionMenuItemView actionMenuItemView = (ActionMenuItemView) this.f3604k;
                m mVar = actionMenuItemView.f158k;
                return mVar != null && mVar.b(actionMenuItemView.h) && (d0VarB = b()) != null && d0VarB.a();
            default:
                ((m.h) this.f3604k).f3979d.l();
                return true;
        }
    }

    @Override // m.p1
    public boolean d() {
        switch (this.f3603j) {
            case 1:
                androidx.appcompat.widget.a aVar = ((m.h) this.f3604k).f3979d;
                if (aVar.C != null) {
                    return false;
                }
                aVar.c();
                return true;
            default:
                return super.d();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(m.h hVar, m.h hVar2) {
        super(hVar2);
        this.f3604k = hVar;
    }
}
