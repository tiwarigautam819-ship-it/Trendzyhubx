package com.google.android.gms.measurement.internal;

import a4.b;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.v7;
import com.google.android.gms.internal.measurement.w0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzls extends zzh {
    private final zzmq zza;
    private zzgb zzb;
    private volatile Boolean zzc;
    private final zzav zzd;
    private final zznl zze;
    private final List<Runnable> zzf;
    private final zzav zzg;

    public zzls(zzhy zzhyVar) {
        super(zzhyVar);
        this.zzf = new ArrayList();
        this.zze = new zznl(zzhyVar.zzb());
        this.zza = new zzmq(this);
        this.zzd = new zzlt(this, zzhyVar);
        this.zzg = new zzmg(this, zzhyVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaq() {
        zzt();
        zzj().zzp().zza("Processing queued up service tasks", Integer.valueOf(this.zzf.size()));
        Iterator<Runnable> it = this.zzf.iterator();
        while (it.hasNext()) {
            try {
                it.next().run();
            } catch (RuntimeException e9) {
                zzj().zzg().zza("Task exception while flushing queue", e9);
            }
        }
        this.zzf.clear();
        this.zzg.zza();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzar() {
        zzt();
        this.zze.zzb();
        this.zzd.zza(zzbh.zzal.zza(null).longValue());
    }

    public final zzaj zzaa() {
        zzt();
        zzu();
        zzgb zzgbVar = this.zzb;
        if (zzgbVar == null) {
            zzae();
            zzj().zzc().zza("Failed to get consents; not connected to service yet.");
            return null;
        }
        zzo zzoVarZzc = zzc(false);
        d0.h(zzoVarZzc);
        try {
            zzaj zzajVarZza = zzgbVar.zza(zzoVarZzc);
            zzar();
            return zzajVarZza;
        } catch (RemoteException e9) {
            zzj().zzg().zza("Failed to get consents; remote exception", e9);
            return null;
        }
    }

    public final Boolean zzab() {
        return this.zzc;
    }

    public final void zzac() {
        zzt();
        zzu();
        zza(new zzme(this, zzc(true)));
    }

    public final void zzad() {
        zzt();
        zzu();
        zzo zzoVarZzc = zzc(true);
        zzh().zzab();
        zza(new zzmb(this, zzoVarZzc));
    }

    public final void zzae() {
        zzt();
        zzu();
        if (zzal()) {
            return;
        }
        if (zzap()) {
            this.zza.zza();
            return;
        }
        if (zze().zzy()) {
            return;
        }
        List<ResolveInfo> listQueryIntentServices = zza().getPackageManager().queryIntentServices(new Intent().setClassName(zza(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            zzj().zzg().zza("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        Intent intent = new Intent("com.google.android.gms.measurement.START");
        intent.setComponent(new ComponentName(zza(), "com.google.android.gms.measurement.AppMeasurementService"));
        this.zza.zza(intent);
    }

    public final void zzaf() {
        zzt();
        zzu();
        this.zza.zzb();
        try {
            b.b().c(zza(), this.zza);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.zzb = null;
    }

    public final /* synthetic */ void zzag() {
        zzgb zzgbVar = this.zzb;
        if (zzgbVar == null) {
            zzj().zzg().zza("Failed to send Dma consent settings to service");
            return;
        }
        try {
            zzo zzoVarZzc = zzc(false);
            d0.h(zzoVarZzc);
            zzgbVar.zzg(zzoVarZzc);
            zzar();
        } catch (RemoteException e9) {
            zzj().zzg().zza("Failed to send Dma consent settings to the service", e9);
        }
    }

    public final /* synthetic */ void zzah() {
        zzgb zzgbVar = this.zzb;
        if (zzgbVar == null) {
            zzj().zzg().zza("Failed to send storage consent settings to service");
            return;
        }
        try {
            zzo zzoVarZzc = zzc(false);
            d0.h(zzoVarZzc);
            zzgbVar.zzi(zzoVarZzc);
            zzar();
        } catch (RemoteException e9) {
            zzj().zzg().zza("Failed to send storage consent settings to the service", e9);
        }
    }

    public final void zzai() {
        zzt();
        zzu();
        zzo zzoVarZzc = zzc(false);
        zzh().zzaa();
        zza(new zzma(this, zzoVarZzc));
    }

    public final void zzaj() {
        zzt();
        zzu();
        zza(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlu
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzag();
            }
        });
    }

    public final void zzak() {
        zzt();
        zzu();
        zza(new zzmh(this, zzc(true)));
    }

    public final boolean zzal() {
        zzt();
        zzu();
        return this.zzb != null;
    }

    public final boolean zzam() {
        zzt();
        zzu();
        return !zzap() || zzq().zzg() >= 200900;
    }

    public final boolean zzan() {
        zzt();
        zzu();
        return !zzap() || zzq().zzg() >= zzbh.zzbt.zza(null).intValue();
    }

    public final boolean zzao() {
        zzt();
        zzu();
        return !zzap() || zzq().zzg() >= 241200;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzap() {
        /*
            Method dump skipped, instruction units count: 266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzls.zzap():boolean");
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzab zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzgg zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzgf zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzgh zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzgo zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzha zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzhv zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzjq zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzlj zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzls zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zznb zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzos zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzh
    public final boolean zzz() {
        return false;
    }

    public static /* synthetic */ void zzd(zzls zzlsVar) {
        zzlsVar.zzt();
        if (zzlsVar.zzal()) {
            zzlsVar.zzj().zzp().zza("Inactivity, disconnecting from the service");
            zzlsVar.zzaf();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ b4.a zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzb zzc() {
        return super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzag zze() {
        return super.zze();
    }

    private final zzo zzc(boolean z5) {
        return zzg().zza(z5 ? zzj().zzx() : null);
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public final void zzb(boolean z5) {
        zzt();
        zzu();
        v7.a();
        if (!zze().zza(zzbh.zzcx) && z5) {
            zzh().zzaa();
        }
        zza(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlr
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzah();
            }
        });
    }

    public static /* synthetic */ void zza(zzls zzlsVar, ComponentName componentName) {
        zzlsVar.zzt();
        if (zzlsVar.zzb != null) {
            zzlsVar.zzb = null;
            zzlsVar.zzj().zzp().zza("Disconnected from device MeasurementService", componentName);
            zzlsVar.zzt();
            zzlsVar.zzae();
        }
    }

    public final void zza(w0 w0Var) {
        zzt();
        zzu();
        zza(new zzmc(this, zzc(false), w0Var));
    }

    public final void zza(AtomicReference<String> atomicReference) {
        zzt();
        zzu();
        zza(new zzlz(this, atomicReference, zzc(false)));
    }

    public final void zza(w0 w0Var, String str, String str2) {
        zzt();
        zzu();
        zza(new zzmo(this, str, str2, zzc(false), w0Var));
    }

    public final void zza(AtomicReference<List<zzae>> atomicReference, String str, String str2, String str3) {
        zzt();
        zzu();
        zza(new zzml(this, atomicReference, str, str2, str3, zzc(false)));
    }

    public final void zza(AtomicReference<List<zzno>> atomicReference, Bundle bundle) {
        zzt();
        zzu();
        zza(new zzly(this, atomicReference, zzc(false), bundle));
    }

    public final void zza(AtomicReference<List<zzon>> atomicReference, boolean z5) {
        zzt();
        zzu();
        zza(new zzlv(this, atomicReference, zzc(false), z5));
    }

    public final void zza(w0 w0Var, String str, String str2, boolean z5) {
        zzt();
        zzu();
        zza(new zzlw(this, str, str2, zzc(false), z5, w0Var));
    }

    public final void zza(AtomicReference<List<zzon>> atomicReference, String str, String str2, String str3, boolean z5) {
        zzt();
        zzu();
        zza(new zzmn(this, atomicReference, str, str2, str3, zzc(false), z5));
    }

    public final void zza(zzbf zzbfVar, String str) {
        d0.h(zzbfVar);
        zzt();
        zzu();
        zza(new zzmj(this, true, zzc(true), zzh().zza(zzbfVar), zzbfVar, str));
    }

    public final void zza(w0 w0Var, zzbf zzbfVar, String str) {
        zzt();
        zzu();
        if (zzq().zza(12451000) != 0) {
            zzj().zzu().zza("Not bundling data. Service unavailable or out of date");
            zzq().zza(w0Var, new byte[0]);
        } else {
            zza(new zzmi(this, zzbfVar, str, w0Var));
        }
    }

    private final void zza(Runnable runnable) {
        zzt();
        if (zzal()) {
            runnable.run();
        } else {
            if (this.zzf.size() >= 1000) {
                zzj().zzg().zza("Discarding data. Max runnable queue size reached");
                return;
            }
            this.zzf.add(runnable);
            this.zzg.zza(60000L);
            zzae();
        }
    }

    public final void zza(zzgb zzgbVar, y3.a aVar, zzo zzoVar) throws Throwable {
        int size;
        long j3;
        long jElapsedRealtime;
        zzt();
        zzu();
        int i6 = 100;
        int i9 = 0;
        for (int i10 = 100; i9 < 1001 && i6 == i10; i10 = 100) {
            ArrayList arrayList = new ArrayList();
            List<y3.a> listZza = zzh().zza(i10);
            if (listZza != null) {
                arrayList.addAll(listZza);
                size = listZza.size();
            } else {
                size = 0;
            }
            if (aVar != null && size < i10) {
                arrayList.add(aVar);
            }
            boolean zZza = zze().zza(zzbh.zzce);
            int size2 = arrayList.size();
            int i11 = 0;
            while (i11 < size2) {
                int i12 = i11 + 1;
                y3.a aVar2 = (y3.a) arrayList.get(i11);
                if (aVar2 instanceof zzbf) {
                    if (zZza) {
                        try {
                            ((b4.b) this.zzu.zzb()).getClass();
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            try {
                                ((b4.b) this.zzu.zzb()).getClass();
                                jElapsedRealtime = SystemClock.elapsedRealtime();
                                j3 = jCurrentTimeMillis;
                            } catch (RemoteException e9) {
                                e = e9;
                                jElapsedRealtime = 0;
                                j3 = jCurrentTimeMillis;
                                zzj().zzg().zza("Failed to send event to the service", e);
                                if (!zZza && j3 != 0) {
                                    zzgm zzgmVarZza = zzgm.zza(this.zzu);
                                    ((b4.b) this.zzu.zzb()).getClass();
                                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                                    ((b4.b) this.zzu.zzb()).getClass();
                                    zzgmVarZza.zza(36301, 13, j3, jCurrentTimeMillis2, (int) (SystemClock.elapsedRealtime() - jElapsedRealtime));
                                }
                                i11 = i12;
                            }
                        } catch (RemoteException e10) {
                            e = e10;
                            j3 = 0;
                            jElapsedRealtime = 0;
                        }
                    } else {
                        j3 = 0;
                        jElapsedRealtime = 0;
                    }
                    try {
                        zzgbVar.zza((zzbf) aVar2, zzoVar);
                        if (zZza) {
                            zzj().zzp().zza("Logging telemetry for logEvent from database");
                            zzgm zzgmVarZza2 = zzgm.zza(this.zzu);
                            ((b4.b) this.zzu.zzb()).getClass();
                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                            ((b4.b) this.zzu.zzb()).getClass();
                            zzgmVarZza2.zza(36301, 0, j3, jCurrentTimeMillis3, (int) (SystemClock.elapsedRealtime() - jElapsedRealtime));
                        }
                    } catch (RemoteException e11) {
                        e = e11;
                        zzj().zzg().zza("Failed to send event to the service", e);
                        if (!zZza) {
                        }
                    }
                } else if (aVar2 instanceof zzon) {
                    try {
                        zzgbVar.zza((zzon) aVar2, zzoVar);
                    } catch (RemoteException e12) {
                        zzj().zzg().zza("Failed to send user property to the service", e12);
                    }
                } else if (aVar2 instanceof zzae) {
                    try {
                        zzgbVar.zza((zzae) aVar2, zzoVar);
                    } catch (RemoteException e13) {
                        zzj().zzg().zza("Failed to send conditional user property to the service", e13);
                    }
                } else {
                    zzj().zzg().zza("Discarding data. Unrecognized parcel type.");
                }
                i11 = i12;
            }
            i9++;
            i6 = size;
        }
    }

    public final void zza(zzae zzaeVar) {
        d0.h(zzaeVar);
        zzt();
        zzu();
        zza(new zzmm(this, true, zzc(true), zzh().zza(zzaeVar), new zzae(zzaeVar), zzaeVar));
    }

    public final void zza(boolean z5) {
        zzt();
        zzu();
        v7.a();
        if (!zze().zza(zzbh.zzcx) && z5) {
            zzh().zzaa();
        }
        if (zzan()) {
            zza(new zzmk(this, zzc(false)));
        }
    }

    public final void zza(zzlk zzlkVar) {
        zzt();
        zzu();
        zza(new zzmd(this, zzlkVar));
    }

    public final void zza(Bundle bundle) {
        zzt();
        zzu();
        zza(new zzmf(this, zzc(false), bundle));
    }

    public final void zza(zzgb zzgbVar) {
        zzt();
        d0.h(zzgbVar);
        this.zzb = zzgbVar;
        zzar();
        zzaq();
    }

    public final void zza(zzon zzonVar) {
        zzt();
        zzu();
        zza(new zzlx(this, zzc(true), zzh().zza(zzonVar), zzonVar));
    }
}
