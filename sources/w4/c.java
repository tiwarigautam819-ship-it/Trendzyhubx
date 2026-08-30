package w4;

import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5732a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f5733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Runnable f5734c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f5735d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f5736e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TimeUnit f5737f;

    public /* synthetic */ c(f fVar, Runnable runnable, long j3, long j8, TimeUnit timeUnit, int i6) {
        this.f5732a = i6;
        this.f5733b = fVar;
        this.f5734c = runnable;
        this.f5735d = j3;
        this.f5736e = j8;
        this.f5737f = timeUnit;
    }

    @Override // w4.g
    public final ScheduledFuture b(o5.c cVar) {
        switch (this.f5732a) {
            case 0:
                f fVar = this.f5733b;
                return fVar.f5746b.scheduleAtFixedRate(new d(fVar, this.f5734c, cVar, 0), this.f5735d, this.f5736e, this.f5737f);
            default:
                f fVar2 = this.f5733b;
                return fVar2.f5746b.scheduleWithFixedDelay(new d(fVar2, this.f5734c, cVar, 2), this.f5735d, this.f5736e, this.f5737f);
        }
    }
}
