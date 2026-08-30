package s7;

import d7.g;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f5285a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f5286b;

    public /* synthetic */ a(String str, boolean z5) {
        this.f5285a = str;
        this.f5286b = z5;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f5285a;
        g.f("$name", str);
        Thread thread = new Thread(runnable, str);
        thread.setDaemon(this.f5286b);
        return thread;
    }
}
