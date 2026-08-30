package y1;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f6142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ p[] f6143b;

    static {
        p pVar = new p("IAPParameters", 0);
        f6142a = pVar;
        f6143b = new p[]{pVar};
    }

    public static p valueOf(String str) {
        return (p) Enum.valueOf(p.class, str);
    }

    public static p[] values() {
        return (p[]) f6143b.clone();
    }
}
