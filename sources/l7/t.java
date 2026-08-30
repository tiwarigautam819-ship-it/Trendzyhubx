package l7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f3897a = 0;

    static {
        String property;
        int i6 = p7.r.f4698a;
        try {
            property = System.getProperty("kotlinx.coroutines.main.delay");
        } catch (SecurityException unused) {
            property = null;
        }
        if (!(property != null ? Boolean.parseBoolean(property) : false)) {
            s sVar = s.f3893i;
            return;
        }
        q7.d dVar = x.f3901a;
        m7.c cVar = p7.n.f4696a;
        m7.c cVar2 = cVar.f4308e;
        if (cVar != null) {
            return;
        }
        s sVar2 = s.f3893i;
    }
}
