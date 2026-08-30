package t5;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;
import q5.w;
import q5.x;
import q5.y;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5340a;

    public /* synthetic */ a(int i6) {
        this.f5340a = i6;
    }

    @Override // q5.y
    public final x a(q5.l lVar, w5.a aVar) {
        switch (this.f5340a) {
            case 0:
                Type type = aVar.f5757b;
                boolean z5 = type instanceof GenericArrayType;
                if (!z5 && (!(type instanceof Class) || !((Class) type).isArray())) {
                    return null;
                }
                Type genericComponentType = z5 ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
                return new b(lVar, lVar.b(new w5.a(genericComponentType)), s5.d.g(genericComponentType));
            case 1:
                if (aVar.f5756a == Date.class) {
                    return new d();
                }
                return null;
            case 2:
                if (aVar.f5756a == Object.class) {
                    return new i(lVar);
                }
                return null;
            case 3:
                Class superclass = aVar.f5756a;
                if (!Enum.class.isAssignableFrom(superclass) || superclass == Enum.class) {
                    return null;
                }
                if (!superclass.isEnum()) {
                    superclass = superclass.getSuperclass();
                }
                return new o(superclass);
            case 4:
                if (aVar.f5756a == java.sql.Date.class) {
                    return new v5.a(0);
                }
                return null;
            case 5:
                if (aVar.f5756a == Time.class) {
                    return new v5.a(1);
                }
                return null;
            default:
                if (aVar.f5756a == Timestamp.class) {
                    return new v5.a(lVar.b(new w5.a(Date.class)));
                }
                return null;
        }
    }

    public a(w wVar) {
        this.f5340a = 2;
    }
}
