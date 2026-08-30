package s5;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import q5.x;
import q5.y;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public x f5233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f5234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ q5.l f5235c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ w5.a f5236d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ g f5237e;

    public f(g gVar, boolean z5, q5.l lVar, w5.a aVar) {
        this.f5237e = gVar;
        this.f5234b = z5;
        this.f5235c = lVar;
        this.f5236d = aVar;
    }

    @Override // q5.x
    public final void a(x5.a aVar, Object obj) throws IOException {
        if (this.f5234b) {
            aVar.w();
            return;
        }
        x xVar = this.f5233a;
        if (xVar == null) {
            q5.l lVar = this.f5235c;
            List list = lVar.f4871e;
            y yVar = this.f5237e;
            if (!list.contains(yVar)) {
                yVar = lVar.f4870d;
            }
            Iterator it = list.iterator();
            boolean z5 = false;
            while (true) {
                boolean zHasNext = it.hasNext();
                w5.a aVar2 = this.f5236d;
                if (!zHasNext) {
                    throw new IllegalArgumentException("GSON cannot serialize " + aVar2);
                }
                y yVar2 = (y) it.next();
                if (z5) {
                    x xVarA = yVar2.a(lVar, aVar2);
                    if (xVarA != null) {
                        this.f5233a = xVarA;
                        xVar = xVarA;
                        break;
                    }
                } else if (yVar2 == yVar) {
                    z5 = true;
                }
            }
        }
        xVar.a(aVar, obj);
    }
}
