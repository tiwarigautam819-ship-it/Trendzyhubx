package t5;

import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import q5.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k extends x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f5364a;

    public k(LinkedHashMap linkedHashMap) {
        this.f5364a = linkedHashMap;
    }

    @Override // q5.x
    public final void a(x5.a aVar, Object obj) throws IOException {
        if (obj == null) {
            aVar.w();
            return;
        }
        aVar.g();
        try {
            Iterator it = this.f5364a.values().iterator();
            while (it.hasNext()) {
                ((j) it.next()).a(aVar, obj);
            }
            aVar.t();
        } catch (IllegalAccessException e9) {
            m1.j jVar = u5.c.f5494a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e9);
        }
    }
}
