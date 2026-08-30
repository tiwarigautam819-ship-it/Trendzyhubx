package j2;

import android.os.Bundle;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f3343b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f3342a = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static HashSet f3344c = new HashSet();

    public static final void a(Bundle bundle) {
        if (v2.a.b(a.class)) {
            return;
        }
        try {
            if (f3343b && bundle != null) {
                Iterator it = f3344c.iterator();
                while (it.hasNext()) {
                    bundle.remove((String) it.next());
                }
            }
        } catch (Throwable th) {
            v2.a.a(th, a.class);
        }
    }
}
