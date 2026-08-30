package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public enum m2 implements e6 {
    UNKNOWN_MATCH_TYPE(0),
    REGEXP(1),
    BEGINS_WITH(2),
    ENDS_WITH(3),
    PARTIAL(4),
    EXACT(5),
    IN_LIST(6);


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1734a;

    m2(int i6) {
        this.f1734a = i6;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + m2.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f1734a + " name=" + name() + '>';
    }
}
