package w4;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j f5753a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Handler f5754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ j[] f5755c;

    static {
        j jVar = new j("INSTANCE", 0);
        f5753a = jVar;
        f5755c = new j[]{jVar};
        f5754b = new Handler(Looper.getMainLooper());
    }

    public static j valueOf(String str) {
        return (j) Enum.valueOf(j.class, str);
    }

    public static j[] values() {
        return (j[]) f5755c.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        f5754b.post(runnable);
    }
}
