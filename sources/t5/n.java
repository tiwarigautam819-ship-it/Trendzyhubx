package t5;

import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;
import q5.x;
import q5.y;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p4.p f5369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q5.h f5370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s5.g f5371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f5372d;

    public n(p4.p pVar, q5.h hVar, s5.g gVar, c cVar, List list) {
        this.f5369a = pVar;
        this.f5370b = hVar;
        this.f5371c = gVar;
        this.f5372d = list;
    }

    @Override // q5.y
    public final x a(q5.l lVar, w5.a aVar) {
        Class cls = aVar.f5756a;
        if (!Object.class.isAssignableFrom(cls)) {
            return null;
        }
        s5.d.e(this.f5372d);
        if (u5.c.f5494a.l(cls)) {
            return new m(cls, b(lVar, aVar, cls, true));
        }
        this.f5369a.c(aVar);
        return new l(b(lVar, aVar, cls, false));
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0164 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x015a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.LinkedHashMap b(q5.l r25, w5.a r26, java.lang.Class r27, boolean r28) {
        /*
            Method dump skipped, instruction units count: 443
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: t5.n.b(q5.l, w5.a, java.lang.Class, boolean):java.util.LinkedHashMap");
    }

    public final boolean c(Field field, boolean z5) {
        Class<?> type = field.getType();
        s5.g gVar = this.f5371c;
        gVar.getClass();
        if (s5.g.c(type)) {
            return false;
        }
        gVar.b(z5);
        if ((136 & field.getModifiers()) != 0 || field.isSynthetic() || s5.g.c(field.getType())) {
            return false;
        }
        List list = z5 ? gVar.f5239a : gVar.f5240b;
        if (list.isEmpty()) {
            return true;
        }
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            return true;
        }
        it.next().getClass();
        throw new ClassCastException();
    }
}
