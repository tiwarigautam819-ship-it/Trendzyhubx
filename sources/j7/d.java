package j7;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3409a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3410b;

    public /* synthetic */ d(int i6, Object obj) {
        this.f3409a = i6;
        this.f3410b = obj;
    }

    @Override // j7.e
    public final Iterator iterator() {
        switch (this.f3409a) {
            case 0:
                return new c(this);
            case 1:
                return new c(this, (byte) 0);
            case 2:
                return (Iterator) this.f3410b;
            default:
                return ((Iterable) this.f3410b).iterator();
        }
    }
}
