package s6;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class r extends h8.b {
    public static HashMap r(r6.d... dVarArr) {
        HashMap map = new HashMap(s(dVarArr.length));
        v(map, dVarArr);
        return map;
    }

    public static int s(int i6) {
        if (i6 < 0) {
            return i6;
        }
        if (i6 < 3) {
            return i6 + 1;
        }
        if (i6 < 1073741824) {
            return (int) ((i6 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static Map t(r6.d dVar) {
        d7.g.f("pair", dVar);
        Map mapSingletonMap = Collections.singletonMap(dVar.f4993a, dVar.f4994b);
        d7.g.e("singletonMap(...)", mapSingletonMap);
        return mapSingletonMap;
    }

    public static Map u(r6.d... dVarArr) {
        if (dVarArr.length <= 0) {
            return p.f5283a;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(s(dVarArr.length));
        v(linkedHashMap, dVarArr);
        return linkedHashMap;
    }

    public static final void v(HashMap map, r6.d[] dVarArr) {
        for (r6.d dVar : dVarArr) {
            map.put(dVar.f4993a, dVar.f4994b);
        }
    }

    public static Map w(ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return p.f5283a;
        }
        if (size == 1) {
            return t((r6.d) arrayList.get(0));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(s(arrayList.size()));
        int size2 = arrayList.size();
        int i6 = 0;
        while (i6 < size2) {
            Object obj = arrayList.get(i6);
            i6++;
            r6.d dVar = (r6.d) obj;
            linkedHashMap.put(dVar.f4993a, dVar.f4994b);
        }
        return linkedHashMap;
    }

    public static Map x(Map map) {
        d7.g.f("<this>", map);
        int size = map.size();
        if (size == 0) {
            return p.f5283a;
        }
        if (size != 1) {
            return y(map);
        }
        d7.g.f("<this>", map);
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        d7.g.e("with(...)", mapSingletonMap);
        return mapSingletonMap;
    }

    public static LinkedHashMap y(Map map) {
        d7.g.f("<this>", map);
        return new LinkedHashMap(map);
    }
}
