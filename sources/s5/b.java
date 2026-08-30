package s5;

import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements ParameterizedType, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Type f5225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Type f5226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Type[] f5227c;

    public b(Type type, Type type2, Type... typeArr) {
        Objects.requireNonNull(type2);
        if (type2 instanceof Class) {
            Class cls = (Class) type2;
            boolean z5 = true;
            boolean z8 = Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null;
            if (type == null && !z8) {
                z5 = false;
            }
            d.b(z5);
        }
        this.f5225a = type == null ? null : d.a(type);
        this.f5226b = d.a(type2);
        Type[] typeArr2 = (Type[]) typeArr.clone();
        this.f5227c = typeArr2;
        int length = typeArr2.length;
        for (int i6 = 0; i6 < length; i6++) {
            Objects.requireNonNull(this.f5227c[i6]);
            d.c(this.f5227c[i6]);
            Type[] typeArr3 = this.f5227c;
            typeArr3[i6] = d.a(typeArr3[i6]);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ParameterizedType) && d.d(this, (ParameterizedType) obj);
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        return (Type[]) this.f5227c.clone();
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        return this.f5225a;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        return this.f5226b;
    }

    public final int hashCode() {
        int iHashCode = Arrays.hashCode(this.f5227c) ^ this.f5226b.hashCode();
        Type type = this.f5225a;
        return iHashCode ^ (type != null ? type.hashCode() : 0);
    }

    public final String toString() {
        Type[] typeArr = this.f5227c;
        int length = typeArr.length;
        Type type = this.f5226b;
        if (length == 0) {
            return d.j(type);
        }
        StringBuilder sb = new StringBuilder((length + 1) * 30);
        sb.append(d.j(type));
        sb.append("<");
        sb.append(d.j(typeArr[0]));
        for (int i6 = 1; i6 < length; i6++) {
            sb.append(", ");
            sb.append(d.j(typeArr[i6]));
        }
        sb.append(">");
        return sb.toString();
    }
}
