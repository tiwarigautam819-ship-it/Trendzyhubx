package t4;

import com.google.firebase.messaging.y;
import java.util.concurrent.Executor;
import l7.e0;
import v4.p;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h implements v4.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h f5328b = new h(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h f5329c = new h(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final h f5330d = new h(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final h f5331e = new h(3);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5332a;

    public /* synthetic */ h(int i6) {
        this.f5332a = i6;
    }

    @Override // v4.d
    public final Object create(v4.c cVar) {
        switch (this.f5332a) {
            case 0:
                Object objD = ((y) cVar).d(new p(u4.a.class, Executor.class));
                d7.g.e("c.get(Qualified.qualifie…a, Executor::class.java))", objD);
                return new e0((Executor) objD);
            case 1:
                Object objD2 = ((y) cVar).d(new p(u4.c.class, Executor.class));
                d7.g.e("c.get(Qualified.qualifie…a, Executor::class.java))", objD2);
                return new e0((Executor) objD2);
            case 2:
                Object objD3 = ((y) cVar).d(new p(u4.b.class, Executor.class));
                d7.g.e("c.get(Qualified.qualifie…a, Executor::class.java))", objD3);
                return new e0((Executor) objD3);
            default:
                Object objD4 = ((y) cVar).d(new p(u4.d.class, Executor.class));
                d7.g.e("c.get(Qualified.qualifie…a, Executor::class.java))", objD4);
                return new e0((Executor) objD4);
        }
    }
}
