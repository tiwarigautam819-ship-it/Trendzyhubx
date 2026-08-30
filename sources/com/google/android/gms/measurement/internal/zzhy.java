package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import b4.b;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.e1;
import com.google.android.gms.internal.measurement.e5;
import com.google.android.gms.internal.measurement.f9;
import com.google.android.gms.internal.measurement.g5;
import com.google.android.gms.internal.measurement.o6;
import com.google.android.gms.internal.measurement.u4;
import com.google.android.gms.internal.measurement.v4;
import com.google.android.gms.internal.measurement.x9;
import com.google.android.gms.internal.measurement.y4;
import com.google.android.gms.measurement.internal.zzje;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Serializable;
import java.net.URL;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
import q2.x;
import q4.d;
import q4.e;
import q4.f;
import z.c;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class zzhy implements zzjc {
    private static volatile zzhy zzb;
    final long zza;
    private Boolean zzaa;
    private long zzab;
    private volatile Boolean zzac;
    private Boolean zzad;
    private Boolean zzae;
    private volatile boolean zzaf;
    private int zzag;
    private int zzah;
    private final Context zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final boolean zzg;
    private final zzab zzh;
    private final zzag zzi;
    private final zzha zzj;
    private final zzgo zzk;
    private final zzhv zzl;
    private final zznb zzm;
    private final zzos zzn;
    private final zzgh zzo;
    private final b4.a zzp;
    private final zzlj zzq;
    private final zzjq zzr;
    private final zzb zzs;
    private final zzle zzt;
    private final String zzu;
    private zzgf zzv;
    private zzls zzw;
    private zzaz zzx;
    private zzgg zzy;
    private boolean zzz = false;
    private AtomicInteger zzai = new AtomicInteger(0);

    private zzhy(zzjo zzjoVar) {
        d eVar;
        Bundle bundle;
        boolean z5 = false;
        d0.h(zzjoVar);
        zzab zzabVar = new zzab(zzjoVar.zza);
        this.zzh = zzabVar;
        zzga.zza = zzabVar;
        Context context = zzjoVar.zza;
        this.zzc = context;
        this.zzd = zzjoVar.zzb;
        this.zze = zzjoVar.zzc;
        this.zzf = zzjoVar.zzd;
        this.zzg = zzjoVar.zzh;
        this.zzac = zzjoVar.zze;
        this.zzu = zzjoVar.zzj;
        this.zzaf = true;
        e1 e1Var = zzjoVar.zzg;
        if (e1Var != null && (bundle = e1Var.f1575g) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.zzad = (Boolean) obj;
            }
            Object obj2 = e1Var.f1575g.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.zzae = (Boolean) obj2;
            }
        }
        if (e5.h == null && context != null) {
            Object obj3 = e5.f1577g;
            synchronized (obj3) {
                try {
                    if (e5.h == null) {
                        synchronized (obj3) {
                            v4 v4Var = e5.h;
                            Context applicationContext = context.getApplicationContext();
                            applicationContext = applicationContext == null ? context : applicationContext;
                            if (v4Var == null || v4Var.f1960a != applicationContext) {
                                if (v4Var != null) {
                                    u4.c();
                                    g5.b();
                                    y4.I();
                                }
                                o6 o6Var = new o6();
                                o6Var.f1792a = applicationContext;
                                if (o6Var instanceof Serializable) {
                                    eVar = new e(o6Var);
                                } else {
                                    f fVar = new f();
                                    fVar.f4857a = o6Var;
                                    eVar = fVar;
                                }
                                e5.h = new v4(applicationContext, eVar);
                                e5.f1578i.incrementAndGet();
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                } finally {
                }
            }
        }
        this.zzp = b.f945a;
        Long l4 = zzjoVar.zzi;
        this.zza = l4 != null ? l4.longValue() : System.currentTimeMillis();
        this.zzi = new zzag(this);
        zzha zzhaVar = new zzha(this);
        zzhaVar.zzad();
        this.zzj = zzhaVar;
        zzgo zzgoVar = new zzgo(this);
        zzgoVar.zzad();
        this.zzk = zzgoVar;
        zzos zzosVar = new zzos(this);
        zzosVar.zzad();
        this.zzn = zzosVar;
        this.zzo = new zzgh(new zzjn(zzjoVar, this));
        this.zzs = new zzb(this);
        zzlj zzljVar = new zzlj(this);
        zzljVar.zzv();
        this.zzq = zzljVar;
        zzjq zzjqVar = new zzjq(this);
        zzjqVar.zzv();
        this.zzr = zzjqVar;
        zznb zznbVar = new zznb(this);
        zznbVar.zzv();
        this.zzm = zznbVar;
        zzle zzleVar = new zzle(this);
        zzleVar.zzad();
        this.zzt = zzleVar;
        zzhv zzhvVar = new zzhv(this);
        zzhvVar.zzad();
        this.zzl = zzhvVar;
        e1 e1Var2 = zzjoVar.zzg;
        if (e1Var2 != null && e1Var2.f1570b != 0) {
            z5 = true;
        }
        boolean z8 = !z5;
        if (context.getApplicationContext() instanceof Application) {
            zzp().zzb(z8);
        } else {
            zzj().zzu().zza("Application context is not an Application");
        }
        zzhvVar.zzb(new zzid(this, zzjoVar));
    }

    private final zzle zzai() {
        zza((zzjd) this.zzt);
        return this.zzt;
    }

    @Override // com.google.android.gms.measurement.internal.zzjc
    public final Context zza() {
        return this.zzc;
    }

    public final void zzaa() {
        this.zzag++;
    }

    public final boolean zzab() {
        return this.zzac != null && this.zzac.booleanValue();
    }

    public final boolean zzac() {
        return zzc() == 0;
    }

    public final boolean zzad() {
        zzl().zzt();
        return this.zzaf;
    }

    public final boolean zzae() {
        return TextUtils.isEmpty(this.zzd);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzaf() {
        /*
            Method dump skipped, instruction units count: 208
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzhy.zzaf():boolean");
    }

    public final boolean zzag() {
        return this.zzg;
    }

    public final boolean zzah() {
        zzl().zzt();
        zza((zzjd) zzai());
        String strZzad = zzh().zzad();
        if (!this.zzi.zzv()) {
            zzj().zzp().zza("ADID collection is disabled from Manifest. Skipping");
            return false;
        }
        Pair<String, Boolean> pairZza = zzn().zza(strZzad);
        if (((Boolean) pairZza.second).booleanValue() || TextUtils.isEmpty((CharSequence) pairZza.first)) {
            zzj().zzp().zza("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return false;
        }
        if (!zzai().zzc()) {
            zzj().zzu().zza("Network is not available for Deferred Deep Link request. Skipping");
            return false;
        }
        StringBuilder sb = new StringBuilder();
        zzls zzlsVarZzr = zzr();
        zzlsVarZzr.zzt();
        zzlsVarZzr.zzu();
        if (!zzlsVarZzr.zzap() || zzlsVarZzr.zzq().zzg() >= 234200) {
            zzaj zzajVarZzab = zzp().zzab();
            Bundle bundle = zzajVarZzab != null ? zzajVarZzab.zza : null;
            if (bundle == null) {
                int i6 = this.zzah;
                this.zzah = i6 + 1;
                boolean z5 = i6 < 10;
                zzj().zzc().zza(x.g("Failed to retrieve DMA consent from the service, ", z5 ? "Retrying." : "Skipping.", " retryCount"), Integer.valueOf(this.zzah));
                return z5;
            }
            zzje zzjeVarZza = zzje.zza(bundle, 100);
            sb.append("&gcs=");
            sb.append(zzjeVarZza.zze());
            zzax zzaxVarZza = zzax.zza(bundle, 100);
            sb.append("&dma=");
            sb.append(zzaxVarZza.zzd() == Boolean.FALSE ? 0 : 1);
            if (!TextUtils.isEmpty(zzaxVarZza.zze())) {
                sb.append("&dma_cps=");
                sb.append(zzaxVarZza.zze());
            }
            int i9 = zzax.zza(bundle) == Boolean.TRUE ? 0 : 1;
            sb.append("&npa=");
            sb.append(i9);
            zzj().zzp().zza("Consent query parameters to Bow", sb);
        }
        zzos zzosVarZzt = zzt();
        zzh();
        URL urlZza = zzosVarZzt.zza(106000L, strZzad, (String) pairZza.first, zzn().zzp.zza() - 1, sb.toString());
        if (urlZza != null) {
            zzle zzleVarZzai = zzai();
            zzld zzldVar = new zzld() { // from class: com.google.android.gms.measurement.internal.zzia
                @Override // com.google.android.gms.measurement.internal.zzld
                public final void zza(String str, int i10, Throwable th, byte[] bArr, Map map) {
                    this.zza.zza(str, i10, th, bArr, map);
                }
            };
            zzleVarZzai.zzt();
            zzleVarZzai.zzac();
            zzleVarZzai.zzl().zza(new zzlg(zzleVarZzai, strZzad, urlZza, null, null, zzldVar));
        }
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzjc
    public final b4.a zzb() {
        return this.zzp;
    }

    public final int zzc() {
        zzl().zzt();
        if (this.zzi.zzx()) {
            return 1;
        }
        Boolean bool = this.zzae;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        if (!zzad()) {
            return 8;
        }
        Boolean boolZzv = zzn().zzv();
        if (boolZzv != null) {
            return boolZzv.booleanValue() ? 0 : 3;
        }
        Boolean boolZze = this.zzi.zze("firebase_analytics_collection_enabled");
        if (boolZze != null) {
            return boolZze.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.zzad;
        return bool2 != null ? bool2.booleanValue() ? 0 : 5 : (this.zzac == null || this.zzac.booleanValue()) ? 0 : 7;
    }

    @Override // com.google.android.gms.measurement.internal.zzjc
    public final zzab zzd() {
        return this.zzh;
    }

    public final zzb zze() {
        zzb zzbVar = this.zzs;
        if (zzbVar != null) {
            return zzbVar;
        }
        throw new IllegalStateException("Component not created");
    }

    public final zzag zzf() {
        return this.zzi;
    }

    public final zzaz zzg() {
        zza((zzjd) this.zzx);
        return this.zzx;
    }

    public final zzgg zzh() {
        zza((zzh) this.zzy);
        return this.zzy;
    }

    public final zzgf zzi() {
        zza((zzh) this.zzv);
        return this.zzv;
    }

    @Override // com.google.android.gms.measurement.internal.zzjc
    public final zzgo zzj() {
        zza((zzjd) this.zzk);
        return this.zzk;
    }

    public final zzgh zzk() {
        return this.zzo;
    }

    @Override // com.google.android.gms.measurement.internal.zzjc
    public final zzhv zzl() {
        zza((zzjd) this.zzl);
        return this.zzl;
    }

    public final zzgo zzm() {
        zzgo zzgoVar = this.zzk;
        if (zzgoVar == null || !zzgoVar.zzaf()) {
            return null;
        }
        return this.zzk;
    }

    public final zzha zzn() {
        zza((zzja) this.zzj);
        return this.zzj;
    }

    public final zzhv zzo() {
        return this.zzl;
    }

    public final zzjq zzp() {
        zza((zzh) this.zzr);
        return this.zzr;
    }

    public final zzlj zzq() {
        zza((zzh) this.zzq);
        return this.zzq;
    }

    public final zzls zzr() {
        zza((zzh) this.zzw);
        return this.zzw;
    }

    public final zznb zzs() {
        zza((zzh) this.zzm);
        return this.zzm;
    }

    public final zzos zzt() {
        zza((zzja) this.zzn);
        return this.zzn;
    }

    public final String zzu() {
        return this.zzd;
    }

    public final String zzv() {
        return this.zze;
    }

    public final String zzw() {
        return this.zzf;
    }

    public final String zzx() {
        return this.zzu;
    }

    public final void zzy() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    public final void zzz() {
        this.zzai.incrementAndGet();
    }

    public static zzhy zza(Context context, e1 e1Var, Long l4) {
        Bundle bundle;
        if (e1Var != null && (e1Var.f1573e == null || e1Var.f1574f == null)) {
            e1Var = new e1(e1Var.f1569a, e1Var.f1570b, e1Var.f1571c, e1Var.f1572d, null, null, e1Var.f1575g, null);
        }
        d0.h(context);
        d0.h(context.getApplicationContext());
        if (zzb == null) {
            synchronized (zzhy.class) {
                try {
                    if (zzb == null) {
                        zzb = new zzhy(new zzjo(context, e1Var, l4));
                    }
                } finally {
                }
            }
        } else if (e1Var != null && (bundle = e1Var.f1575g) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            d0.h(zzb);
            zzb.zza(e1Var.f1575g.getBoolean("dataCollectionDefaultEnabled"));
        }
        d0.h(zzb);
        return zzb;
    }

    public final void zzb(boolean z5) {
        zzl().zzt();
        this.zzaf = z5;
    }

    public static /* synthetic */ void zza(zzhy zzhyVar, zzjo zzjoVar) {
        zzhyVar.zzl().zzt();
        zzaz zzazVar = new zzaz(zzhyVar);
        zzazVar.zzad();
        zzhyVar.zzx = zzazVar;
        zzgg zzggVar = new zzgg(zzhyVar, zzjoVar.zzf);
        zzggVar.zzv();
        zzhyVar.zzy = zzggVar;
        zzgf zzgfVar = new zzgf(zzhyVar);
        zzgfVar.zzv();
        zzhyVar.zzv = zzgfVar;
        zzls zzlsVar = new zzls(zzhyVar);
        zzlsVar.zzv();
        zzhyVar.zzw = zzlsVar;
        zzhyVar.zzn.zzae();
        zzhyVar.zzj.zzae();
        zzhyVar.zzy.zzw();
        zzhyVar.zzj().zzo().zza("App measurement initialized, version", 106000L);
        zzhyVar.zzj().zzo().zza("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String strZzad = zzggVar.zzad();
        if (TextUtils.isEmpty(zzhyVar.zzd)) {
            if (zzhyVar.zzt().zzd(strZzad, zzhyVar.zzi.zzu())) {
                zzhyVar.zzj().zzo().zza("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                zzhyVar.zzj().zzo().zza("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app " + strZzad);
            }
        }
        zzhyVar.zzj().zzc().zza("Debug-level message logging enabled");
        if (zzhyVar.zzag != zzhyVar.zzai.get()) {
            zzhyVar.zzj().zzg().zza("Not all components initialized", Integer.valueOf(zzhyVar.zzag), Integer.valueOf(zzhyVar.zzai.get()));
        }
        zzhyVar.zzz = true;
    }

    private static void zza(zzja zzjaVar) {
        if (zzjaVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private static void zza(zzh zzhVar) {
        if (zzhVar != null) {
            if (!zzhVar.zzy()) {
                throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(zzhVar.getClass())));
            }
            return;
        }
        throw new IllegalStateException("Component not created");
    }

    private static void zza(zzjd zzjdVar) {
        if (zzjdVar != null) {
            if (!zzjdVar.zzaf()) {
                throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(zzjdVar.getClass())));
            }
            return;
        }
        throw new IllegalStateException("Component not created");
    }

    public final /* synthetic */ void zza(String str, int i6, Throwable th, byte[] bArr, Map map) {
        if ((i6 == 200 || i6 == 204 || i6 == 304) && th == null) {
            zzn().zzo.zza(true);
            if (bArr != null && bArr.length != 0) {
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    String strOptString = jSONObject.optString("deeplink", "");
                    if (TextUtils.isEmpty(strOptString)) {
                        zzj().zzc().zza("Deferred Deep Link is empty.");
                        return;
                    }
                    String strOptString2 = jSONObject.optString("gclid", "");
                    String strOptString3 = jSONObject.optString("gbraid", "");
                    String strOptString4 = jSONObject.optString("gad_source", "");
                    double dOptDouble = jSONObject.optDouble("timestamp", 0.0d);
                    Bundle bundle = new Bundle();
                    f9.a();
                    zzag zzagVar = this.zzi;
                    zzfz<Boolean> zzfzVar = zzbh.zzct;
                    if (zzagVar.zza(zzfzVar)) {
                        if (!zzt().zzi(strOptString)) {
                            zzj().zzu().zza("Deferred Deep Link validation failed. gclid, gbraid, deep link", strOptString2, strOptString3, strOptString);
                            return;
                        }
                        if (!TextUtils.isEmpty(strOptString3)) {
                            bundle.putString("gbraid", strOptString3);
                        }
                        if (!TextUtils.isEmpty(strOptString4)) {
                            bundle.putString("gad_source", strOptString4);
                        }
                    } else if (!zzt().zzi(strOptString)) {
                        zzj().zzu().zza("Deferred Deep Link validation failed. gclid, deep link", strOptString2, strOptString);
                        return;
                    }
                    f9.a();
                    this.zzi.zza(zzfzVar);
                    bundle.putString("gclid", strOptString2);
                    bundle.putString("_cis", "ddp");
                    this.zzr.zzc("auto", "_cmp", bundle);
                    zzos zzosVarZzt = zzt();
                    if (TextUtils.isEmpty(strOptString) || !zzosVarZzt.zza(strOptString, dOptDouble)) {
                        return;
                    }
                    zzosVarZzt.zza().sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
                    return;
                } catch (JSONException e9) {
                    zzj().zzg().zza("Failed to parse the Deferred Deep Link response. exception", e9);
                    return;
                }
            }
            zzj().zzc().zza("Deferred Deep Link response empty.");
            return;
        }
        zzj().zzu().zza("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i6), th);
    }

    public final void zza(boolean z5) {
        this.zzac = Boolean.valueOf(z5);
    }

    public final void zza(e1 e1Var) {
        zzje zzjeVarZza;
        Bundle bundle;
        Boolean boolZza;
        Bundle bundle2;
        Bundle bundle3;
        zzl().zzt();
        x9.a();
        zzag zzagVar = this.zzi;
        zzfz<Boolean> zzfzVar = zzbh.zzci;
        if (zzagVar.zza(zzfzVar) && zzt().zzw()) {
            zzos zzosVarZzt = zzt();
            zzosVarZzt.zzt();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
            c.c(zzosVarZzt.zza(), new zzp(zzosVarZzt.zzu), intentFilter);
            zzosVarZzt.zzj().zzc().zza("Registered app receiver");
        }
        zzje zzjeVarZzo = zzn().zzo();
        int iZza = zzjeVarZzo.zza();
        zzjh zzjhVarZzc = this.zzi.zzc("google_analytics_default_allow_ad_storage", false);
        zzjh zzjhVarZzc2 = this.zzi.zzc("google_analytics_default_allow_analytics_storage", false);
        zzjh zzjhVar = zzjh.UNINITIALIZED;
        if ((zzjhVarZzc != zzjhVar || zzjhVarZzc2 != zzjhVar) && zzn().zza(-10)) {
            zzjeVarZza = zzje.zza(zzjhVarZzc, zzjhVarZzc2, -10);
        } else {
            if (!TextUtils.isEmpty(zzh().zzae()) && (iZza == 0 || iZza == 30 || iZza == 10 || iZza == 30 || iZza == 30 || iZza == 40)) {
                zzp().zza(new zzje(null, null, -10), this.zza, false);
            } else if (TextUtils.isEmpty(zzh().zzae()) && e1Var != null && (bundle3 = e1Var.f1575g) != null && zzn().zza(30)) {
                zzjeVarZza = zzje.zza(bundle3, 30);
                if (!zzjeVarZza.zzi()) {
                }
            }
            zzjeVarZza = null;
        }
        if (zzjeVarZza != null) {
            zzp().zza(zzjeVarZza, this.zza, true);
            zzjeVarZzo = zzjeVarZza;
        }
        zzp().zza(zzjeVarZzo);
        int iZza2 = zzn().zzn().zza();
        zzjh zzjhVarZzc3 = this.zzi.zzc("google_analytics_default_allow_ad_personalization_signals", true);
        if (zzjhVarZzc3 != zzjhVar) {
            zzj().zzp().zza("Default ad personalization consent from Manifest", zzjhVarZzc3);
        }
        zzjh zzjhVarZzc4 = this.zzi.zzc("google_analytics_default_allow_ad_user_data", true);
        if (zzjhVarZzc4 != zzjhVar && zzje.zza(-10, iZza2)) {
            zzp().zza(zzax.zza(zzjhVarZzc4, -10), true);
        } else if (!TextUtils.isEmpty(zzh().zzae()) && (iZza2 == 0 || iZza2 == 30)) {
            zzp().zza(new zzax(null, -10), true);
        } else {
            if (TextUtils.isEmpty(zzh().zzae()) && e1Var != null && (bundle2 = e1Var.f1575g) != null && zzje.zza(30, iZza2)) {
                zzax zzaxVarZza = zzax.zza(bundle2, 30);
                if (zzaxVarZza.zzg()) {
                    zzp().zza(zzaxVarZza, true);
                }
            }
            if (TextUtils.isEmpty(zzh().zzae()) && e1Var != null && (bundle = e1Var.f1575g) != null && zzn().zzh.zza() == null && (boolZza = zzax.zza(bundle)) != null) {
                zzp().zza(e1Var.f1573e, FirebaseAnalytics.UserProperty.ALLOW_AD_PERSONALIZATION_SIGNALS, (Object) boolZza.toString(), false);
            }
        }
        Boolean boolZze = this.zzi.zze("google_analytics_tcf_data_enabled");
        if (boolZze == null ? true : boolZze.booleanValue()) {
            zzj().zzc().zza("TCF client enabled.");
            zzp().zzat();
            zzp().zzar();
        }
        if (zzn().zzc.zza() == 0) {
            zzj().zzp().zza("Persisting first open", Long.valueOf(this.zza));
            zzn().zzc.zza(this.zza);
        }
        zzp().zza.zzb();
        if (!zzaf()) {
            if (zzac()) {
                if (!zzt().zze("android.permission.INTERNET")) {
                    zzj().zzg().zza("App is missing INTERNET permission");
                }
                if (!zzt().zze("android.permission.ACCESS_NETWORK_STATE")) {
                    zzj().zzg().zza("App is missing ACCESS_NETWORK_STATE permission");
                }
                if (!d4.c.a(this.zzc).d() && !this.zzi.zzy()) {
                    if (!zzos.zza(this.zzc)) {
                        zzj().zzg().zza("AppMeasurementReceiver not registered/enabled");
                    }
                    if (!zzos.zza(this.zzc, false)) {
                        zzj().zzg().zza("AppMeasurementService not registered/enabled");
                    }
                }
                zzj().zzg().zza("Uploading is not possible. App measurement disabled");
            }
        } else {
            if (!TextUtils.isEmpty(zzh().zzae()) || !TextUtils.isEmpty(zzh().zzac())) {
                zzt();
                if (zzos.zza(zzh().zzae(), zzn().zzy(), zzh().zzac(), zzn().zzx())) {
                    zzj().zzo().zza("Rechecking which service to use due to a GMP App Id change");
                    zzn().zzz();
                    zzi().zzaa();
                    this.zzw.zzaf();
                    this.zzw.zzae();
                    zzn().zzc.zza(this.zza);
                    zzn().zze.zza(null);
                }
                zzn().zzc(zzh().zzae());
                zzn().zzb(zzh().zzac());
            }
            if (!zzn().zzo().zza(zzje.zza.ANALYTICS_STORAGE)) {
                zzn().zze.zza(null);
            }
            zzp().zzc(zzn().zze.zza());
            if (!zzt().zzx() && !TextUtils.isEmpty(zzn().zzq.zza())) {
                zzj().zzu().zza("Remote config removed with active feature rollouts");
                zzn().zzq.zza(null);
            }
            if (!TextUtils.isEmpty(zzh().zzae()) || !TextUtils.isEmpty(zzh().zzac())) {
                boolean zZzac = zzac();
                if (!zzn().zzab() && !this.zzi.zzx()) {
                    zzn().zzb(!zZzac);
                }
                if (zZzac) {
                    zzp().zzan();
                }
                zzs().zza.zza();
                zzr().zza(new AtomicReference<>());
                zzr().zza(zzn().zzt.zza());
            }
        }
        x9.a();
        if (this.zzi.zza(zzfzVar) && zzt().zzw()) {
            final zzjq zzjqVarZzp = zzp();
            Objects.requireNonNull(zzjqVarZzp);
            new Thread(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzib
                @Override // java.lang.Runnable
                public final void run() {
                    zzjqVarZzp.zzap();
                }
            }).start();
        }
        zzn().zzj.zza(true);
    }
}
