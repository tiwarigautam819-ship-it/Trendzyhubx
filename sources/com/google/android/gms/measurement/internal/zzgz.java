package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgz {
    private final String zza;
    private final boolean zzb;
    private boolean zzc;
    private boolean zzd;
    private final /* synthetic */ zzha zze;

    public zzgz(zzha zzhaVar, String str, boolean z5) {
        this.zze = zzhaVar;
        d0.d(str);
        this.zza = str;
        this.zzb = z5;
    }

    public final void zza(boolean z5) {
        SharedPreferences.Editor editorEdit = this.zze.zzg().edit();
        editorEdit.putBoolean(this.zza, z5);
        editorEdit.apply();
        this.zzd = z5;
    }

    public final boolean zza() {
        if (!this.zzc) {
            this.zzc = true;
            this.zzd = this.zze.zzg().getBoolean(this.zza, this.zzb);
        }
        return this.zzd;
    }
}
