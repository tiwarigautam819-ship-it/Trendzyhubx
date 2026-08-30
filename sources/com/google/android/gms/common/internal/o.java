package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o implements d, b, c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static o f1468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final p f1469c = new p(0, 0, 0, false, false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f1470a;

    public /* synthetic */ o(Object obj) {
        this.f1470a = obj;
    }

    public static synchronized o b() {
        try {
            if (f1468b == null) {
                f1468b = new o();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f1468b;
    }

    @Override // com.google.android.gms.common.internal.d
    public void a(ConnectionResult connectionResult) {
        f fVar = (f) this.f1470a;
        if (connectionResult.f1389b == 0) {
            fVar.getRemoteService(null, fVar.getScopes());
        } else if (fVar.zzx != null) {
            fVar.zzx.onConnectionFailed(connectionResult);
        }
    }

    @Override // com.google.android.gms.common.internal.b
    public void onConnected(Bundle bundle) {
        ((w3.c) this.f1470a).b();
    }

    @Override // com.google.android.gms.common.internal.c
    public void onConnectionFailed(ConnectionResult connectionResult) {
        ((w3.d) this.f1470a).onConnectionFailed(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.b
    public void onConnectionSuspended(int i6) {
        ((w3.c) this.f1470a).onConnectionSuspended(i6);
    }
}
