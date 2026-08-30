package p0;

import android.os.Build;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends x2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f4578a;

    public e(f fVar) {
        this.f4578a = fVar;
    }

    @Override // x2.a
    public final void k(Throwable th) {
        this.f4578a.f4579a.d(th);
    }

    @Override // x2.a
    public final void l(com.google.firebase.messaging.y yVar) {
        f fVar = this.f4578a;
        fVar.f4581c = yVar;
        com.google.firebase.messaging.y yVar2 = fVar.f4581c;
        k kVar = fVar.f4579a;
        fVar.f4580b = new c5.h(yVar2, kVar.f4593g, kVar.f4594i, Build.VERSION.SDK_INT >= 34 ? n.a() : y1.g.n());
        k kVar2 = fVar.f4579a;
        kVar2.getClass();
        ArrayList arrayList = new ArrayList();
        kVar2.f4587a.writeLock().lock();
        try {
            kVar2.f4589c = 1;
            arrayList.addAll(kVar2.f4588b);
            kVar2.f4588b.clear();
            kVar2.f4587a.writeLock().unlock();
            kVar2.f4590d.post(new i(arrayList, kVar2.f4589c, null));
        } catch (Throwable th) {
            kVar2.f4587a.writeLock().unlock();
            throw th;
        }
    }
}
