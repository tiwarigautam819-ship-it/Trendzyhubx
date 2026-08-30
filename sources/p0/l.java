package p0;

import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l extends x2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x2.a f4595a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ThreadPoolExecutor f4596b;

    public l(x2.a aVar, ThreadPoolExecutor threadPoolExecutor) {
        this.f4595a = aVar;
        this.f4596b = threadPoolExecutor;
    }

    @Override // x2.a
    public final void k(Throwable th) {
        ThreadPoolExecutor threadPoolExecutor = this.f4596b;
        try {
            this.f4595a.k(th);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }

    @Override // x2.a
    public final void l(com.google.firebase.messaging.y yVar) {
        ThreadPoolExecutor threadPoolExecutor = this.f4596b;
        try {
            this.f4595a.l(yVar);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }
}
