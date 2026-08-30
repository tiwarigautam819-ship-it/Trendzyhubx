package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import g.f0;
import g.v;
import j0.o0;
import l.n;
import m.d1;
import m.e1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TypedValue f242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TypedValue f243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TypedValue f244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TypedValue f245d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TypedValue f246e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TypedValue f247f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Rect f248g;
    public d1 h;

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f248g = new Rect();
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f246e == null) {
            this.f246e = new TypedValue();
        }
        return this.f246e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f247f == null) {
            this.f247f = new TypedValue();
        }
        return this.f247f;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f244c == null) {
            this.f244c = new TypedValue();
        }
        return this.f244c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f245d == null) {
            this.f245d = new TypedValue();
        }
        return this.f245d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f242a == null) {
            this.f242a = new TypedValue();
        }
        return this.f242a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f243b == null) {
            this.f243b = new TypedValue();
        }
        return this.f243b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        d1 d1Var = this.h;
        if (d1Var != null) {
            d1Var.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        a aVar;
        super.onDetachedFromWindow();
        d1 d1Var = this.h;
        if (d1Var != null) {
            f0 f0Var = ((v) d1Var).f2814a;
            e1 e1Var = f0Var.f2705z;
            if (e1Var != null) {
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) e1Var;
                actionBarOverlayLayout.k();
                ActionMenuView actionMenuView = ((i) actionBarOverlayLayout.f213e).f327a.f270a;
                if (actionMenuView != null && (aVar = actionMenuView.B) != null) {
                    aVar.c();
                    m.e eVar = aVar.B;
                    if (eVar != null && eVar.b()) {
                        eVar.f3739i.dismiss();
                    }
                }
            }
            if (f0Var.E != null) {
                f0Var.f2695l.getDecorView().removeCallbacks(f0Var.F);
                if (f0Var.E.isShowing()) {
                    try {
                        f0Var.E.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                f0Var.E = null;
            }
            o0 o0Var = f0Var.G;
            if (o0Var != null) {
                o0Var.b();
            }
            n nVar = f0Var.B(0).h;
            if (nVar != null) {
                nVar.c(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00de  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r17, int r18) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(d1 d1Var) {
        this.h = d1Var;
    }
}
