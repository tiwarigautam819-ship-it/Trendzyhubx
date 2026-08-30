package l;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import androidx.appcompat.view.menu.ExpandedMenuView;
import com.engagelab.privates.common.constants.MTCommonConstants;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements z, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f3657a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LayoutInflater f3658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public n f3659c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ExpandedMenuView f3660d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public y f3661e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public i f3662f;

    public j(ContextWrapper contextWrapper) {
        this.f3657a = contextWrapper;
        this.f3658b = LayoutInflater.from(contextWrapper);
    }

    @Override // l.z
    public final void b(n nVar, boolean z5) {
        y yVar = this.f3661e;
        if (yVar != null) {
            yVar.b(nVar, z5);
        }
    }

    @Override // l.z
    public final void d() {
        i iVar = this.f3662f;
        if (iVar != null) {
            iVar.notifyDataSetChanged();
        }
    }

    @Override // l.z
    public final void f(y yVar) {
        throw null;
    }

    @Override // l.z
    public final boolean g(p pVar) {
        return false;
    }

    @Override // l.z
    public final void h(Context context, n nVar) {
        if (this.f3657a != null) {
            this.f3657a = context;
            if (this.f3658b == null) {
                this.f3658b = LayoutInflater.from(context);
            }
        }
        this.f3659c = nVar;
        i iVar = this.f3662f;
        if (iVar != null) {
            iVar.notifyDataSetChanged();
        }
    }

    @Override // l.z
    public final boolean i() {
        return false;
    }

    @Override // l.z
    public final boolean j(f0 f0Var) {
        boolean zHasVisibleItems = f0Var.hasVisibleItems();
        Context context = f0Var.f3670a;
        if (!zHasVisibleItems) {
            return false;
        }
        o oVar = new o();
        oVar.f3693a = f0Var;
        g.j jVar = new g.j(context);
        g.f fVar = (g.f) jVar.f2743b;
        j jVar2 = new j(fVar.f2670a);
        oVar.f3695c = jVar2;
        jVar2.f3661e = oVar;
        f0Var.b(jVar2, context);
        j jVar3 = oVar.f3695c;
        if (jVar3.f3662f == null) {
            jVar3.f3662f = new i(jVar3);
        }
        fVar.f2676g = jVar3.f3662f;
        fVar.h = oVar;
        View view = f0Var.f3683o;
        if (view != null) {
            fVar.f2674e = view;
        } else {
            fVar.f2672c = f0Var.f3682n;
            fVar.f2673d = f0Var.f3681m;
        }
        fVar.f2675f = oVar;
        g.k kVarB = jVar.b();
        oVar.f3694b = kVarB;
        kVarB.setOnDismissListener(oVar);
        WindowManager.LayoutParams attributes = oVar.f3694b.getWindow().getAttributes();
        attributes.type = MTCommonConstants.MainWhat.ON_NETWORK_CONNECTED;
        attributes.flags |= 131072;
        oVar.f3694b.show();
        y yVar = this.f3661e;
        if (yVar == null) {
            return true;
        }
        yVar.f(f0Var);
        return true;
    }

    @Override // l.z
    public final boolean k(p pVar) {
        return false;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i6, long j3) {
        this.f3659c.q(this.f3662f.getItem(i6), this, 0);
    }
}
