package u2;

import a2.c;
import d7.g;
import java.lang.Thread;
import s2.b;
import z7.l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final o3.a f5442b = new o3.a(22);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static a f5443c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Thread.UncaughtExceptionHandler f5444a;

    public a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f5444a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        g.f("t", thread);
        g.f("e", th);
        Throwable th2 = null;
        Throwable cause = th;
        loop0: while (true) {
            if (cause == null || cause == th2) {
                break;
            }
            StackTraceElement[] stackTrace = cause.getStackTrace();
            g.e("t.stackTrace", stackTrace);
            for (StackTraceElement stackTraceElement : stackTrace) {
                g.e("element", stackTraceElement);
                if (android.support.v4.media.session.a.e(stackTraceElement)) {
                    l.g(th);
                    c.c(th, b.f5209d).b();
                    break loop0;
                }
            }
            th2 = cause;
            cause = cause.getCause();
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f5444a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }
}
