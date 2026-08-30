package androidx.lifecycle;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Method f678b;

    public c(int i6, Method method) {
        this.f677a = i6;
        this.f678b = method;
        method.setAccessible(true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f677a == cVar.f677a && this.f678b.getName().equals(cVar.f678b.getName());
    }

    public final int hashCode() {
        return this.f678b.getName().hashCode() + (this.f677a * 31);
    }
}
