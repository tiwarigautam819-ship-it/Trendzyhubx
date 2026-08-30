package c3;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f1037a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d f1038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d f1039c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ d[] f1040d;

    static {
        d dVar = new d("DEFAULT", 0);
        f1037a = dVar;
        d dVar2 = new d("VERY_LOW", 1);
        f1038b = dVar2;
        d dVar3 = new d("HIGHEST", 2);
        f1039c = dVar3;
        f1040d = new d[]{dVar, dVar2, dVar3};
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) f1040d.clone();
    }
}
