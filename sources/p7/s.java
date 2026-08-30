package p7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s extends d7.h implements c7.p {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final s f4699c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final s f4700d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final s f4701e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4702b;

    static {
        int i6 = 2;
        f4699c = new s(i6, 0);
        f4700d = new s(i6, 1);
        f4701e = new s(i6, 2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s(int i6, int i9) {
        super(i6);
        this.f4702b = i9;
    }

    @Override // c7.p
    public final Object f(Object obj, Object obj2) {
        switch (this.f4702b) {
            case 0:
                return obj;
            case 1:
                a1.a.o(obj);
                return null;
            default:
                return (u) obj;
        }
    }
}
