package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
abstract class zznr extends zzns {
    private boolean zza;

    public zznr(zznv zznvVar) {
        super(zznvVar);
        this.zzg.zzu();
    }

    public final void zzal() {
        if (!zzan()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzam() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzc();
        this.zzg.zzt();
        this.zza = true;
    }

    public final boolean zzan() {
        return this.zza;
    }

    public abstract boolean zzc();
}
