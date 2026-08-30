package y1;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f6135a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final m f6136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final m f6137c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ m[] f6138d;

    static {
        m mVar = new m("SUCCESS", 0);
        f6135a = mVar;
        m mVar2 = new m("SERVER_ERROR", 1);
        f6136b = mVar2;
        m mVar3 = new m("NO_CONNECTIVITY", 2);
        f6137c = mVar3;
        f6138d = new m[]{mVar, mVar2, mVar3, new m("UNKNOWN_ERROR", 3)};
    }

    public static m valueOf(String str) {
        return (m) Enum.valueOf(m.class, str);
    }

    public static m[] values() {
        return (m[]) f6138d.clone();
    }
}
