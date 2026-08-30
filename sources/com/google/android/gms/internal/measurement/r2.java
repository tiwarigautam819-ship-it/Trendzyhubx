package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public enum r2 implements e6 {
    CONSENT_TYPE_UNSPECIFIED(0),
    AD_STORAGE(1),
    ANALYTICS_STORAGE(2),
    AD_USER_DATA(3),
    AD_PERSONALIZATION(4);


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1854a;

    r2(int i6) {
        this.f1854a = i6;
    }

    public static r2 a(int i6) {
        if (i6 == 0) {
            return CONSENT_TYPE_UNSPECIFIED;
        }
        if (i6 == 1) {
            return AD_STORAGE;
        }
        if (i6 == 2) {
            return ANALYTICS_STORAGE;
        }
        if (i6 == 3) {
            return AD_USER_DATA;
        }
        if (i6 != 4) {
            return null;
        }
        return AD_PERSONALIZATION;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + r2.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f1854a + " name=" + name() + '>';
    }
}
