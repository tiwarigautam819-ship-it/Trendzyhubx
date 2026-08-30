package androidx.lifecycle;

import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k0 extends d7.h implements c7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f711c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k0(int i6, Object obj) {
        super(0);
        this.f710b = i6;
        this.f711c = obj;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [c7.a, d7.h] */
    @Override // c7.a
    public final Object b() {
        switch (this.f710b) {
            case 0:
                return j0.e((t0) this.f711c);
            case 1:
                return (List) this.f711c;
            default:
                try {
                    return (List) ((d7.h) this.f711c).b();
                } catch (SSLPeerUnverifiedException unused) {
                    return s6.o.f5282a;
                }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public k0(c7.a aVar) {
        super(0);
        this.f710b = 2;
        this.f711c = (d7.h) aVar;
    }
}
