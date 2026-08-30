package z1;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.HashMap;
import k2.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f6389a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f6390b;

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void a(java.util.HashMap r5, java.lang.String r6, java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 220
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: z1.a.a(java.util.HashMap, java.lang.String, java.lang.String):void");
    }

    public static void b(Activity activity) {
        View viewI;
        int iHashCode = activity.hashCode();
        HashMap map = null;
        if (!v2.a.b(d.class)) {
            try {
                map = d.f6396e;
            } catch (Throwable th) {
                v2.a.a(th, d.class);
            }
        }
        Integer numValueOf = Integer.valueOf(iHashCode);
        Object dVar = map.get(numValueOf);
        if (dVar == null) {
            dVar = new d(activity);
            map.put(numValueOf, dVar);
        }
        d dVar2 = (d) dVar;
        if (v2.a.b(d.class)) {
            return;
        }
        try {
            if (!v2.a.b(dVar2)) {
                try {
                    if (!dVar2.f6400d.getAndSet(true) && (viewI = e.i((Activity) dVar2.f6399c.get())) != null) {
                        ViewTreeObserver viewTreeObserver = viewI.getViewTreeObserver();
                        if (viewTreeObserver.isAlive()) {
                            viewTreeObserver.addOnGlobalFocusChangeListener(dVar2);
                        }
                    }
                } catch (Throwable th2) {
                    v2.a.a(th2, dVar2);
                }
            }
        } catch (Throwable th3) {
            v2.a.a(th3, d.class);
        }
    }
}
