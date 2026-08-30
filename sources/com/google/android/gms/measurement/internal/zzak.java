package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
enum zzak {
    UNSET('0'),
    REMOTE_DEFAULT('1'),
    REMOTE_DELEGATION('2'),
    MANIFEST('3'),
    INITIALIZATION('4'),
    API('5'),
    CHILD_ACCOUNT('6'),
    TCF('7'),
    REMOTE_ENFORCED_DEFAULT('8'),
    FAILSAFE('9');

    private final char zzl;

    zzak(char c8) {
        this.zzl = c8;
    }

    public static zzak zza(char c8) {
        for (zzak zzakVar : values()) {
            if (zzakVar.zzl == c8) {
                return zzakVar;
            }
        }
        return UNSET;
    }
}
