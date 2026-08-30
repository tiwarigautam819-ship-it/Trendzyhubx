package q2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v f4835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final v f4836b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final v f4837c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final v f4838d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ v[] f4839e;

    static {
        v vVar = new v("NOT_LOADED", 0);
        f4835a = vVar;
        v vVar2 = new v("LOADING", 1);
        f4836b = vVar2;
        v vVar3 = new v("SUCCESS", 2);
        f4837c = vVar3;
        v vVar4 = new v("ERROR", 3);
        f4838d = vVar4;
        f4839e = new v[]{vVar, vVar2, vVar3, vVar4};
    }

    public static v valueOf(String str) {
        return (v) Enum.valueOf(v.class, str);
    }

    public static v[] values() {
        return (v[]) f4839e.clone();
    }
}
