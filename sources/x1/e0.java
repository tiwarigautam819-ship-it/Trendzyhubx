package x1;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e0 f5837a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e0 f5838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e0 f5839c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final e0 f5840d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final e0 f5841e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final e0 f5842f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ e0[] f5843g;

    static {
        e0 e0Var = new e0("REQUESTS", 0);
        f5837a = e0Var;
        e0 e0Var2 = new e0("INCLUDE_ACCESS_TOKENS", 1);
        f5838b = e0Var2;
        e0 e0Var3 = new e0("INCLUDE_RAW_RESPONSES", 2);
        f5839c = e0Var3;
        e0 e0Var4 = new e0("CACHE", 3);
        e0 e0Var5 = new e0("APP_EVENTS", 4);
        f5840d = e0Var5;
        e0 e0Var6 = new e0("DEVELOPER_ERRORS", 5);
        f5841e = e0Var6;
        e0 e0Var7 = new e0("GRAPH_API_DEBUG_WARNING", 6);
        f5842f = e0Var7;
        f5843g = new e0[]{e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6, e0Var7, new e0("GRAPH_API_DEBUG_INFO", 7)};
    }

    public static e0 valueOf(String str) {
        return (e0) Enum.valueOf(e0.class, str);
    }

    public static e0[] values() {
        return (e0[]) f5843g.clone();
    }
}
