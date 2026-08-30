package b;

import android.window.OnBackInvokedCallback;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b0 implements OnBackInvokedCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f779b;

    public /* synthetic */ b0(int i6, Object obj) {
        this.f778a = i6;
        this.f779b = obj;
    }

    public final void onBackInvoked() {
        switch (this.f778a) {
            case 0:
                ((c7.a) this.f779b).b();
                break;
            case 1:
                ((g.f0) this.f779b).F();
                break;
            default:
                ((Runnable) this.f779b).run();
                break;
        }
    }
}
