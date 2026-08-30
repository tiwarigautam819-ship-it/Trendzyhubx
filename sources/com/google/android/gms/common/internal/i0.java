package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i0 extends x {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ f f1439g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i0(f fVar, int i6) {
        super(fVar, i6, null);
        this.f1439g = fVar;
    }

    @Override // com.google.android.gms.common.internal.x
    public final void a(ConnectionResult connectionResult) {
        f fVar = this.f1439g;
        if (fVar.enableLocalFallback() && f.zzo(fVar)) {
            f.zzk(fVar, 16);
        } else {
            fVar.zzc.a(connectionResult);
            fVar.onConnectionFailed(connectionResult);
        }
    }

    @Override // com.google.android.gms.common.internal.x
    public final boolean b() {
        this.f1439g.zzc.a(ConnectionResult.f1387e);
        return true;
    }
}
