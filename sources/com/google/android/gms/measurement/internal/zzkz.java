package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import b4.b;
import com.google.android.gms.internal.measurement.f9;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzkz implements Application.ActivityLifecycleCallbacks {
    private final /* synthetic */ zzjq zza;

    public zzkz(zzjq zzjqVar) {
        this.zza = zzjqVar;
    }

    public static /* synthetic */ void zza(zzkz zzkzVar, boolean z5, Uri uri, String str, String str2) {
        Bundle bundleZza;
        zzkzVar.zza.zzt();
        try {
            zzos zzosVarZzq = zzkzVar.zza.zzq();
            f9.a();
            zzag zzagVarZze = zzkzVar.zza.zze();
            zzfz<Boolean> zzfzVar = zzbh.zzct;
            boolean zZza = zzagVarZze.zza(zzfzVar);
            if (TextUtils.isEmpty(str2)) {
                bundleZza = null;
            } else {
                if (!str2.contains("gclid") && (!zZza || !str2.contains("gbraid"))) {
                    if (!str2.contains("utm_campaign") && !str2.contains("utm_source") && !str2.contains("utm_medium") && !str2.contains("utm_id") && !str2.contains("dclid") && !str2.contains("srsltid") && !str2.contains("sfmc_id")) {
                        zzosVarZzq.zzj().zzc().zza("Activity created with data 'referrer' without required params");
                        bundleZza = null;
                    }
                }
                bundleZza = zzosVarZzq.zza(Uri.parse("https://google.com/search?".concat(str2)), zZza);
                if (bundleZza != null) {
                    bundleZza.putString("_cis", "referrer");
                }
            }
            if (z5) {
                zzos zzosVarZzq2 = zzkzVar.zza.zzq();
                f9.a();
                Bundle bundleZza2 = zzosVarZzq2.zza(uri, zzkzVar.zza.zze().zza(zzfzVar));
                if (bundleZza2 != null) {
                    bundleZza2.putString("_cis", "intent");
                    if (!bundleZza2.containsKey("gclid") && bundleZza != null && bundleZza.containsKey("gclid")) {
                        bundleZza2.putString("_cer", "gclid=" + bundleZza.getString("gclid"));
                    }
                    zzkzVar.zza.zzc(str, "_cmp", bundleZza2);
                    zzkzVar.zza.zza.zza(str, bundleZza2);
                }
            }
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            zzkzVar.zza.zzj().zzc().zza("Activity created with referrer", str2);
            if (zzkzVar.zza.zze().zza(zzbh.zzbq)) {
                if (bundleZza != null) {
                    zzkzVar.zza.zzc(str, "_cmp", bundleZza);
                    zzkzVar.zza.zza.zza(str, bundleZza);
                } else {
                    zzkzVar.zza.zzj().zzc().zza("Referrer does not contain valid parameters", str2);
                }
                zzkzVar.zza.zza("auto", "_ldl", (Object) null, true);
                return;
            }
            if (!str2.contains("gclid") || (!str2.contains("utm_campaign") && !str2.contains("utm_source") && !str2.contains("utm_medium") && !str2.contains("utm_term") && !str2.contains("utm_content"))) {
                zzkzVar.zza.zzj().zzc().zza("Activity created with data 'referrer' without required params");
            } else {
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                zzkzVar.zza.zza("auto", "_ldl", (Object) str2, true);
            }
        } catch (RuntimeException e9) {
            zzkzVar.zza.zzj().zzg().zza("Throwable caught in handleReferrerForOnActivityCreated", e9);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004c  */
    @Override // android.app.Application.ActivityLifecycleCallbacks
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onActivityCreated(android.app.Activity r9, android.os.Bundle r10) throws java.lang.Throwable {
        /*
            r8 = this;
            com.google.android.gms.measurement.internal.zzjq r0 = r8.zza     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            com.google.android.gms.measurement.internal.zzgo r0 = r0.zzj()     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            com.google.android.gms.measurement.internal.zzgq r0 = r0.zzp()     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            java.lang.String r1 = "onActivityCreated"
            r0.zza(r1)     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            android.content.Intent r0 = r9.getIntent()     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            if (r0 != 0) goto L1f
            com.google.android.gms.measurement.internal.zzjq r0 = r8.zza
            com.google.android.gms.measurement.internal.zzlj r0 = r0.zzn()
            r0.zza(r9, r10)
            return
        L1f:
            android.net.Uri r1 = r0.getData()     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            if (r1 == 0) goto L35
            boolean r2 = r1.isHierarchical()     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            if (r2 == 0) goto L35
        L2b:
            r5 = r1
            goto L4e
        L2d:
            r0 = move-exception
            r3 = r8
            goto Lb7
        L31:
            r0 = move-exception
            r3 = r8
            goto L9e
        L35:
            android.os.Bundle r1 = r0.getExtras()     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            if (r1 == 0) goto L4c
            java.lang.String r2 = "com.android.vending.referral_url"
            java.lang.String r1 = r1.getString(r2)     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            if (r2 != 0) goto L4c
            android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            goto L2b
        L4c:
            r1 = 0
            goto L2b
        L4e:
            if (r5 == 0) goto L56
            boolean r1 = r5.isHierarchical()     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            if (r1 != 0) goto L58
        L56:
            r3 = r8
            goto L94
        L58:
            com.google.android.gms.measurement.internal.zzjq r1 = r8.zza     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            r1.zzq()     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            boolean r0 = com.google.android.gms.measurement.internal.zzos.zza(r0)     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            if (r0 == 0) goto L67
            java.lang.String r0 = "gs"
        L65:
            r6 = r0
            goto L6a
        L67:
            java.lang.String r0 = "auto"
            goto L65
        L6a:
            java.lang.String r0 = "referrer"
            java.lang.String r7 = r5.getQueryParameter(r0)     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            if (r10 != 0) goto L75
            r0 = 1
        L73:
            r4 = r0
            goto L77
        L75:
            r0 = 0
            goto L73
        L77:
            com.google.android.gms.measurement.internal.zzjq r0 = r8.zza     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            com.google.android.gms.measurement.internal.zzhv r0 = r0.zzl()     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            com.google.android.gms.measurement.internal.zzlc r2 = new com.google.android.gms.measurement.internal.zzlc     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L31
            r3 = r8
            r2.<init>(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L90 java.lang.RuntimeException -> L92
            r0.zzb(r2)     // Catch: java.lang.Throwable -> L90 java.lang.RuntimeException -> L92
            com.google.android.gms.measurement.internal.zzjq r0 = r3.zza
            com.google.android.gms.measurement.internal.zzlj r0 = r0.zzn()
            r0.zza(r9, r10)
            return
        L90:
            r0 = move-exception
            goto Lb7
        L92:
            r0 = move-exception
            goto L9e
        L94:
            com.google.android.gms.measurement.internal.zzjq r0 = r3.zza
            com.google.android.gms.measurement.internal.zzlj r0 = r0.zzn()
            r0.zza(r9, r10)
            return
        L9e:
            com.google.android.gms.measurement.internal.zzjq r1 = r3.zza     // Catch: java.lang.Throwable -> L90
            com.google.android.gms.measurement.internal.zzgo r1 = r1.zzj()     // Catch: java.lang.Throwable -> L90
            com.google.android.gms.measurement.internal.zzgq r1 = r1.zzg()     // Catch: java.lang.Throwable -> L90
            java.lang.String r2 = "Throwable caught in onActivityCreated"
            r1.zza(r2, r0)     // Catch: java.lang.Throwable -> L90
            com.google.android.gms.measurement.internal.zzjq r0 = r3.zza
            com.google.android.gms.measurement.internal.zzlj r0 = r0.zzn()
            r0.zza(r9, r10)
            return
        Lb7:
            com.google.android.gms.measurement.internal.zzjq r1 = r3.zza
            com.google.android.gms.measurement.internal.zzlj r1 = r1.zzn()
            r1.zza(r9, r10)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkz.onActivityCreated(android.app.Activity, android.os.Bundle):void");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.zza.zzn().zza(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.zza.zzn().zzb(activity);
        zznb zznbVarZzp = this.zza.zzp();
        ((b) zznbVarZzp.zzb()).getClass();
        zznbVarZzp.zzl().zzb(new zznd(zznbVarZzp, SystemClock.elapsedRealtime()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zznb zznbVarZzp = this.zza.zzp();
        ((b) zznbVarZzp.zzb()).getClass();
        zznbVarZzp.zzl().zzb(new zzne(zznbVarZzp, SystemClock.elapsedRealtime()));
        this.zza.zzn().zzc(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.zza.zzn().zzb(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
