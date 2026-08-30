package b2;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c f925f = new c();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static i f926g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f927a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f929c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public HashSet f930d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f931e;

    public i() {
        Set setNewSetFromMap = Collections.newSetFromMap(new WeakHashMap());
        d7.g.e("newSetFromMap(WeakHashMap())", setNewSetFromMap);
        this.f928b = setNewSetFromMap;
        this.f929c = new LinkedHashSet();
        this.f930d = new HashSet();
        this.f931e = new HashMap();
    }

    public final void a(Activity activity) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
                throw new x1.l("Can't add activity to CodelessMatcher on non-UI thread");
            }
            this.f928b.add(activity);
            this.f930d.clear();
            HashSet hashSet = (HashSet) this.f931e.get(Integer.valueOf(activity.hashCode()));
            if (hashSet != null) {
                this.f930d = hashSet;
            }
            if (v2.a.b(this)) {
                return;
            }
            try {
                if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                    b();
                } else {
                    this.f927a.post(new a2.g(5, this));
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
            }
        } catch (Throwable th2) {
            v2.a.a(th2, this);
        }
    }

    public final void b() {
        if (v2.a.b(this)) {
            return;
        }
        try {
            for (Activity activity : this.f928b) {
                if (activity != null) {
                    this.f929c.add(new h(k2.e.i(activity), this.f927a, this.f930d, activity.getClass().getSimpleName()));
                }
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final void c(Activity activity) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
                throw new x1.l("Can't remove activity from CodelessMatcher on non-UI thread");
            }
            this.f928b.remove(activity);
            this.f929c.clear();
            HashMap map = this.f931e;
            Integer numValueOf = Integer.valueOf(activity.hashCode());
            Object objClone = this.f930d.clone();
            d7.g.d("null cannot be cast to non-null type java.util.HashSet<kotlin.String>{ kotlin.collections.TypeAliasesKt.HashSet<kotlin.String> }", objClone);
            map.put(numValueOf, (HashSet) objClone);
            this.f930d.clear();
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
