package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzhd {
    private final String zza;
    private boolean zzb;
    private String zzc;
    private final /* synthetic */ zzha zzd;

    public zzhd(zzha zzhaVar, String str, String str2) {
        this.zzd = zzhaVar;
        d0.d(str);
        this.zza = str;
    }

    public final String zza() {
        if (!this.zzb) {
            this.zzb = true;
            this.zzc = this.zzd.zzg().getString(this.zza, null);
        }
        return this.zzc;
    }

    public final void zza(String str) {
        SharedPreferences.Editor editorEdit = this.zzd.zzg().edit();
        editorEdit.putString(this.zza, str);
        editorEdit.apply();
        this.zzc = str;
    }
}
