package p3;

import android.util.SparseArray;
import c3.d;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SparseArray f4638a = new SparseArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f4639b;

    static {
        HashMap map = new HashMap();
        f4639b = map;
        map.put(d.f1037a, 0);
        map.put(d.f1038b, 1);
        map.put(d.f1039c, 2);
        for (d dVar : map.keySet()) {
            f4638a.append(((Integer) f4639b.get(dVar)).intValue(), dVar);
        }
    }

    public static int a(d dVar) {
        Integer num = (Integer) f4639b.get(dVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + dVar);
    }

    public static d b(int i6) {
        d dVar = (d) f4638a.get(i6);
        if (dVar != null) {
            return dVar;
        }
        throw new IllegalArgumentException(a1.a.i(i6, "Unknown Priority for value "));
    }
}
