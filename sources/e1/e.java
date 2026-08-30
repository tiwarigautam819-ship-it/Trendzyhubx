package e1;

import android.os.Bundle;
import androidx.lifecycle.j;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f2308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Bundle f2309c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2310d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f2311e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o.f f2307a = new o.f();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2312f = true;

    public final Bundle a(String str) {
        if (!this.f2310d) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = this.f2309c;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        Bundle bundle3 = this.f2309c;
        if (bundle3 != null) {
            bundle3.remove(str);
        }
        Bundle bundle4 = this.f2309c;
        if (bundle4 != null && !bundle4.isEmpty()) {
            return bundle2;
        }
        this.f2309c = null;
        return bundle2;
    }

    public final d b() {
        String str;
        d dVar;
        Iterator it = this.f2307a.iterator();
        do {
            o.b bVar = (o.b) it;
            if (!bVar.hasNext()) {
                return null;
            }
            Map.Entry entry = (Map.Entry) bVar.next();
            d7.g.e("components", entry);
            str = (String) entry.getKey();
            dVar = (d) entry.getValue();
        } while (!d7.g.a(str, "androidx.lifecycle.internal.SavedStateHandlesProvider"));
        return dVar;
    }

    public final void c(String str, d dVar) {
        Object obj;
        d7.g.f("provider", dVar);
        o.f fVar = this.f2307a;
        o.c cVarA = fVar.a(str);
        if (cVarA != null) {
            obj = cVarA.f4384b;
        } else {
            o.c cVar = new o.c(str, dVar);
            fVar.f4393d++;
            o.c cVar2 = fVar.f4391b;
            if (cVar2 == null) {
                fVar.f4390a = cVar;
                fVar.f4391b = cVar;
            } else {
                cVar2.f4385c = cVar;
                cVar.f4386d = cVar2;
                fVar.f4391b = cVar;
            }
            obj = null;
        }
        if (((d) obj) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public final void d() {
        if (!this.f2312f) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        a aVar = this.f2311e;
        if (aVar == null) {
            aVar = new a(this);
        }
        this.f2311e = aVar;
        try {
            j.class.getDeclaredConstructor(null);
            a aVar2 = this.f2311e;
            if (aVar2 != null) {
                ((LinkedHashSet) aVar2.f2304b).add(j.class.getName());
            }
        } catch (NoSuchMethodException e9) {
            throw new IllegalArgumentException("Class " + j.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e9);
        }
    }
}
