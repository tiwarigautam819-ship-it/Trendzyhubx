package n5;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public enum b implements c5.c {
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(0),
    DATA_MESSAGE(1),
    /* JADX INFO: Fake field, exist only in values array */
    TOPIC(2),
    DISPLAY_NOTIFICATION(3);


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4347a;

    b(int i6) {
        this.f4347a = i6;
    }

    @Override // c5.c
    public final int a() {
        return this.f4347a;
    }
}
