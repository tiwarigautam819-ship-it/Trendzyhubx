package l3;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f3786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final c f3787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f3788c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ c[] f3789d;

    static {
        c cVar = new c("NETWORK_UNMETERED", 0);
        f3786a = cVar;
        c cVar2 = new c("DEVICE_IDLE", 1);
        f3787b = cVar2;
        c cVar3 = new c("DEVICE_CHARGING", 2);
        f3788c = cVar3;
        f3789d = new c[]{cVar, cVar2, cVar3};
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f3789d.clone();
    }
}
