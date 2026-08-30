package u3;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ h f5462b = new h(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ h f5463c = new h(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5464a;

    public /* synthetic */ h(int i6) {
        this.f5464a = i6;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f5464a) {
            case 0:
                runnable.run();
                break;
            default:
                runnable.run();
                break;
        }
    }
}
