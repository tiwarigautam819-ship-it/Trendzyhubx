package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.j8;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzhq implements j8 {
    private final /* synthetic */ String zza;
    private final /* synthetic */ zzhl zzb;

    public zzhq(zzhl zzhlVar, String str) {
        this.zza = str;
        this.zzb = zzhlVar;
    }

    @Override // com.google.android.gms.internal.measurement.j8
    public final String zza(String str) {
        Map map = (Map) this.zzb.zzc.get(this.zza);
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return (String) map.get(str);
    }
}
