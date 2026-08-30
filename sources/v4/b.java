package v4;

import com.google.firebase.messaging.j0;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f5589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f5590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f5591d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f5592e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final d f5593f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Set f5594g;

    public b(String str, Set set, Set set2, int i6, int i9, d dVar, Set set3) {
        this.f5588a = str;
        this.f5589b = Collections.unmodifiableSet(set);
        this.f5590c = Collections.unmodifiableSet(set2);
        this.f5591d = i6;
        this.f5592e = i9;
        this.f5593f = dVar;
        this.f5594g = Collections.unmodifiableSet(set3);
    }

    public static a a(Class cls) {
        return new a(cls, new Class[0]);
    }

    public static a b(p pVar) {
        return new a(pVar, new p[0]);
    }

    public static b c(Object obj, Class cls, Class... clsArr) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(p.a(cls));
        for (Class cls2 : clsArr) {
            z7.l.c("Null interface", cls2);
            hashSet.add(p.a(cls2));
        }
        return new b(null, new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new j0(11, obj), hashSet3);
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.f5589b.toArray()) + ">{" + this.f5591d + ", type=" + this.f5592e + ", deps=" + Arrays.toString(this.f5590c.toArray()) + "}";
    }
}
