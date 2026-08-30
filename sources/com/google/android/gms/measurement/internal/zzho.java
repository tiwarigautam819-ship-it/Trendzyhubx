package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.d0;
import s.i;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzho extends i {
    private final /* synthetic */ zzhl zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzho(zzhl zzhlVar, int i6) {
        super(20);
        this.zza = zzhlVar;
    }

    @Override // s.i
    public final /* synthetic */ Object create(Object obj) {
        String str = (String) obj;
        d0.d(str);
        return zzhl.zza(this.zza, str);
    }
}
