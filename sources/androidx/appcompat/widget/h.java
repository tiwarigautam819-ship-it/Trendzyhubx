package androidx.appcompat.widget;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import l.f0;
import l.n;
import l.p;
import l.z;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h implements z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public n f324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p f325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Toolbar f326c;

    public h(Toolbar toolbar) {
        this.f326c = toolbar;
    }

    @Override // l.z
    public final void d() {
        if (this.f325b != null) {
            n nVar = this.f324a;
            if (nVar != null) {
                int size = nVar.f3675f.size();
                for (int i6 = 0; i6 < size; i6++) {
                    if (this.f324a.getItem(i6) == this.f325b) {
                        return;
                    }
                }
            }
            k(this.f325b);
        }
    }

    @Override // l.z
    public final boolean g(p pVar) {
        Toolbar toolbar = this.f326c;
        toolbar.c();
        ViewParent parent = toolbar.h.getParent();
        if (parent != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.h);
            }
            toolbar.addView(toolbar.h);
        }
        View actionView = pVar.getActionView();
        toolbar.f282i = actionView;
        this.f325b = pVar;
        ViewParent parent2 = actionView.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.f282i);
            }
            Toolbar.a aVarH = Toolbar.h();
            aVarH.f2638a = (toolbar.f287v & 112) | 8388611;
            aVarH.f292b = 2;
            toolbar.f282i.setLayoutParams(aVarH);
            toolbar.addView(toolbar.f282i);
        }
        for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar.getChildAt(childCount);
            if (((Toolbar.a) childAt.getLayoutParams()).f292b != 2 && childAt != toolbar.f270a) {
                toolbar.removeViewAt(childCount);
                toolbar.M.add(childAt);
            }
        }
        toolbar.requestLayout();
        pVar.C = true;
        pVar.f3708n.p(false);
        KeyEvent.Callback callback = toolbar.f282i;
        if (callback instanceof k.c) {
            ((k.c) callback).onActionViewExpanded();
        }
        toolbar.v();
        return true;
    }

    @Override // l.z
    public final void h(Context context, n nVar) {
        p pVar;
        n nVar2 = this.f324a;
        if (nVar2 != null && (pVar = this.f325b) != null) {
            nVar2.d(pVar);
        }
        this.f324a = nVar;
    }

    @Override // l.z
    public final boolean i() {
        return false;
    }

    @Override // l.z
    public final boolean j(f0 f0Var) {
        return false;
    }

    @Override // l.z
    public final boolean k(p pVar) {
        Toolbar toolbar = this.f326c;
        KeyEvent.Callback callback = toolbar.f282i;
        if (callback instanceof k.c) {
            ((k.c) callback).onActionViewCollapsed();
        }
        toolbar.removeView(toolbar.f282i);
        toolbar.removeView(toolbar.h);
        toolbar.f282i = null;
        ArrayList arrayList = toolbar.M;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            toolbar.addView((View) arrayList.get(size));
        }
        arrayList.clear();
        this.f325b = null;
        toolbar.requestLayout();
        pVar.C = false;
        pVar.f3708n.p(false);
        toolbar.v();
        return true;
    }

    @Override // l.z
    public final void b(n nVar, boolean z5) {
    }
}
