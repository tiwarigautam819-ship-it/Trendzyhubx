package s5;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import q5.x;
import q5.y;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements y, Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final g f5238c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List f5239a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f5240b;

    static {
        g gVar = new g();
        List list = Collections.EMPTY_LIST;
        gVar.f5239a = list;
        gVar.f5240b = list;
        f5238c = gVar;
    }

    public static boolean c(Class cls) {
        if (Enum.class.isAssignableFrom(cls) || (cls.getModifiers() & 8) != 0) {
            return false;
        }
        return cls.isAnonymousClass() || cls.isLocalClass();
    }

    @Override // q5.y
    public final x a(q5.l lVar, w5.a aVar) {
        boolean z5;
        boolean zC = c(aVar.f5756a);
        boolean z8 = false;
        if (zC) {
            z5 = true;
        } else {
            b(true);
            z5 = false;
        }
        if (zC) {
            z8 = true;
        } else {
            b(false);
        }
        if (z5 || z8) {
            return new f(this, z5, lVar, aVar);
        }
        return null;
    }

    public final void b(boolean z5) {
        Iterator it = (z5 ? this.f5239a : this.f5240b).iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw new ClassCastException();
        }
    }

    public final Object clone() {
        try {
            return (g) super.clone();
        } catch (CloneNotSupportedException e9) {
            throw new AssertionError(e9);
        }
    }
}
