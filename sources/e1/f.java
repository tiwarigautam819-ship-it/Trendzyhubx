package e1;

import android.os.Bundle;
import androidx.lifecycle.n;
import androidx.lifecycle.o;
import androidx.lifecycle.v;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g f2313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f2314b = new e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2315c;

    public f(g gVar) {
        this.f2313a = gVar;
    }

    public final void a() {
        g gVar = this.f2313a;
        o lifecycle = gVar.getLifecycle();
        if (((v) lifecycle).f741c != n.f719b) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        lifecycle.a(new b(0, gVar));
        e eVar = this.f2314b;
        eVar.getClass();
        if (eVar.f2308b) {
            throw new IllegalStateException("SavedStateRegistry was already attached.");
        }
        lifecycle.a(new b.e(2, eVar));
        eVar.f2308b = true;
        this.f2315c = true;
    }

    public final void b(Bundle bundle) {
        if (!this.f2315c) {
            a();
        }
        v vVar = (v) this.f2313a.getLifecycle();
        if (vVar.f741c.compareTo(n.f721d) >= 0) {
            throw new IllegalStateException(("performRestore cannot be called when owner is " + vVar.f741c).toString());
        }
        e eVar = this.f2314b;
        if (!eVar.f2308b) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).");
        }
        if (eVar.f2310d) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        eVar.f2309c = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        eVar.f2310d = true;
    }

    public final void c(Bundle bundle) {
        e eVar = this.f2314b;
        eVar.getClass();
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = eVar.f2309c;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        o.f fVar = eVar.f2307a;
        fVar.getClass();
        o.d dVar = new o.d(fVar);
        fVar.f4392c.put(dVar, Boolean.FALSE);
        while (dVar.hasNext()) {
            Map.Entry entry = (Map.Entry) dVar.next();
            bundle2.putBundle((String) entry.getKey(), ((d) entry.getValue()).a());
        }
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
