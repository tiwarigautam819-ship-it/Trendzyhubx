package androidx.lifecycle;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final n f718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final n f719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final n f720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final n f721d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final n f722e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ n[] f723f;

    static {
        n nVar = new n("DESTROYED", 0);
        f718a = nVar;
        n nVar2 = new n("INITIALIZED", 1);
        f719b = nVar2;
        n nVar3 = new n("CREATED", 2);
        f720c = nVar3;
        n nVar4 = new n("STARTED", 3);
        f721d = nVar4;
        n nVar5 = new n("RESUMED", 4);
        f722e = nVar5;
        f723f = new n[]{nVar, nVar2, nVar3, nVar4, nVar5};
    }

    public static n valueOf(String str) {
        return (n) Enum.valueOf(n.class, str);
    }

    public static n[] values() {
        return (n[]) f723f.clone();
    }
}
