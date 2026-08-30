package i8;

import android.view.View;
import android.view.ViewGroup;
import j0.b1;
import j0.r;
import j0.z0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f3238a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f3239b;

    public /* synthetic */ l(boolean z5, boolean z8) {
        this.f3238a = z5;
        this.f3239b = z8;
    }

    @Override // j0.r
    public final b1 e(View view, b1 b1Var) {
        z0 z0Var = b1Var.f3254a;
        c0.c cVarF = z0Var.f(1);
        c0.c cVarF2 = z0Var.f(2);
        c0.c cVarF3 = z0Var.f(128);
        int iMax = Math.max(cVarF.f990b, cVarF3.f990b);
        int i6 = cVarF2.f992d;
        int iMax2 = this.f3238a ? Math.max(cVarF.f989a, cVarF3.f989a) : 0;
        int iMax3 = this.f3239b ? Math.max(cVarF.f991c, cVarF3.f991c) : 0;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.topMargin = iMax;
            marginLayoutParams.bottomMargin = i6;
            marginLayoutParams.leftMargin = iMax2;
            marginLayoutParams.rightMargin = iMax3;
            view.setLayoutParams(marginLayoutParams);
        }
        return b1.f3253b;
    }
}
