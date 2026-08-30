package c4;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ThreadFactory f1042b = Executors.defaultThreadFactory();

    public a(String str) {
        this.f1041a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.f1042b.newThread(new b(runnable, 0));
        threadNewThread.setName(this.f1041a);
        return threadNewThread;
    }
}
