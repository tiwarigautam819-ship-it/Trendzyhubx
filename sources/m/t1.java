package m;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class t1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4104a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x1 f4105b;

    public /* synthetic */ t1(x1 x1Var, int i6) {
        this.f4104a = i6;
        this.f4105b = x1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4104a) {
            case 0:
                m1 m1Var = this.f4105b.f4156c;
                if (m1Var != null) {
                    m1Var.setListSelectionHidden(true);
                    m1Var.requestLayout();
                }
                break;
            default:
                x1 x1Var = this.f4105b;
                m1 m1Var2 = x1Var.f4156c;
                if (m1Var2 != null && m1Var2.isAttachedToWindow() && x1Var.f4156c.getCount() > x1Var.f4156c.getChildCount() && x1Var.f4156c.getChildCount() <= x1Var.f4165m) {
                    x1Var.G.setInputMethodMode(2);
                    x1Var.c();
                    break;
                }
                break;
        }
    }
}
