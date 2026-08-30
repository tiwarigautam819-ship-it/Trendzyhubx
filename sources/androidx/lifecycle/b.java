package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f675a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f676b;

    public b(HashMap map) {
        this.f676b = map;
        for (Map.Entry entry : map.entrySet()) {
            m mVar = (m) entry.getValue();
            List arrayList = (List) this.f675a.get(mVar);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.f675a.put(mVar, arrayList);
            }
            arrayList.add((c) entry.getKey());
        }
    }

    public static void a(List list, t tVar, m mVar, s sVar) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                c cVar = (c) list.get(size);
                Method method = cVar.f678b;
                try {
                    int i6 = cVar.f677a;
                    if (i6 == 0) {
                        method.invoke(sVar, null);
                    } else if (i6 == 1) {
                        method.invoke(sVar, tVar);
                    } else if (i6 == 2) {
                        method.invoke(sVar, tVar, mVar);
                    }
                } catch (IllegalAccessException e9) {
                    throw new RuntimeException(e9);
                } catch (InvocationTargetException e10) {
                    throw new RuntimeException("Failed to call observer method", e10.getCause());
                }
            }
        }
    }
}
