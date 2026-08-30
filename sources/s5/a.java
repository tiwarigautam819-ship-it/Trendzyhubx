package s5;

import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements GenericArrayType, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Type f5224a;

    public a(Type type) {
        Objects.requireNonNull(type);
        this.f5224a = d.a(type);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof GenericArrayType) && d.d(this, (GenericArrayType) obj);
    }

    @Override // java.lang.reflect.GenericArrayType
    public final Type getGenericComponentType() {
        return this.f5224a;
    }

    public final int hashCode() {
        return this.f5224a.hashCode();
    }

    public final String toString() {
        return d.j(this.f5224a) + "[]";
    }
}
