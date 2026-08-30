package q5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s f4888a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final t f4889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ w[] f4890c;

    static {
        s sVar = new s();
        f4888a = sVar;
        t tVar = new t();
        f4889b = tVar;
        f4890c = new w[]{sVar, tVar, new w() { // from class: q5.u
        }, new w() { // from class: q5.v
        }};
    }

    public static w valueOf(String str) {
        return (w) Enum.valueOf(w.class, str);
    }

    public static w[] values() {
        return (w[]) f4890c.clone();
    }
}
