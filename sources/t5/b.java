package t5;

import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import q5.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f5341c = new a(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5342a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o f5343b;

    public b(Type type, q5.l lVar, x xVar) {
        this.f5343b = new o(type, lVar, xVar);
    }

    @Override // q5.x
    public final void a(x5.a aVar, Object obj) throws IOException {
        switch (this.f5342a) {
            case 0:
                if (obj == null) {
                    aVar.w();
                } else {
                    aVar.c();
                    int length = Array.getLength(obj);
                    for (int i6 = 0; i6 < length; i6++) {
                        this.f5343b.a(aVar, Array.get(obj, i6));
                    }
                    aVar.s();
                }
                break;
            case 1:
                Collection collection = (Collection) obj;
                if (collection == null) {
                    aVar.w();
                } else {
                    aVar.c();
                    Iterator it = collection.iterator();
                    while (it.hasNext()) {
                        this.f5343b.a(aVar, it.next());
                    }
                    aVar.s();
                }
                break;
            default:
                Map map = (Map) obj;
                if (map == null) {
                    aVar.w();
                } else {
                    aVar.g();
                    for (Map.Entry entry : map.entrySet()) {
                        aVar.u(String.valueOf(entry.getKey()));
                        this.f5343b.a(aVar, entry.getValue());
                    }
                    aVar.t();
                }
                break;
        }
    }

    public b(q5.l lVar, x xVar, Class cls) {
        this.f5343b = new o(cls, lVar, xVar);
    }

    public b(c cVar, q5.l lVar, Type type, x xVar, Type type2, x xVar2) {
        new o(type, lVar, xVar);
        this.f5343b = new o(type2, lVar, xVar2);
    }
}
