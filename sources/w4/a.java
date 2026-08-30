package w4;

import android.os.StrictMode;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements ThreadFactory {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ThreadFactory f5724e = Executors.defaultThreadFactory();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicLong f5725a = new AtomicLong();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5727c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final StrictMode.ThreadPolicy f5728d;

    public a(String str, int i6, StrictMode.ThreadPolicy threadPolicy) {
        this.f5726b = str;
        this.f5727c = i6;
        this.f5728d = threadPolicy;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = f5724e.newThread(new a2.i(this, 19, runnable));
        Locale locale = Locale.ROOT;
        threadNewThread.setName(this.f5726b + " Thread #" + this.f5725a.getAndIncrement());
        return threadNewThread;
    }
}
