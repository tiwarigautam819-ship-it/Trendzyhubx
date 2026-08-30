package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzjm;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i1 extends a1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzjm f1675b;

    public i1(zzjm zzjmVar) {
        this.f1675b = zzjmVar;
    }

    @Override // com.google.android.gms.internal.measurement.x0
    public final int zza() {
        return System.identityHashCode(this.f1675b);
    }

    @Override // com.google.android.gms.internal.measurement.x0
    public final void zza(String str, String str2, Bundle bundle, long j3) {
        this.f1675b.interceptEvent(str, str2, bundle, j3);
    }
}
