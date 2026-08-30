package v4;

import java.util.Collections;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f5581a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f5582b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashSet f5583c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5584d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5585e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public d f5586f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final HashSet f5587g;

    public a(Class cls, Class[] clsArr) {
        HashSet hashSet = new HashSet();
        this.f5582b = hashSet;
        this.f5583c = new HashSet();
        this.f5584d = 0;
        this.f5585e = 0;
        this.f5587g = new HashSet();
        hashSet.add(p.a(cls));
        for (Class cls2 : clsArr) {
            z7.l.c("Null interface", cls2);
            this.f5582b.add(p.a(cls2));
        }
    }

    public final void a(h hVar) {
        if (this.f5582b.contains(hVar.f5607a)) {
            throw new IllegalArgumentException("Components are not allowed to depend on interfaces they themselves provide.");
        }
        this.f5583c.add(hVar);
    }

    public final b b() {
        if (this.f5586f != null) {
            return new b(this.f5581a, new HashSet(this.f5582b), new HashSet(this.f5583c), this.f5584d, this.f5585e, this.f5586f, this.f5587g);
        }
        throw new IllegalStateException("Missing required property: factory.");
    }

    public a(p pVar, p[] pVarArr) {
        HashSet hashSet = new HashSet();
        this.f5582b = hashSet;
        this.f5583c = new HashSet();
        this.f5584d = 0;
        this.f5585e = 0;
        this.f5587g = new HashSet();
        hashSet.add(pVar);
        for (p pVar2 : pVarArr) {
            z7.l.c("Null interface", pVar2);
        }
        Collections.addAll(this.f5582b, pVarArr);
    }
}
