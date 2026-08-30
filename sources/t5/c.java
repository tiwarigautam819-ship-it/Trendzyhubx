package t5;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import q5.x;
import q5.y;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p4.p f5345b;

    public /* synthetic */ c(p4.p pVar, int i6) {
        this.f5344a = i6;
        this.f5345b = pVar;
    }

    public static x b(p4.p pVar, q5.l lVar, w5.a aVar, r5.a aVar2) {
        x xVarA;
        Object objM = pVar.c(new w5.a(aVar2.value())).m();
        boolean zNullSafe = aVar2.nullSafe();
        if (objM instanceof x) {
            xVarA = (x) objM;
        } else {
            if (!(objM instanceof y)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + objM.getClass().getName() + " as a @JsonAdapter for " + s5.d.j(aVar.f5757b) + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            xVarA = ((y) objM).a(lVar, aVar);
        }
        return (xVarA == null || !zNullSafe) ? xVarA : new q5.j(xVarA, 2);
    }

    @Override // q5.y
    public final x a(q5.l lVar, w5.a aVar) {
        Class cls;
        Type[] actualTypeArguments;
        int i6 = this.f5344a;
        cls = Object.class;
        p4.p pVar = this.f5345b;
        switch (i6) {
            case 0:
                Type type = aVar.f5757b;
                Class cls2 = aVar.f5756a;
                if (!Collection.class.isAssignableFrom(cls2)) {
                    return null;
                }
                if (type instanceof WildcardType) {
                    type = ((WildcardType) type).getUpperBounds()[0];
                }
                s5.d.b(Collection.class.isAssignableFrom(cls2));
                Type typeI = s5.d.i(type, cls2, s5.d.f(type, cls2, Collection.class), new HashMap());
                cls = typeI instanceof ParameterizedType ? ((ParameterizedType) typeI).getActualTypeArguments()[0] : Object.class;
                x xVarB = lVar.b(new w5.a(cls));
                pVar.c(aVar);
                return new b(cls, lVar, xVarB);
            case 1:
                r5.a aVar2 = (r5.a) aVar.f5756a.getAnnotation(r5.a.class);
                if (aVar2 == null) {
                    return null;
                }
                return b(pVar, lVar, aVar, aVar2);
            default:
                Type type2 = aVar.f5757b;
                Class cls3 = aVar.f5756a;
                if (!Map.class.isAssignableFrom(cls3)) {
                    return null;
                }
                if (type2 == Properties.class) {
                    actualTypeArguments = new Type[]{String.class, String.class};
                } else {
                    if (type2 instanceof WildcardType) {
                        type2 = ((WildcardType) type2).getUpperBounds()[0];
                    }
                    s5.d.b(Map.class.isAssignableFrom(cls3));
                    Type typeI2 = s5.d.i(type2, cls3, s5.d.f(type2, cls3, Map.class), new HashMap());
                    actualTypeArguments = typeI2 instanceof ParameterizedType ? ((ParameterizedType) typeI2).getActualTypeArguments() : new Type[]{cls, cls};
                }
                Type type3 = actualTypeArguments[0];
                x xVarB2 = (type3 == Boolean.TYPE || type3 == Boolean.class) ? s.f5386c : lVar.b(new w5.a(type3));
                x xVarB3 = lVar.b(new w5.a(actualTypeArguments[1]));
                pVar.c(aVar);
                Type[] typeArr = actualTypeArguments;
                return new b(this, lVar, typeArr[0], xVarB2, typeArr[1], xVarB3);
        }
    }
}
