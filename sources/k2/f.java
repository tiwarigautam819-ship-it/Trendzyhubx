package k2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f3528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final f f3529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ f[] f3530c;

    static {
        f fVar = new f("MOBILE_INSTALL_EVENT", 0);
        f3528a = fVar;
        f fVar2 = new f("CUSTOM_APP_EVENTS", 1);
        f3529b = fVar2;
        f3530c = new f[]{fVar, fVar2};
    }

    public static f valueOf(String str) {
        return (f) Enum.valueOf(f.class, str);
    }

    public static f[] values() {
        return (f[]) f3530c.clone();
    }
}
