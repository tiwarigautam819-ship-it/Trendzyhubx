package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.ra;
import com.google.android.gms.internal.measurement.ta;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzhr implements ta {
    private final /* synthetic */ zzhl zza;

    public zzhr(zzhl zzhlVar) {
        this.zza = zzhlVar;
    }

    @Override // com.google.android.gms.internal.measurement.ta
    public final void zza(ra raVar, String str, List<String> list, boolean z5, boolean z8) {
        int i6 = zzht.zza[raVar.ordinal()];
        zzgq zzgqVarZzo = i6 != 1 ? i6 != 2 ? i6 != 3 ? i6 != 4 ? this.zza.zzj().zzo() : this.zza.zzj().zzp() : z5 ? this.zza.zzj().zzw() : !z8 ? this.zza.zzj().zzv() : this.zza.zzj().zzu() : z5 ? this.zza.zzj().zzn() : !z8 ? this.zza.zzj().zzm() : this.zza.zzj().zzg() : this.zza.zzj().zzc();
        int size = list.size();
        if (size == 1) {
            zzgqVarZzo.zza(str, list.get(0));
            return;
        }
        if (size == 2) {
            zzgqVarZzo.zza(str, list.get(0), list.get(1));
        } else if (size != 3) {
            zzgqVarZzo.zza(str);
        } else {
            zzgqVarZzo.zza(str, list.get(0), list.get(1), list.get(2));
        }
    }
}
