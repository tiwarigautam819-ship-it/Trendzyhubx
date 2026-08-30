package d7;

import c7.p;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o {
    public static Map a(HashMap map) {
        if (!(map instanceof e7.a)) {
            return map;
        }
        c("kotlin.collections.MutableMap", map);
        throw null;
    }

    public static boolean b(int i6, Object obj) {
        if (obj instanceof r6.a) {
            if ((obj instanceof e ? ((e) obj).d() : obj instanceof c7.a ? 0 : obj instanceof c7.l ? 1 : obj instanceof p ? 2 : -1) == i6) {
                return true;
            }
        }
        return false;
    }

    public static void c(String str, Object obj) {
        ClassCastException classCastException = new ClassCastException((obj == null ? "null" : obj.getClass().getName()) + " cannot be cast to " + str);
        g.h(classCastException, o.class.getName());
        throw classCastException;
    }
}
