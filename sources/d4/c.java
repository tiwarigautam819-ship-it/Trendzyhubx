package d4;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final c f2278b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b f2279a;

    static {
        c cVar = new c();
        cVar.f2279a = null;
        f2278b = cVar;
    }

    public static b a(Context context) {
        b bVar;
        c cVar = f2278b;
        synchronized (cVar) {
            try {
                if (cVar.f2279a == null) {
                    if (context.getApplicationContext() != null) {
                        context = context.getApplicationContext();
                    }
                    cVar.f2279a = new b(context, 0);
                }
                bVar = cVar.f2279a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }
}
