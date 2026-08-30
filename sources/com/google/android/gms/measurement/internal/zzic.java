package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import b4.b;
import c5.h;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.a8;
import com.google.android.gms.internal.measurement.c;
import com.google.android.gms.internal.measurement.k0;
import com.google.android.gms.internal.measurement.v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import v3.f;
import v3.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzic extends zzge {
    private final zznv zza;
    private Boolean zzb;
    private String zzc;

    public zzic(zznv zznvVar) {
        this(zznvVar, null);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzb(final Bundle bundle, zzo zzoVar) {
        a8.f1524b.get();
        if (this.zza.zze().zza(zzbh.zzdg)) {
            zzb(zzoVar, false);
            final String str = zzoVar.zza;
            d0.h(str);
            zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzie
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzb(bundle, str);
                }
            });
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzc(zzo zzoVar) {
        zzb(zzoVar, false);
        zzb(new zzil(this, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzd(zzo zzoVar) {
        zzb(zzoVar, false);
        zzb(new zzii(this, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zze(zzo zzoVar) {
        d0.d(zzoVar.zza);
        zza(zzoVar.zza, false);
        zzb(new zzit(this, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzf(zzo zzoVar) {
        d0.d(zzoVar.zza);
        d0.h(zzoVar.zzt);
        zza(new zzis(this, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzg(final zzo zzoVar) {
        d0.d(zzoVar.zza);
        d0.h(zzoVar.zzt);
        zza(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzih
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzj(zzoVar);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzh(zzo zzoVar) {
        zzb(zzoVar, false);
        zzb(new zzij(this, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzi(final zzo zzoVar) {
        d0.d(zzoVar.zza);
        d0.h(zzoVar.zzt);
        zza(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzif
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzk(zzoVar);
            }
        });
    }

    public final /* synthetic */ void zzj(zzo zzoVar) {
        this.zza.zzr();
        this.zza.zzf(zzoVar);
    }

    public final /* synthetic */ void zzk(zzo zzoVar) {
        this.zza.zzr();
        this.zza.zzg(zzoVar);
    }

    private zzic(zznv zznvVar, String str) {
        d0.h(zznvVar);
        this.zza = zznvVar;
        this.zzc = null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final zzaj zza(zzo zzoVar) {
        zzb(zzoVar, false);
        d0.d(zzoVar.zza);
        try {
            return (zzaj) this.zza.zzl().zzb(new zziv(this, zzoVar)).get(10000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e9) {
            this.zza.zzj().zzg().zza("Failed to get consent. appId", zzgo.zza(zzoVar.zza), e9);
            return new zzaj(null);
        }
    }

    private final void zzd(zzbf zzbfVar, zzo zzoVar) {
        this.zza.zzr();
        this.zza.zza(zzbfVar, zzoVar);
    }

    public final void zzc(zzbf zzbfVar, zzo zzoVar) {
        boolean zB;
        if (!this.zza.zzi().zzk(zzoVar.zza)) {
            zzd(zzbfVar, zzoVar);
            return;
        }
        this.zza.zzj().zzp().zza("EES config found for", zzoVar.zza);
        zzhl zzhlVarZzi = this.zza.zzi();
        String str = zzoVar.zza;
        v vVar = TextUtils.isEmpty(str) ? null : (v) zzhlVarZzi.zza.get(str);
        if (vVar == null) {
            this.zza.zzj().zzp().zza("EES not loaded for", zzoVar.zza);
            zzd(zzbfVar, zzoVar);
            return;
        }
        int i6 = 0;
        try {
            Map<String, Object> mapZza = this.zza.zzp().zza(zzbfVar.zzb.zzb(), true);
            String strZza = zzji.zza(zzbfVar.zza);
            if (strZza == null) {
                strZza = zzbfVar.zza;
            }
            zB = vVar.b(new c(strZza, zzbfVar.zzd, mapZza));
        } catch (k0 unused) {
            this.zza.zzj().zzg().zza("EES error. appId, eventName", zzoVar.zzb, zzbfVar.zza);
            zB = false;
        }
        if (!zB) {
            this.zza.zzj().zzp().zza("EES was not applied to event", zzbfVar.zza);
            zzd(zzbfVar, zzoVar);
            return;
        }
        h hVar = vVar.f1955c;
        if (!((c) hVar.f1061c).equals((c) hVar.f1060b)) {
            this.zza.zzj().zzp().zza("EES edited event", zzbfVar.zza);
            zzd(this.zza.zzp().zza((c) vVar.f1955c.f1061c), zzoVar);
        } else {
            zzd(zzbfVar, zzoVar);
        }
        if (((ArrayList) vVar.f1955c.f1062d).isEmpty()) {
            return;
        }
        ArrayList arrayList = (ArrayList) vVar.f1955c.f1062d;
        int size = arrayList.size();
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            c cVar = (c) obj;
            this.zza.zzj().zzp().zza("EES logging created event", cVar.f1540a);
            zzd(this.zza.zzp().zza(cVar), zzoVar);
        }
    }

    public final zzbf zzb(zzbf zzbfVar, zzo zzoVar) {
        zzbe zzbeVar;
        if (!"_cmp".equals(zzbfVar.zza) || (zzbeVar = zzbfVar.zzb) == null || zzbeVar.zza() == 0) {
            return zzbfVar;
        }
        String strZzd = zzbfVar.zzb.zzd("_cis");
        if (!"referrer broadcast".equals(strZzd) && !"referrer API".equals(strZzd)) {
            return zzbfVar;
        }
        this.zza.zzj().zzo().zza("Event has been filtered ", zzbfVar.toString());
        return new zzbf("_cmpx", zzbfVar.zzb, zzbfVar.zzc, zzbfVar.zzd);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzno> zza(zzo zzoVar, Bundle bundle) {
        zzb(zzoVar, false);
        d0.h(zzoVar.zza);
        try {
            return (List) this.zza.zzl().zza(new zziy(this, zzoVar, bundle)).get();
        } catch (InterruptedException | ExecutionException e9) {
            this.zza.zzj().zzg().zza("Failed to get trigger URIs. appId", zzgo.zza(zzoVar.zza), e9);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final String zzb(zzo zzoVar) {
        zzb(zzoVar, false);
        return this.zza.zzb(zzoVar);
    }

    private final void zzb(zzo zzoVar, boolean z5) {
        d0.h(zzoVar);
        d0.d(zzoVar.zza);
        zza(zzoVar.zza, false);
        this.zza.zzq().zza(zzoVar.zzb, zzoVar.zzp);
    }

    public final /* synthetic */ void zzb(Bundle bundle, String str) {
        if (bundle.isEmpty()) {
            this.zza.zzf().zzp(str);
        } else {
            this.zza.zzf().zzb(str, bundle);
            this.zza.zzf().zza(str, bundle);
        }
    }

    private final void zzb(Runnable runnable) {
        d0.h(runnable);
        if (this.zza.zzl().zzg()) {
            runnable.run();
        } else {
            this.zza.zzl().zzb(runnable);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzon> zza(zzo zzoVar, boolean z5) {
        zzb(zzoVar, false);
        String str = zzoVar.zza;
        d0.h(str);
        try {
            List<zzop> list = (List) this.zza.zzl().zza(new zzjb(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzop zzopVar : list) {
                if (z5 || !zzos.zzg(zzopVar.zzc)) {
                    arrayList.add(new zzon(zzopVar));
                }
            }
            return arrayList;
        } catch (InterruptedException e9) {
            e = e9;
            this.zza.zzj().zzg().zza("Failed to get user properties. appId", zzgo.zza(zzoVar.zza), e);
            return null;
        } catch (ExecutionException e10) {
            e = e10;
            this.zza.zzj().zzg().zza("Failed to get user properties. appId", zzgo.zza(zzoVar.zza), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzae> zza(String str, String str2, zzo zzoVar) {
        zzb(zzoVar, false);
        String str3 = zzoVar.zza;
        d0.h(str3);
        try {
            return (List) this.zza.zzl().zza(new zzir(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e9) {
            this.zza.zzj().zzg().zza("Failed to get conditional user properties", e9);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzae> zza(String str, String str2, String str3) {
        zza(str, true);
        try {
            return (List) this.zza.zzl().zza(new zziq(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e9) {
            this.zza.zzj().zzg().zza("Failed to get conditional user properties as", e9);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzon> zza(String str, String str2, boolean z5, zzo zzoVar) {
        zzb(zzoVar, false);
        String str3 = zzoVar.zza;
        d0.h(str3);
        try {
            List<zzop> list = (List) this.zza.zzl().zza(new zzip(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzop zzopVar : list) {
                if (z5 || !zzos.zzg(zzopVar.zzc)) {
                    arrayList.add(new zzon(zzopVar));
                }
            }
            return arrayList;
        } catch (InterruptedException e9) {
            e = e9;
            this.zza.zzj().zzg().zza("Failed to query user properties. appId", zzgo.zza(zzoVar.zza), e);
            return Collections.EMPTY_LIST;
        } catch (ExecutionException e10) {
            e = e10;
            this.zza.zzj().zzg().zza("Failed to query user properties. appId", zzgo.zza(zzoVar.zza), e);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzon> zza(String str, String str2, String str3, boolean z5) {
        zza(str, true);
        try {
            List<zzop> list = (List) this.zza.zzl().zza(new zzio(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzop zzopVar : list) {
                if (z5 || !zzos.zzg(zzopVar.zzc)) {
                    arrayList.add(new zzon(zzopVar));
                }
            }
            return arrayList;
        } catch (InterruptedException e9) {
            e = e9;
            this.zza.zzj().zzg().zza("Failed to get user properties as. appId", zzgo.zza(str), e);
            return Collections.EMPTY_LIST;
        } catch (ExecutionException e10) {
            e = e10;
            this.zza.zzj().zzg().zza("Failed to get user properties as. appId", zzgo.zza(str), e);
            return Collections.EMPTY_LIST;
        }
    }

    private final void zza(String str, boolean z5) {
        if (!TextUtils.isEmpty(str)) {
            if (z5) {
                try {
                    if (this.zzb == null) {
                        this.zzb = Boolean.valueOf("com.google.android.gms".equals(this.zzc) || b4.c.c(this.zza.zza(), Binder.getCallingUid()) || g.a(this.zza.zza()).b(Binder.getCallingUid()));
                    }
                    if (this.zzb.booleanValue()) {
                        return;
                    }
                } catch (SecurityException e9) {
                    this.zza.zzj().zzg().zza("Measurement Service called with invalid calling package. appId", zzgo.zza(str));
                    throw e9;
                }
            }
            if (this.zzc == null) {
                Context contextZza = this.zza.zza();
                int callingUid = Binder.getCallingUid();
                int i6 = f.f5549e;
                if (b4.c.e(contextZza, callingUid, str)) {
                    this.zzc = str;
                }
            }
            if (str.equals(this.zzc)) {
                return;
            }
            throw new SecurityException("Unknown calling package name '" + str + "'.");
        }
        this.zza.zzj().zzg().zza("Measurement Service called without app package");
        throw new SecurityException("Measurement Service called without app package");
    }

    public final /* synthetic */ void zza(Bundle bundle, String str) {
        boolean zZza = this.zza.zze().zza(zzbh.zzde);
        boolean zZza2 = this.zza.zze().zza(zzbh.zzdg);
        if (bundle.isEmpty() && zZza && zZza2) {
            this.zza.zzf().zzp(str);
            return;
        }
        this.zza.zzf().zzb(str, bundle);
        if (zZza2 && this.zza.zzf().zzt(str)) {
            this.zza.zzf().zza(str, bundle);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzbf zzbfVar, zzo zzoVar) {
        d0.h(zzbfVar);
        zzb(zzoVar, false);
        zzb(new zziu(this, zzbfVar, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzbf zzbfVar, String str, String str2) {
        d0.h(zzbfVar);
        d0.d(str);
        zza(str, true);
        zzb(new zzix(this, zzbfVar, str));
    }

    private final void zza(Runnable runnable) {
        d0.h(runnable);
        if (this.zza.zzl().zzg()) {
            runnable.run();
        } else {
            this.zza.zzl().zzc(runnable);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzae zzaeVar, zzo zzoVar) {
        d0.h(zzaeVar);
        d0.h(zzaeVar.zzc);
        zzb(zzoVar, false);
        zzae zzaeVar2 = new zzae(zzaeVar);
        zzaeVar2.zza = zzoVar.zza;
        zzb(new zzin(this, zzaeVar2, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzae zzaeVar) {
        d0.h(zzaeVar);
        d0.h(zzaeVar.zzc);
        d0.d(zzaeVar.zza);
        zza(zzaeVar.zza, true);
        zzb(new zzim(this, new zzae(zzaeVar)));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(long j3, String str, String str2, String str3) {
        zzb(new zzik(this, str2, str3, str, j3));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(final Bundle bundle, zzo zzoVar) {
        zzb(zzoVar, false);
        final String str = zzoVar.zza;
        d0.h(str);
        zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzig
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zza(bundle, str);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzon zzonVar, zzo zzoVar) {
        d0.h(zzonVar);
        zzb(zzoVar, false);
        zzb(new zziz(this, zzonVar, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final byte[] zza(zzbf zzbfVar, String str) {
        d0.d(str);
        d0.h(zzbfVar);
        zza(str, true);
        this.zza.zzj().zzc().zza("Log and bundle. event", this.zza.zzg().zza(zzbfVar.zza));
        ((b) this.zza.zzb()).getClass();
        long jNanoTime = System.nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.zza.zzl().zzb(new zziw(this, zzbfVar, str)).get();
            if (bArr == null) {
                this.zza.zzj().zzg().zza("Log and bundle returned null. appId", zzgo.zza(str));
                bArr = new byte[0];
            }
            ((b) this.zza.zzb()).getClass();
            this.zza.zzj().zzc().zza("Log and bundle processed. event, size, time_ms", this.zza.zzg().zza(zzbfVar.zza), Integer.valueOf(bArr.length), Long.valueOf((System.nanoTime() / 1000000) - jNanoTime));
            return bArr;
        } catch (InterruptedException e9) {
            e = e9;
            this.zza.zzj().zzg().zza("Failed to log and bundle. appId, event, error", zzgo.zza(str), this.zza.zzg().zza(zzbfVar.zza), e);
            return null;
        } catch (ExecutionException e10) {
            e = e10;
            this.zza.zzj().zzg().zza("Failed to log and bundle. appId, event, error", zzgo.zza(str), this.zza.zzg().zza(zzbfVar.zza), e);
            return null;
        }
    }
}
