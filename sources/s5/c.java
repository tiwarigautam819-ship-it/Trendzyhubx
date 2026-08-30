package s5;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements WildcardType, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Type f5228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Type f5229b;

    public c(Type[] typeArr, Type[] typeArr2) {
        d.b(typeArr2.length <= 1);
        d.b(typeArr.length == 1);
        if (typeArr2.length != 1) {
            Objects.requireNonNull(typeArr[0]);
            d.c(typeArr[0]);
            this.f5229b = null;
            this.f5228a = d.a(typeArr[0]);
            return;
        }
        Objects.requireNonNull(typeArr2[0]);
        d.c(typeArr2[0]);
        d.b(typeArr[0] == Object.class);
        this.f5229b = d.a(typeArr2[0]);
        this.f5228a = Object.class;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof WildcardType) && d.d(this, (WildcardType) obj);
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getLowerBounds() {
        Type type = this.f5229b;
        return type != null ? new Type[]{type} : d.f5230a;
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getUpperBounds() {
        return new Type[]{this.f5228a};
    }

    public final int hashCode() {
        Type type = this.f5229b;
        return (type != null ? type.hashCode() + 31 : 1) ^ (this.f5228a.hashCode() + 31);
    }

    public final String toString() {
        Type type = this.f5229b;
        if (type != null) {
            return "? super " + d.j(type);
        }
        Type type2 = this.f5228a;
        if (type2 == Object.class) {
            return "?";
        }
        return "? extends " + d.j(type2);
    }
}
