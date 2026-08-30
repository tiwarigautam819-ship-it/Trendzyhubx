package androidx.lifecycle;

import android.os.Bundle;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l0 implements e1.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e1.e f713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Bundle f715c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final r6.g f716d;

    public l0(e1.e eVar, t0 t0Var) {
        d7.g.f("savedStateRegistry", eVar);
        this.f713a = eVar;
        this.f716d = new r6.g(new k0(0, t0Var));
    }

    @Override // e1.d
    public final Bundle a() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f715c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        for (Map.Entry entry : ((m0) this.f716d.getValue()).f717b.entrySet()) {
            String str = (String) entry.getKey();
            Bundle bundleA = ((h0) entry.getValue()).f703e.a();
            if (!d7.g.a(bundleA, Bundle.EMPTY)) {
                bundle.putBundle(str, bundleA);
            }
        }
        this.f714b = false;
        return bundle;
    }

    public final void b() {
        if (this.f714b) {
            return;
        }
        Bundle bundleA = this.f713a.a("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f715c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if (bundleA != null) {
            bundle.putAll(bundleA);
        }
        this.f715c = bundle;
        this.f714b = true;
    }
}
