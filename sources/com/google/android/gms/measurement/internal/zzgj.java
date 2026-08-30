package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.o0;
import v3.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgj extends f {
    /* JADX WARN: Illegal instructions before constructor call */
    public zzgj(Context context, Looper looper, b bVar, c cVar) {
        o0 o0VarA = k.a(context);
        e eVar = e.f5544b;
        d0.h(bVar);
        d0.h(cVar);
        super(context, looper, o0VarA, eVar, 93, bVar, cVar, null);
    }

    @Override // com.google.android.gms.common.internal.f
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        return iInterfaceQueryLocalInterface instanceof zzgb ? (zzgb) iInterfaceQueryLocalInterface : new zzgd(iBinder);
    }

    @Override // com.google.android.gms.common.internal.f
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.f
    public final String getServiceDescriptor() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override // com.google.android.gms.common.internal.f
    public final String getStartServiceAction() {
        return "com.google.android.gms.measurement.START";
    }
}
