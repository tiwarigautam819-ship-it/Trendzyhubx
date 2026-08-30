package x1;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d0 f5827a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d0 f5828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ d0[] f5829c;

    static {
        d0 d0Var = new d0("GET", 0);
        f5827a = d0Var;
        d0 d0Var2 = new d0("POST", 1);
        f5828b = d0Var2;
        f5829c = new d0[]{d0Var, d0Var2, new d0("DELETE", 2)};
    }

    public static d0 valueOf(String str) {
        return (d0) Enum.valueOf(d0.class, str);
    }

    public static d0[] values() {
        return (d0[]) f5829c.clone();
    }
}
