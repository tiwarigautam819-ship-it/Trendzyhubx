package s2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f5206a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f5207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f5208c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f5209d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f5210e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f5211f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ b[] f5212g;

    static {
        b bVar = new b("Unknown", 0);
        f5206a = bVar;
        b bVar2 = new b("Analysis", 1);
        f5207b = bVar2;
        b bVar3 = new b("AnrReport", 2);
        f5208c = bVar3;
        b bVar4 = new b("CrashReport", 3);
        f5209d = bVar4;
        b bVar5 = new b("CrashShield", 4);
        f5210e = bVar5;
        b bVar6 = new b("ThreadCheck", 5);
        f5211f = bVar6;
        f5212g = new b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6};
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f5212g.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        int iOrdinal = ordinal();
        return iOrdinal != 1 ? iOrdinal != 2 ? iOrdinal != 3 ? iOrdinal != 4 ? iOrdinal != 5 ? "Unknown" : "ThreadCheck" : "CrashShield" : "CrashReport" : "AnrReport" : "Analysis";
    }
}
