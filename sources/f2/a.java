package f2;

import f4.f;
import java.util.List;
import y1.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f2532b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f2533c;

    public /* synthetic */ a(String str, e eVar, int i6) {
        this.f2531a = i6;
        this.f2532b = str;
        this.f2533c = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m2.e eVar = m2.e.f4251a;
        int i6 = this.f2531a;
        e eVar2 = this.f2533c;
        String str = this.f2532b;
        switch (i6) {
            case 0:
                if (!v2.a.b(d.class)) {
                    try {
                        d.f2537a.c(str, eVar2);
                    } catch (Throwable th) {
                        v2.a.a(th, d.class);
                        return;
                    }
                    break;
                }
                break;
            default:
                if (!v2.a.b(m2.b.class)) {
                    try {
                        List listB = f.b(eVar2);
                        if (!v2.a.b(m2.e.class)) {
                            try {
                                eVar.b(2, str, listB);
                            } catch (Throwable th2) {
                                v2.a.a(th2, m2.e.class);
                                return;
                            }
                            break;
                        }
                    } catch (Throwable th3) {
                        v2.a.a(th3, m2.b.class);
                    }
                }
                break;
        }
    }
}
