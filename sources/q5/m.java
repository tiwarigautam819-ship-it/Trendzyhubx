package q5;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s5.g f4874a = s5.g.f5238c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4875b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f4876c = h.f4861a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f4877d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f4878e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f4879f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4880g = false;
    public final int h = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f4881i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4882j = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f4883k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final s f4884l = w.f4888a;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final t f4885m = w.f4889b;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final LinkedList f4886n = new LinkedList();

    public final l a() {
        int i6;
        t5.p pVar;
        t5.p pVar2;
        ArrayList arrayList = this.f4878e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f4879f;
        ArrayList arrayList3 = new ArrayList(arrayList2.size() + size + 3);
        arrayList3.addAll(arrayList);
        Collections.reverse(arrayList3);
        ArrayList arrayList4 = new ArrayList(arrayList2);
        Collections.reverse(arrayList4);
        arrayList3.addAll(arrayList4);
        boolean z5 = v5.c.f5629a;
        int i9 = this.h;
        if (i9 != 2 && (i6 = this.f4881i) != 2) {
            t5.d dVar = new t5.d(t5.f.f5349b, i9, i6);
            t5.p pVar3 = t5.s.f5384a;
            t5.p pVar4 = new t5.p(Date.class, dVar, 0);
            if (z5) {
                v5.b bVar = v5.c.f5631c;
                bVar.getClass();
                pVar = new t5.p(bVar.f5350a, new t5.d(bVar, i9, i6), 0);
                v5.b bVar2 = v5.c.f5630b;
                bVar2.getClass();
                pVar2 = new t5.p(bVar2.f5350a, new t5.d(bVar2, i9, i6), 0);
            } else {
                pVar = null;
                pVar2 = null;
            }
            arrayList3.add(pVar4);
            if (z5) {
                arrayList3.add(pVar);
                arrayList3.add(pVar2);
            }
        }
        HashMap map = new HashMap(this.f4877d);
        boolean z8 = this.f4880g;
        boolean z9 = this.f4882j;
        new ArrayList(arrayList);
        new ArrayList(arrayList2);
        return new l(this.f4874a, this.f4876c, map, z8, z9, this.f4883k, this.f4875b, arrayList3, this.f4884l, this.f4885m, new ArrayList(this.f4886n));
    }
}
