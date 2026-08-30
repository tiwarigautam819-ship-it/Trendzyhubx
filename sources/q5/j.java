package q5;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f4865b;

    public /* synthetic */ j(x xVar, int i6) {
        this.f4864a = i6;
        this.f4865b = xVar;
    }

    @Override // q5.x
    public final void a(x5.a aVar, Object obj) throws IOException {
        switch (this.f4864a) {
            case 0:
                this.f4865b.a(aVar, Long.valueOf(((AtomicLong) obj).get()));
                break;
            case 1:
                AtomicLongArray atomicLongArray = (AtomicLongArray) obj;
                aVar.c();
                int length = atomicLongArray.length();
                for (int i6 = 0; i6 < length; i6++) {
                    this.f4865b.a(aVar, Long.valueOf(atomicLongArray.get(i6)));
                }
                aVar.s();
                break;
            default:
                if (obj == null) {
                    aVar.w();
                } else {
                    this.f4865b.a(aVar, obj);
                }
                break;
        }
    }
}
