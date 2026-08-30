package e6;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f2427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final f f2428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final f f2429c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ f[] f2430d;

    static {
        f fVar = new f("FORCE_NONE", 0);
        f2427a = fVar;
        f fVar2 = new f("FORCE_SQUARE", 1);
        f2428b = fVar2;
        f fVar3 = new f("FORCE_RECTANGLE", 2);
        f2429c = fVar3;
        f2430d = new f[]{fVar, fVar2, fVar3};
    }

    public static f valueOf(String str) {
        return (f) Enum.valueOf(f.class, str);
    }

    public static f[] values() {
        return (f[]) f2430d.clone();
    }
}
