package b;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f781a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ androidx.fragment.app.h0 f782b;

    public /* synthetic */ d(androidx.fragment.app.h0 h0Var, int i6) {
        this.f781a = i6;
        this.f782b = h0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f781a) {
            case 0:
                this.f782b.invalidateMenu();
                return;
            default:
                try {
                    super/*android.app.Activity*/.onBackPressed();
                    return;
                } catch (IllegalStateException e9) {
                    if (!d7.g.a(e9.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                        throw e9;
                    }
                    return;
                } catch (NullPointerException e10) {
                    if (!d7.g.a(e10.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                        throw e10;
                    }
                    return;
                }
        }
    }
}
