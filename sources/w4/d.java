package w4;

import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f5739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Runnable f5740c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ o5.c f5741d;

    public /* synthetic */ d(f fVar, Runnable runnable, o5.c cVar, int i6) {
        this.f5738a = i6;
        this.f5739b = fVar;
        this.f5740c = runnable;
        this.f5741d = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5738a) {
            case 0:
                ExecutorService executorService = this.f5739b.f5745a;
                final int i6 = 0;
                final Runnable runnable = this.f5740c;
                final o5.c cVar = this.f5741d;
                executorService.execute(new Runnable() { // from class: w4.b
                    @Override // java.lang.Runnable
                    public final void run() throws Exception {
                        switch (i6) {
                            case 0:
                                try {
                                    runnable.run();
                                    return;
                                } catch (Exception e9) {
                                    ((h) cVar.f4446b).k(e9);
                                    throw e9;
                                }
                            case 1:
                                try {
                                    runnable.run();
                                    return;
                                } catch (Exception e10) {
                                    ((h) cVar.f4446b).k(e10);
                                    return;
                                }
                            default:
                                Runnable runnable2 = runnable;
                                h hVar = (h) cVar.f4446b;
                                try {
                                    runnable2.run();
                                    hVar.j(null);
                                    return;
                                } catch (Exception e11) {
                                    hVar.k(e11);
                                    return;
                                }
                        }
                    }
                });
                break;
            case 1:
                ExecutorService executorService2 = this.f5739b.f5745a;
                final int i9 = 2;
                final Runnable runnable2 = this.f5740c;
                final o5.c cVar2 = this.f5741d;
                executorService2.execute(new Runnable() { // from class: w4.b
                    @Override // java.lang.Runnable
                    public final void run() throws Exception {
                        switch (i9) {
                            case 0:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e9) {
                                    ((h) cVar2.f4446b).k(e9);
                                    throw e9;
                                }
                            case 1:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e10) {
                                    ((h) cVar2.f4446b).k(e10);
                                    return;
                                }
                            default:
                                Runnable runnable22 = runnable2;
                                h hVar = (h) cVar2.f4446b;
                                try {
                                    runnable22.run();
                                    hVar.j(null);
                                    return;
                                } catch (Exception e11) {
                                    hVar.k(e11);
                                    return;
                                }
                        }
                    }
                });
                break;
            default:
                ExecutorService executorService3 = this.f5739b.f5745a;
                final int i10 = 1;
                final Runnable runnable3 = this.f5740c;
                final o5.c cVar3 = this.f5741d;
                executorService3.execute(new Runnable() { // from class: w4.b
                    @Override // java.lang.Runnable
                    public final void run() throws Exception {
                        switch (i10) {
                            case 0:
                                try {
                                    runnable3.run();
                                    return;
                                } catch (Exception e9) {
                                    ((h) cVar3.f4446b).k(e9);
                                    throw e9;
                                }
                            case 1:
                                try {
                                    runnable3.run();
                                    return;
                                } catch (Exception e10) {
                                    ((h) cVar3.f4446b).k(e10);
                                    return;
                                }
                            default:
                                Runnable runnable22 = runnable3;
                                h hVar = (h) cVar3.f4446b;
                                try {
                                    runnable22.run();
                                    hVar.j(null);
                                    return;
                                } catch (Exception e11) {
                                    hVar.k(e11);
                                    return;
                                }
                        }
                    }
                });
                break;
        }
    }
}
