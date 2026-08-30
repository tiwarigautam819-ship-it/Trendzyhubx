package b5;

import java.util.Date;
import java.util.HashMap;
import z4.f;
import z4.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements a5.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f961f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final b f962g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f963a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f964b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f965c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f966d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f960e = new a(0);
    public static final c h = new c();

    /* JADX WARN: Type inference failed for: r0v1, types: [b5.b] */
    /* JADX WARN: Type inference failed for: r0v2, types: [b5.b] */
    static {
        final int i6 = 0;
        f961f = new f() { // from class: b5.b
            @Override // z4.a
            public final void a(Object obj, Object obj2) {
                switch (i6) {
                    case 0:
                        ((g) obj2).c((String) obj);
                        break;
                    default:
                        ((g) obj2).d(((Boolean) obj).booleanValue());
                        break;
                }
            }
        };
        final int i9 = 1;
        f962g = new f() { // from class: b5.b
            @Override // z4.a
            public final void a(Object obj, Object obj2) {
                switch (i9) {
                    case 0:
                        ((g) obj2).c((String) obj);
                        break;
                    default:
                        ((g) obj2).d(((Boolean) obj).booleanValue());
                        break;
                }
            }
        };
    }

    public d() {
        HashMap map = new HashMap();
        this.f963a = map;
        HashMap map2 = new HashMap();
        this.f964b = map2;
        this.f965c = f960e;
        this.f966d = false;
        map2.put(String.class, f961f);
        map.remove(String.class);
        map2.put(Boolean.class, f962g);
        map.remove(Boolean.class);
        map2.put(Date.class, h);
        map.remove(Date.class);
    }

    public final a5.a a(Class cls, z4.d dVar) {
        this.f963a.put(cls, dVar);
        this.f964b.remove(cls);
        return this;
    }
}
