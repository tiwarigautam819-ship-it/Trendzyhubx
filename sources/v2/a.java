package v2;

import a2.c;
import d7.g;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import s2.b;
import x1.j0;
import x1.r;
import z7.l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set f5531a = Collections.newSetFromMap(new WeakHashMap());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f5532b;

    public static final void a(Throwable th, Object obj) {
        g.f("o", obj);
        if (f5532b) {
            f5531a.add(obj);
            r rVar = r.f5918a;
            if (j0.c()) {
                l.g(th);
                c.c(th, b.f5210e).b();
            }
        }
    }

    public static final boolean b(Object obj) {
        g.f("o", obj);
        return f5531a.contains(obj);
    }
}
