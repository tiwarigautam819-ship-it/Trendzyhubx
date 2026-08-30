package l7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends d7.h implements c7.p {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final k f3863c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final k f3864d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3865b;

    static {
        int i6 = 2;
        f3863c = new k(i6, 0);
        f3864d = new k(i6, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k(int i6, int i9) {
        super(i6);
        this.f3865b = i9;
    }

    @Override // c7.p
    public final Object f(Object obj, Object obj2) {
        switch (this.f3865b) {
            case 0:
                return ((u6.k) obj).s((u6.i) obj2);
            case 1:
                Boolean bool = (Boolean) obj;
                bool.getClass();
                return bool;
            default:
                return ((u6.k) obj).s((u6.i) obj2);
        }
    }
}
