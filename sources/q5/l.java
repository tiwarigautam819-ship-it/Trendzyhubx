package q5;

import androidx.fragment.app.a0;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ThreadLocal f4867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f4868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p4.p f4869c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final t5.c f4870d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f4871e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f4872f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f4873g;

    /* JADX WARN: Illegal instructions before constructor call */
    public l() {
        s5.g gVar = s5.g.f5238c;
        Map map = Collections.EMPTY_MAP;
        List list = Collections.EMPTY_LIST;
        this(gVar, h.f4861a, map, false, true, true, 1, list, w.f4888a, w.f4889b, list);
    }

    public static void a(double d6) {
        if (Double.isNaN(d6) || Double.isInfinite(d6)) {
            throw new IllegalArgumentException(d6 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public final x b(w5.a aVar) {
        boolean z5;
        ConcurrentHashMap concurrentHashMap = this.f4868b;
        x xVar = (x) concurrentHashMap.get(aVar);
        if (xVar != null) {
            return xVar;
        }
        ThreadLocal threadLocal = this.f4867a;
        Map map = (Map) threadLocal.get();
        if (map == null) {
            map = new HashMap();
            threadLocal.set(map);
            z5 = true;
        } else {
            x xVar2 = (x) map.get(aVar);
            if (xVar2 != null) {
                return xVar2;
            }
            z5 = false;
        }
        try {
            k kVar = new k();
            x xVarA = null;
            kVar.f4866a = null;
            map.put(aVar, kVar);
            Iterator it = this.f4871e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                xVarA = ((y) it.next()).a(this, aVar);
                if (xVarA != null) {
                    if (kVar.f4866a != null) {
                        throw new AssertionError("Delegate is already set");
                    }
                    kVar.f4866a = xVarA;
                    map.put(aVar, xVarA);
                }
            }
            if (z5) {
                threadLocal.remove();
            }
            if (xVarA != null) {
                if (z5) {
                    concurrentHashMap.putAll(map);
                }
                return xVarA;
            }
            throw new IllegalArgumentException("GSON (2.10.1) cannot handle " + aVar);
        } catch (Throwable th) {
            if (z5) {
                threadLocal.remove();
            }
            throw th;
        }
    }

    public final x5.a c(Writer writer) {
        x5.a aVar = new x5.a(writer);
        aVar.f6024f = this.f4873g;
        aVar.f6023e = false;
        aVar.h = this.f4872f;
        return aVar;
    }

    public final String d(Object obj) {
        if (obj == null) {
            StringWriter stringWriter = new StringWriter();
            try {
                f(c(stringWriter));
                return stringWriter.toString();
            } catch (IOException e9) {
                throw new a0(e9);
            }
        }
        Class cls = obj.getClass();
        StringWriter stringWriter2 = new StringWriter();
        try {
            e(obj, cls, c(stringWriter2));
            return stringWriter2.toString();
        } catch (IOException e10) {
            throw new a0(e10);
        }
    }

    public final void e(Object obj, Class cls, x5.a aVar) {
        x xVarB = b(new w5.a(cls));
        boolean z5 = aVar.f6023e;
        aVar.f6023e = true;
        boolean z8 = aVar.f6024f;
        aVar.f6024f = this.f4873g;
        boolean z9 = aVar.h;
        aVar.h = this.f4872f;
        try {
            try {
                xVarB.a(aVar, obj);
            } catch (IOException e9) {
                throw new a0(e9);
            } catch (AssertionError e10) {
                throw new AssertionError("AssertionError (GSON 2.10.1): " + e10.getMessage(), e10);
            }
        } finally {
            aVar.f6023e = z5;
            aVar.f6024f = z8;
            aVar.h = z9;
        }
    }

    public final void f(x5.a aVar) {
        p pVar = p.f4887a;
        boolean z5 = aVar.f6023e;
        aVar.f6023e = true;
        boolean z8 = aVar.f6024f;
        aVar.f6024f = this.f4873g;
        boolean z9 = aVar.h;
        aVar.h = this.f4872f;
        try {
            try {
                t5.p pVar2 = t5.s.f5384a;
                t5.h.b(aVar, pVar);
                aVar.f6023e = z5;
                aVar.f6024f = z8;
                aVar.h = z9;
            } catch (IOException e9) {
                throw new a0(e9);
            } catch (AssertionError e10) {
                throw new AssertionError("AssertionError (GSON 2.10.1): " + e10.getMessage(), e10);
            }
        } catch (Throwable th) {
            aVar.f6023e = z5;
            aVar.f6024f = z8;
            aVar.h = z9;
            throw th;
        }
    }

    public final String toString() {
        return "{serializeNulls:" + this.f4872f + ",factories:" + this.f4871e + ",instanceCreators:" + this.f4869c + "}";
    }

    public l(s5.g gVar, a aVar, Map map, boolean z5, boolean z8, boolean z9, int i6, List list, s sVar, t tVar, List list2) {
        t5.a aVar2;
        x iVar;
        t5.g gVar2;
        this.f4867a = new ThreadLocal();
        this.f4868b = new ConcurrentHashMap();
        p4.p pVar = new p4.p(map, z9, list2);
        this.f4869c = pVar;
        this.f4872f = z5;
        this.f4873g = z8;
        ArrayList arrayList = new ArrayList();
        arrayList.add(t5.s.f5408z);
        if (sVar == w.f4888a) {
            aVar2 = t5.i.f5355b;
        } else {
            aVar2 = new t5.a(sVar);
        }
        arrayList.add(aVar2);
        arrayList.add(gVar);
        arrayList.addAll(list);
        arrayList.add(t5.s.f5398p);
        arrayList.add(t5.s.f5390g);
        arrayList.add(t5.s.f5387d);
        arrayList.add(t5.s.f5388e);
        arrayList.add(t5.s.f5389f);
        if (i6 == 1) {
            iVar = t5.s.f5393k;
        } else {
            iVar = new i(2);
        }
        arrayList.add(new t5.q(Long.TYPE, Long.class, iVar));
        arrayList.add(new t5.q(Double.TYPE, Double.class, new i(0)));
        arrayList.add(new t5.q(Float.TYPE, Float.class, new i(1)));
        if (tVar == w.f4889b) {
            gVar2 = t5.h.f5353b;
        } else {
            gVar2 = new t5.g(new t5.h(0), 0);
        }
        arrayList.add(gVar2);
        arrayList.add(t5.s.h);
        arrayList.add(t5.s.f5391i);
        arrayList.add(new t5.p(AtomicLong.class, new j(new j(iVar, 0), 2), 0));
        int i9 = 0;
        arrayList.add(new t5.p(AtomicLongArray.class, new j(new j(iVar, 1), 2), i9));
        arrayList.add(t5.s.f5392j);
        arrayList.add(t5.s.f5394l);
        arrayList.add(t5.s.f5399q);
        arrayList.add(t5.s.f5400r);
        arrayList.add(new t5.p(BigDecimal.class, t5.s.f5395m, i9));
        arrayList.add(new t5.p(BigInteger.class, t5.s.f5396n, i9));
        arrayList.add(new t5.p(s5.i.class, t5.s.f5397o, i9));
        arrayList.add(t5.s.f5401s);
        arrayList.add(t5.s.f5402t);
        arrayList.add(t5.s.f5404v);
        arrayList.add(t5.s.f5405w);
        arrayList.add(t5.s.f5407y);
        arrayList.add(t5.s.f5403u);
        arrayList.add(t5.s.f5385b);
        arrayList.add(t5.d.f5346c);
        arrayList.add(t5.s.f5406x);
        if (v5.c.f5629a) {
            arrayList.add(v5.c.f5633e);
            arrayList.add(v5.c.f5632d);
            arrayList.add(v5.c.f5634f);
        }
        arrayList.add(t5.b.f5341c);
        arrayList.add(t5.s.f5384a);
        arrayList.add(new t5.c(pVar, 0));
        arrayList.add(new t5.c(pVar, 2));
        t5.c cVar = new t5.c(pVar, 1);
        this.f4870d = cVar;
        arrayList.add(cVar);
        arrayList.add(t5.s.A);
        arrayList.add(new t5.n(pVar, aVar, gVar, cVar, list2));
        this.f4871e = Collections.unmodifiableList(arrayList);
    }
}
