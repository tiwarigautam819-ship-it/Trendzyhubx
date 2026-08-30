package s6;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h extends f4.f {
    public static ArrayList i(Object... objArr) {
        d7.g.f("elements", objArr);
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new d(objArr, true));
    }

    public static int j(List list) {
        d7.g.f("<this>", list);
        return list.size() - 1;
    }

    public static List k(Object... objArr) {
        d7.g.f("elements", objArr);
        return objArr.length > 0 ? f.h(objArr) : o.f5282a;
    }

    public static ArrayList l(Object... objArr) {
        d7.g.f("elements", objArr);
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new d(objArr, true));
    }

    public static final List m(List list) {
        int size = list.size();
        return size != 0 ? size != 1 ? list : f4.f.b(list.get(0)) : o.f5282a;
    }
}
