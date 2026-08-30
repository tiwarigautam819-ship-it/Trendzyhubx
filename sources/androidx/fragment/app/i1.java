package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i1 implements androidx.lifecycle.i, e1.g, androidx.lifecycle.t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c0 f552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.lifecycle.s0 f553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final u f554c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public androidx.lifecycle.v f555d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public e1.f f556e = null;

    public i1(c0 c0Var, androidx.lifecycle.s0 s0Var, u uVar) {
        this.f552a = c0Var;
        this.f553b = s0Var;
        this.f554c = uVar;
    }

    public final void a(androidx.lifecycle.m mVar) {
        this.f555d.e(mVar);
    }

    public final void b() {
        if (this.f555d == null) {
            this.f555d = new androidx.lifecycle.v(this);
            e1.f fVar = new e1.f(this);
            this.f556e = fVar;
            fVar.a();
            this.f554c.run();
        }
    }

    @Override // androidx.lifecycle.i
    public final v0.b getDefaultViewModelCreationExtras() {
        Application application;
        c0 c0Var = this.f552a;
        Context applicationContext = c0Var.F().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        v0.c cVar = new v0.c(0);
        LinkedHashMap linkedHashMap = cVar.f5530a;
        if (application != null) {
            linkedHashMap.put(androidx.lifecycle.q0.f734e, application);
        }
        linkedHashMap.put(androidx.lifecycle.j0.f707a, c0Var);
        linkedHashMap.put(androidx.lifecycle.j0.f708b, this);
        Bundle bundle = c0Var.f470f;
        if (bundle != null) {
            linkedHashMap.put(androidx.lifecycle.j0.f709c, bundle);
        }
        return cVar;
    }

    @Override // androidx.lifecycle.t
    public final androidx.lifecycle.o getLifecycle() {
        b();
        return this.f555d;
    }

    @Override // e1.g
    public final e1.e getSavedStateRegistry() {
        b();
        return this.f556e.f2314b;
    }

    @Override // androidx.lifecycle.t0
    public final androidx.lifecycle.s0 getViewModelStore() {
        b();
        return this.f553b;
    }
}
