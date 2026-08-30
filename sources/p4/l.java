package p4;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements f, e, c, d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CountDownLatch f4644a;

    @Override // p4.c
    public void a() {
        this.f4644a.countDown();
    }

    @Override // p4.d
    public void onComplete(i iVar) {
        this.f4644a.countDown();
    }

    @Override // p4.e
    public void onFailure(Exception exc) {
        this.f4644a.countDown();
    }

    @Override // p4.f
    public void onSuccess(Object obj) {
        this.f4644a.countDown();
    }

    public /* synthetic */ l() {
        this.f4644a = new CountDownLatch(1);
    }
}
