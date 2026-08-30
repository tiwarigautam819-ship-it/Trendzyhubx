package t5;

import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m extends k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final HashMap f5365e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Constructor f5366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f5367c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f5368d;

    static {
        HashMap map = new HashMap();
        map.put(Byte.TYPE, (byte) 0);
        map.put(Short.TYPE, (short) 0);
        map.put(Integer.TYPE, 0);
        map.put(Long.TYPE, 0L);
        map.put(Float.TYPE, Float.valueOf(0.0f));
        map.put(Double.TYPE, Double.valueOf(0.0d));
        map.put(Character.TYPE, (char) 0);
        map.put(Boolean.TYPE, Boolean.FALSE);
        f5365e = map;
    }

    public m(Class cls, LinkedHashMap linkedHashMap) {
        super(linkedHashMap);
        this.f5368d = new HashMap();
        m1.j jVar = u5.c.f5494a;
        Constructor constructorH = jVar.h(cls);
        this.f5366b = constructorH;
        u5.c.e(constructorH);
        String[] strArrK = jVar.k(cls);
        for (int i6 = 0; i6 < strArrK.length; i6++) {
            this.f5368d.put(strArrK[i6], Integer.valueOf(i6));
        }
        Class<?>[] parameterTypes = this.f5366b.getParameterTypes();
        this.f5367c = new Object[parameterTypes.length];
        for (int i9 = 0; i9 < parameterTypes.length; i9++) {
            this.f5367c[i9] = f5365e.get(parameterTypes[i9]);
        }
    }
}
