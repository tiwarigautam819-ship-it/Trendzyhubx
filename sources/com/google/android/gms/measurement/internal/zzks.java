package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.w0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzks implements Runnable {
    private final /* synthetic */ w0 zza;
    private final /* synthetic */ zzjq zzb;

    public zzks(zzjq zzjqVar, w0 w0Var) {
        this.zza = w0Var;
        this.zzb = zzjqVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r7 = this;
            com.google.android.gms.measurement.internal.zzjq r0 = r7.zzb
            com.google.android.gms.measurement.internal.zznb r0 = r0.zzp()
            com.google.android.gms.measurement.internal.zzha r1 = r0.zzk()
            com.google.android.gms.measurement.internal.zzje r1 = r1.zzo()
            boolean r1 = r1.zzh()
            r2 = 0
            if (r1 != 0) goto L24
            com.google.android.gms.measurement.internal.zzgo r0 = r0.zzj()
            com.google.android.gms.measurement.internal.zzgq r0 = r0.zzv()
            java.lang.String r1 = "Analytics storage consent denied; will not get session id"
            r0.zza(r1)
        L22:
            r0 = r2
            goto L5a
        L24:
            com.google.android.gms.measurement.internal.zzha r1 = r0.zzk()
            b4.a r3 = r0.zzb()
            b4.b r3 = (b4.b) r3
            r3.getClass()
            long r3 = java.lang.System.currentTimeMillis()
            boolean r1 = r1.zza(r3)
            if (r1 != 0) goto L22
            com.google.android.gms.measurement.internal.zzha r1 = r0.zzk()
            com.google.android.gms.measurement.internal.zzhb r1 = r1.zzl
            long r3 = r1.zza()
            r5 = 0
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 != 0) goto L4c
            goto L22
        L4c:
            com.google.android.gms.measurement.internal.zzha r0 = r0.zzk()
            com.google.android.gms.measurement.internal.zzhb r0 = r0.zzl
            long r0 = r0.zza()
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
        L5a:
            if (r0 == 0) goto L6e
            com.google.android.gms.measurement.internal.zzjq r1 = r7.zzb
            com.google.android.gms.measurement.internal.zzhy r1 = r1.zzu
            com.google.android.gms.measurement.internal.zzos r1 = r1.zzt()
            com.google.android.gms.internal.measurement.w0 r2 = r7.zza
            long r3 = r0.longValue()
            r1.zza(r2, r3)
            return
        L6e:
            com.google.android.gms.internal.measurement.w0 r0 = r7.zza     // Catch: android.os.RemoteException -> L74
            r0.zza(r2)     // Catch: android.os.RemoteException -> L74
            return
        L74:
            r0 = move-exception
            com.google.android.gms.measurement.internal.zzjq r1 = r7.zzb
            com.google.android.gms.measurement.internal.zzhy r1 = r1.zzu
            com.google.android.gms.measurement.internal.zzgo r1 = r1.zzj()
            com.google.android.gms.measurement.internal.zzgq r1 = r1.zzg()
            java.lang.String r2 = "getSessionId failed with exception"
            r1.zza(r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzks.run():void");
    }
}
