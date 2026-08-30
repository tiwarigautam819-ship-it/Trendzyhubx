package v4;

import android.util.Log;
import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements c {
    public static final com.google.firebase.messaging.l h = new com.google.firebase.messaging.l(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f5595a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f5596b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f5597c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashSet f5598d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final j f5599e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicReference f5600f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final o3.a f5601g;

    public e(ArrayList arrayList, ArrayList arrayList2, o3.a aVar) {
        w4.j jVar = w4.j.f5753a;
        this.f5595a = new HashMap();
        this.f5596b = new HashMap();
        this.f5597c = new HashMap();
        this.f5598d = new HashSet();
        this.f5600f = new AtomicReference();
        j jVar2 = new j();
        this.f5599e = jVar2;
        this.f5601g = aVar;
        ArrayList arrayList3 = new ArrayList();
        int i6 = 0;
        arrayList3.add(b.c(jVar2, j.class, d5.d.class, d5.c.class));
        arrayList3.add(b.c(this, e.class, new Class[0]));
        int size = arrayList2.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList2.get(i9);
            i9++;
            b bVar = (b) obj;
            if (bVar != null) {
                arrayList3.add(bVar);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        int size2 = arrayList.size();
        int i10 = 0;
        while (i10 < size2) {
            Object obj2 = arrayList.get(i10);
            i10++;
            arrayList4.add(obj2);
        }
        ArrayList arrayList5 = new ArrayList();
        synchronized (this) {
            Iterator it = arrayList4.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((g5.a) it.next()).get();
                    if (componentRegistrar != null) {
                        arrayList3.addAll(this.f5601g.n(componentRegistrar));
                        it.remove();
                    }
                } catch (k e9) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e9);
                }
            }
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                Object[] array = ((b) it2.next()).f5589b.toArray();
                int length = array.length;
                int i11 = 0;
                while (true) {
                    if (i11 < length) {
                        Object obj3 = array[i11];
                        if (obj3.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                            if (this.f5598d.contains(obj3.toString())) {
                                it2.remove();
                                break;
                            }
                            this.f5598d.add(obj3.toString());
                        }
                        i11++;
                    }
                }
            }
            if (this.f5595a.isEmpty()) {
                z7.d.c(arrayList3);
            } else {
                ArrayList arrayList6 = new ArrayList(this.f5595a.keySet());
                arrayList6.addAll(arrayList3);
                z7.d.c(arrayList6);
            }
            int size3 = arrayList3.size();
            int i12 = 0;
            while (i12 < size3) {
                Object obj4 = arrayList3.get(i12);
                i12++;
                b bVar2 = (b) obj4;
                this.f5595a.put(bVar2, new l(new e5.b(this, 2, bVar2)));
            }
            arrayList5.addAll(h(arrayList3));
            arrayList5.addAll(i());
            e();
        }
        int size4 = arrayList5.size();
        while (i6 < size4) {
            Object obj5 = arrayList5.get(i6);
            i6++;
            ((Runnable) obj5).run();
        }
        Boolean bool = (Boolean) this.f5600f.get();
        if (bool != null) {
            b(this.f5595a, bool.booleanValue());
        }
    }

    @Override // v4.c
    public final Object a(Class cls) {
        return d(p.a(cls));
    }

    public final void b(HashMap map, boolean z5) {
        ArrayDeque arrayDeque;
        for (Map.Entry entry : map.entrySet()) {
            b bVar = (b) entry.getKey();
            g5.a aVar = (g5.a) entry.getValue();
            int i6 = bVar.f5591d;
            if (i6 == 1 || (i6 == 2 && z5)) {
                aVar.get();
            }
        }
        j jVar = this.f5599e;
        synchronized (jVar) {
            try {
                arrayDeque = jVar.f5611b;
                if (arrayDeque != null) {
                    jVar.f5611b = null;
                } else {
                    arrayDeque = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (arrayDeque != null) {
            Iterator it = arrayDeque.iterator();
            if (it.hasNext()) {
                it.next().getClass();
                throw new ClassCastException();
            }
        }
    }

    @Override // v4.c
    public final synchronized g5.a c(p pVar) {
        z7.l.c("Null interface requested.", pVar);
        return (g5.a) this.f5596b.get(pVar);
    }

    @Override // v4.c
    public final Object d(p pVar) {
        g5.a aVarC = c(pVar);
        if (aVarC == null) {
            return null;
        }
        return aVarC.get();
    }

    public final void e() {
        for (b bVar : this.f5595a.keySet()) {
            for (h hVar : bVar.f5590c) {
                if (hVar.f5608b == 2 && !this.f5597c.containsKey(hVar.f5607a)) {
                    HashMap map = this.f5597c;
                    p pVar = hVar.f5607a;
                    Set set = Collections.EMPTY_SET;
                    m mVar = new m();
                    mVar.f5617b = null;
                    mVar.f5616a = Collections.newSetFromMap(new ConcurrentHashMap());
                    mVar.f5616a.addAll(set);
                    map.put(pVar, mVar);
                } else if (this.f5596b.containsKey(hVar.f5607a)) {
                    continue;
                } else {
                    int i6 = hVar.f5608b;
                    if (i6 == 1) {
                        throw new i("Unsatisfied dependency for component " + bVar + ": " + hVar.f5607a);
                    }
                    if (i6 != 2) {
                        HashMap map2 = this.f5596b;
                        p pVar2 = hVar.f5607a;
                        com.getcapacitor.n nVar = n.f5618c;
                        com.google.firebase.messaging.l lVar = n.f5619d;
                        n nVar2 = new n();
                        nVar2.f5620a = nVar;
                        nVar2.f5621b = lVar;
                        map2.put(pVar2, nVar2);
                    }
                }
            }
        }
    }

    @Override // v4.c
    public final g5.a f(Class cls) {
        return c(p.a(cls));
    }

    @Override // v4.c
    public final Set g(p pVar) {
        g5.a aVar;
        synchronized (this) {
            aVar = (m) this.f5597c.get(pVar);
            if (aVar == null) {
                aVar = h;
            }
        }
        return (Set) aVar.get();
    }

    public final ArrayList h(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            b bVar = (b) obj;
            if (bVar.f5592e == 0) {
                g5.a aVar = (g5.a) this.f5595a.get(bVar);
                for (p pVar : bVar.f5589b) {
                    HashMap map = this.f5596b;
                    if (map.containsKey(pVar)) {
                        arrayList2.add(new a2.i((n) ((g5.a) map.get(pVar)), 17, aVar));
                    } else {
                        map.put(pVar, aVar);
                    }
                }
            }
        }
        return arrayList2;
    }

    public final ArrayList i() {
        HashMap map = this.f5597c;
        ArrayList arrayList = new ArrayList();
        HashMap map2 = new HashMap();
        for (Map.Entry entry : this.f5595a.entrySet()) {
            b bVar = (b) entry.getKey();
            if (bVar.f5592e != 0) {
                g5.a aVar = (g5.a) entry.getValue();
                for (p pVar : bVar.f5589b) {
                    if (!map2.containsKey(pVar)) {
                        map2.put(pVar, new HashSet());
                    }
                    ((Set) map2.get(pVar)).add(aVar);
                }
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            if (map.containsKey(entry2.getKey())) {
                m mVar = (m) map.get(entry2.getKey());
                Iterator it = ((Set) entry2.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new a2.i(mVar, 18, (g5.a) it.next()));
                }
            } else {
                p pVar2 = (p) entry2.getKey();
                Set set = (Set) ((Collection) entry2.getValue());
                m mVar2 = new m();
                mVar2.f5617b = null;
                mVar2.f5616a = Collections.newSetFromMap(new ConcurrentHashMap());
                mVar2.f5616a.addAll(set);
                map.put(pVar2, mVar2);
            }
        }
        return arrayList;
    }
}
