package d;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.lifecycle.m;
import androidx.lifecycle.n;
import androidx.lifecycle.o;
import androidx.lifecycle.r;
import androidx.lifecycle.t;
import androidx.lifecycle.v;
import com.getcapacitor.PluginMethod;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f2204a = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f2205b = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f2206c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f2207d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient LinkedHashMap f2208e = new LinkedHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedHashMap f2209f = new LinkedHashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Bundle f2210g = new Bundle();

    public final boolean a(int i6, int i9, Intent intent) {
        String str = (String) this.f2204a.get(Integer.valueOf(i6));
        if (str == null) {
            return false;
        }
        e eVar = (e) this.f2208e.get(str);
        if ((eVar != null ? eVar.f2196a : null) != null) {
            ArrayList arrayList = this.f2207d;
            if (arrayList.contains(str)) {
                eVar.f2196a.e(eVar.f2197b.c(intent, i9));
                arrayList.remove(str);
                return true;
            }
        }
        this.f2209f.remove(str);
        this.f2210g.putParcelable(str, new a(intent, i9));
        return true;
    }

    public abstract void b(int i6, e.a aVar, Object obj);

    public final g c(final String str, t tVar, final e.a aVar, final b bVar) {
        d7.g.f("key", str);
        d7.g.f("lifecycleOwner", tVar);
        d7.g.f("contract", aVar);
        d7.g.f(PluginMethod.RETURN_CALLBACK, bVar);
        o lifecycle = tVar.getLifecycle();
        v vVar = (v) lifecycle;
        if (vVar.f741c.compareTo(n.f721d) >= 0) {
            throw new IllegalStateException(("LifecycleOwner " + tVar + " is attempting to register while current state is " + vVar.f741c + ". LifecycleOwners must call register before they are STARTED.").toString());
        }
        e(str);
        LinkedHashMap linkedHashMap = this.f2206c;
        f fVar = (f) linkedHashMap.get(str);
        if (fVar == null) {
            fVar = new f(lifecycle);
        }
        r rVar = new r() { // from class: d.d
            @Override // androidx.lifecycle.r
            public final void a(t tVar2, m mVar) {
                h hVar = this.f2192a;
                Bundle bundle = hVar.f2210g;
                LinkedHashMap linkedHashMap2 = hVar.f2208e;
                LinkedHashMap linkedHashMap3 = hVar.f2209f;
                String str2 = str;
                d7.g.f("$key", str2);
                b bVar2 = bVar;
                d7.g.f("$callback", bVar2);
                e.a aVar2 = aVar;
                d7.g.f("$contract", aVar2);
                if (m.ON_START != mVar) {
                    if (m.ON_STOP == mVar) {
                        linkedHashMap2.remove(str2);
                        return;
                    } else {
                        if (m.ON_DESTROY == mVar) {
                            hVar.f(str2);
                            return;
                        }
                        return;
                    }
                }
                linkedHashMap2.put(str2, new e(aVar2, bVar2));
                if (linkedHashMap3.containsKey(str2)) {
                    Object obj = linkedHashMap3.get(str2);
                    linkedHashMap3.remove(str2);
                    bVar2.e(obj);
                }
                a aVar3 = (a) t4.b.h(bundle, str2);
                if (aVar3 != null) {
                    bundle.remove(str2);
                    bVar2.e(aVar2.c(aVar3.f2191b, aVar3.f2190a));
                }
            }
        };
        fVar.f2198a.a(rVar);
        fVar.f2199b.add(rVar);
        linkedHashMap.put(str, fVar);
        return new g(this, str, aVar, 0);
    }

    public final g d(String str, e.a aVar, b bVar) {
        d7.g.f("key", str);
        e(str);
        this.f2208e.put(str, new e(aVar, bVar));
        LinkedHashMap linkedHashMap = this.f2209f;
        if (linkedHashMap.containsKey(str)) {
            Object obj = linkedHashMap.get(str);
            linkedHashMap.remove(str);
            bVar.e(obj);
        }
        Bundle bundle = this.f2210g;
        a aVar2 = (a) t4.b.h(bundle, str);
        if (aVar2 != null) {
            bundle.remove(str);
            bVar.e(aVar.c(aVar2.f2191b, aVar2.f2190a));
        }
        return new g(this, str, aVar, 1);
    }

    public final void e(String str) {
        LinkedHashMap linkedHashMap = this.f2205b;
        if (((Integer) linkedHashMap.get(str)) != null) {
            return;
        }
        for (Number number : new j7.a(new j7.d(1, new j7.h(1)))) {
            Integer numValueOf = Integer.valueOf(number.intValue());
            LinkedHashMap linkedHashMap2 = this.f2204a;
            if (!linkedHashMap2.containsKey(numValueOf)) {
                int iIntValue = number.intValue();
                linkedHashMap2.put(Integer.valueOf(iIntValue), str);
                linkedHashMap.put(str, Integer.valueOf(iIntValue));
                return;
            }
        }
        throw new NoSuchElementException("Sequence contains no element matching the predicate.");
    }

    public final void f(String str) {
        Integer num;
        d7.g.f("key", str);
        if (!this.f2207d.contains(str) && (num = (Integer) this.f2205b.remove(str)) != null) {
            this.f2204a.remove(num);
        }
        this.f2208e.remove(str);
        LinkedHashMap linkedHashMap = this.f2209f;
        if (linkedHashMap.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + linkedHashMap.get(str));
            linkedHashMap.remove(str);
        }
        Bundle bundle = this.f2210g;
        if (bundle.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + ((a) t4.b.h(bundle, str)));
            bundle.remove(str);
        }
        LinkedHashMap linkedHashMap2 = this.f2206c;
        f fVar = (f) linkedHashMap2.get(str);
        if (fVar != null) {
            ArrayList arrayList = fVar.f2199b;
            int size = arrayList.size();
            int i6 = 0;
            while (i6 < size) {
                Object obj = arrayList.get(i6);
                i6++;
                fVar.f2198a.b((r) obj);
            }
            arrayList.clear();
            linkedHashMap2.remove(str);
        }
    }
}
