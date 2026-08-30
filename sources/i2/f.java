package i2;

import android.content.Context;
import android.view.WindowInsetsController;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3102c;

    public /* synthetic */ f(int i6, Context context, int i9) {
        this.f3100a = i9;
        this.f3101b = i6;
        this.f3102c = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3100a) {
            case 0:
                int i6 = this.f3101b;
                Context context = (Context) this.f3102c;
                if (!v2.a.b(g.class)) {
                    try {
                        a1.a.n(i6, "$billingClientVersion");
                        g gVar = g.f3103a;
                        String packageName = context.getPackageName();
                        d7.g.e("context.packageName", packageName);
                        gVar.a(i6, packageName);
                    } catch (Throwable th) {
                        v2.a.a(th, g.class);
                        return;
                    }
                    break;
                }
                break;
            case 1:
                int i9 = this.f3101b;
                Context context2 = (Context) this.f3102c;
                if (!v2.a.b(g.class)) {
                    try {
                        a1.a.n(i9, "$billingClientVersion");
                        g gVar2 = g.f3103a;
                        String packageName2 = context2.getPackageName();
                        d7.g.e("context.packageName", packageName2);
                        gVar2.a(i9, packageName2);
                    } catch (Throwable th2) {
                        v2.a.a(th2, g.class);
                        return;
                    }
                    break;
                }
                break;
            default:
                WindowInsetsController windowInsetsController = (WindowInsetsController) this.f3102c;
                int i10 = this.f3101b;
                try {
                    windowInsetsController.setSystemBarsBehavior(1);
                    windowInsetsController.show(i10);
                } catch (Throwable unused) {
                    return;
                }
                break;
        }
    }

    public /* synthetic */ f(WindowInsetsController windowInsetsController, int i6) {
        this.f3100a = 2;
        this.f3102c = windowInsetsController;
        this.f3101b = i6;
    }
}
