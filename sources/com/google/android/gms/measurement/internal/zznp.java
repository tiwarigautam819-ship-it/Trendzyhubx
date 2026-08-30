package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zznp extends zzav {
    private final /* synthetic */ zznq zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zznp(zznq zznqVar, zzjc zzjcVar) {
        super(zzjcVar);
        this.zza = zznqVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzav
    public final void zzb() {
        this.zza.zzu();
        this.zza.zzj().zzp().zza("Starting upload from DelayedRunnable");
        this.zza.zzg.zzw();
    }
}
