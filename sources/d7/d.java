package d7;

import c7.p;
import c7.q;
import c7.r;
import c7.s;
import c7.t;
import c7.u;
import c7.v;
import c7.w;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements i7.b, c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map f2289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashMap f2290c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final LinkedHashMap f2291d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f2292a;

    static {
        int i6 = 0;
        List listK = s6.h.k(c7.a.class, c7.l.class, p.class, q.class, r.class, s.class, t.class, u.class, v.class, w.class, c7.b.class, c7.c.class, c7.d.class, c7.e.class, c7.f.class, c7.g.class, c7.h.class, c7.i.class, c7.j.class, c7.k.class, c7.m.class, c7.n.class, c7.o.class);
        ArrayList arrayList = new ArrayList(s6.i.n(listK));
        for (Object obj : listK) {
            int i9 = i6 + 1;
            if (i6 < 0) {
                throw new ArithmeticException("Index overflow has happened.");
            }
            arrayList.add(new r6.d((Class) obj, Integer.valueOf(i6)));
            i6 = i9;
        }
        f2289b = s6.r.w(arrayList);
        HashMap map = new HashMap();
        map.put("boolean", "kotlin.Boolean");
        map.put("char", "kotlin.Char");
        map.put("byte", "kotlin.Byte");
        map.put("short", "kotlin.Short");
        map.put("int", "kotlin.Int");
        map.put("float", "kotlin.Float");
        map.put("long", "kotlin.Long");
        map.put("double", "kotlin.Double");
        HashMap map2 = new HashMap();
        map2.put("java.lang.Boolean", "kotlin.Boolean");
        map2.put("java.lang.Character", "kotlin.Char");
        map2.put("java.lang.Byte", "kotlin.Byte");
        map2.put("java.lang.Short", "kotlin.Short");
        map2.put("java.lang.Integer", "kotlin.Int");
        map2.put("java.lang.Float", "kotlin.Float");
        map2.put("java.lang.Long", "kotlin.Long");
        map2.put("java.lang.Double", "kotlin.Double");
        HashMap map3 = new HashMap();
        map3.put("java.lang.Object", "kotlin.Any");
        map3.put("java.lang.String", "kotlin.String");
        map3.put("java.lang.CharSequence", "kotlin.CharSequence");
        map3.put("java.lang.Throwable", "kotlin.Throwable");
        map3.put("java.lang.Cloneable", "kotlin.Cloneable");
        map3.put("java.lang.Number", "kotlin.Number");
        map3.put("java.lang.Comparable", "kotlin.Comparable");
        map3.put("java.lang.Enum", "kotlin.Enum");
        map3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        map3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        map3.put("java.util.Iterator", "kotlin.collections.Iterator");
        map3.put("java.util.Collection", "kotlin.collections.Collection");
        map3.put("java.util.List", "kotlin.collections.List");
        map3.put("java.util.Set", "kotlin.collections.Set");
        map3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        map3.put("java.util.Map", "kotlin.collections.Map");
        map3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        map3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        map3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        map3.putAll(map);
        map3.putAll(map2);
        Collection<String> collectionValues = map.values();
        g.e("<get-values>(...)", collectionValues);
        for (String str : collectionValues) {
            StringBuilder sb = new StringBuilder("kotlin.jvm.internal.");
            g.c(str);
            sb.append(k7.g.N(str));
            sb.append("CompanionObject");
            map3.put(sb.toString(), str.concat(".Companion"));
        }
        for (Map.Entry entry : f2289b.entrySet()) {
            Class cls = (Class) entry.getKey();
            int iIntValue = ((Number) entry.getValue()).intValue();
            map3.put(cls.getName(), "kotlin.Function" + iIntValue);
        }
        f2290c = map3;
        LinkedHashMap linkedHashMap = new LinkedHashMap(s6.r.s(map3.size()));
        for (Map.Entry entry2 : map3.entrySet()) {
            linkedHashMap.put(entry2.getKey(), k7.g.N((String) entry2.getValue()));
        }
        f2291d = linkedHashMap;
    }

    public d(Class cls) {
        this.f2292a = cls;
    }

    @Override // d7.c
    public final Class a() {
        return this.f2292a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof d) && m1.j.j(this).equals(m1.j.j((i7.b) obj));
    }

    public final int hashCode() {
        return m1.j.j(this).hashCode();
    }

    public final String toString() {
        return this.f2292a.toString() + " (Kotlin reflection is not available)";
    }
}
