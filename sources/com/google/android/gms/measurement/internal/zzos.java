package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ext.SdkExtensions;
import android.text.TextUtils;
import android.util.Log;
import b1.e;
import b4.b;
import c1.d;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.ea;
import com.google.android.gms.internal.measurement.w0;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.FirebaseAnalytics;
import d4.c;
import d7.g;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import q2.x;
import v3.f;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzos extends zzjd {
    private static final String[] zza = {"firebase_", "google_", "ga_"};
    private static final String[] zzb = {"_err"};
    private SecureRandom zzc;
    private final AtomicLong zzd;
    private int zze;
    private e zzf;
    private Boolean zzg;
    private Integer zzh;

    public zzos(zzhy zzhyVar) {
        super(zzhyVar);
        this.zzh = null;
        this.zzd = new AtomicLong(0L);
    }

    public static int zzc() {
        if (Build.VERSION.SDK_INT < 30 || SdkExtensions.getExtensionVersion(30) <= 3) {
            return 0;
        }
        return SdkExtensions.getExtensionVersion(1000000);
    }

    private final int zzk(String str) {
        if (!zzb("event param", str)) {
            return 3;
        }
        if (zza("event param", (String[]) null, str)) {
            return !zza("event param", 40, str) ? 3 : 0;
        }
        return 14;
    }

    private final int zzl(String str) {
        if (!zzc("event param", str)) {
            return 3;
        }
        if (zza("event param", (String[]) null, str)) {
            return !zza("event param", 40, str) ? 3 : 0;
        }
        return 14;
    }

    private static int zzm(String str) {
        if ("_ldl".equals(str)) {
            return 2048;
        }
        if ("_id".equals(str)) {
            return 256;
        }
        return "_lgclid".equals(str) ? 100 : 36;
    }

    public static MessageDigest zzu() {
        MessageDigest messageDigest;
        for (int i6 = 0; i6 < 2; i6++) {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    private final boolean zzy() {
        Integer num;
        if (this.zzg == null) {
            e eVarZzo = zzo();
            boolean z5 = false;
            if (eVarZzo == null) {
                return false;
            }
            Integer num2 = null;
            try {
                num = (Integer) eVarZzo.a().get(10000L, TimeUnit.MILLISECONDS);
                if (num != null) {
                    try {
                        if (num.intValue() == 1) {
                            z5 = true;
                        }
                    } catch (InterruptedException e9) {
                        e = e9;
                        num2 = num;
                        zzj().zzu().zza("Measurement manager api exception", e);
                        this.zzg = Boolean.FALSE;
                        num = num2;
                    } catch (CancellationException e10) {
                        e = e10;
                        num2 = num;
                        zzj().zzu().zza("Measurement manager api exception", e);
                        this.zzg = Boolean.FALSE;
                        num = num2;
                    } catch (ExecutionException e11) {
                        e = e11;
                        num2 = num;
                        zzj().zzu().zza("Measurement manager api exception", e);
                        this.zzg = Boolean.FALSE;
                        num = num2;
                    } catch (TimeoutException e12) {
                        e = e12;
                        num2 = num;
                        zzj().zzu().zza("Measurement manager api exception", e);
                        this.zzg = Boolean.FALSE;
                        num = num2;
                    }
                }
                this.zzg = Boolean.valueOf(z5);
            } catch (InterruptedException e13) {
                e = e13;
            } catch (CancellationException e14) {
                e = e14;
            } catch (ExecutionException e15) {
                e = e15;
            } catch (TimeoutException e16) {
                e = e16;
            }
            zzj().zzp().zza("Measurement manager api status result", num);
        }
        return this.zzg.booleanValue();
    }

    public final int zza(int i6) {
        return v3.e.f5544b.b(zza(), 12451000);
    }

    @Override // com.google.android.gms.measurement.internal.zzjd
    public final void zzaa() {
        zzt();
        SecureRandom secureRandom = new SecureRandom();
        long jNextLong = secureRandom.nextLong();
        if (jNextLong == 0) {
            jNextLong = secureRandom.nextLong();
            if (jNextLong == 0) {
                zzj().zzu().zza("Utils falling back to Random for random id");
            }
        }
        this.zzd.set(jNextLong);
    }

    public final int zzb(String str) {
        if (!zzb("user property", str)) {
            return 6;
        }
        if (zza("user property", zzjj.zza, str)) {
            return !zza("user property", 24, str) ? 6 : 0;
        }
        return 15;
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzab zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzag zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    public final int zzg() {
        if (this.zzh == null) {
            v3.e eVar = v3.e.f5544b;
            Context contextZza = zza();
            eVar.getClass();
            int i6 = f.f5549e;
            int i9 = 0;
            try {
                i9 = contextZza.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            }
            this.zzh = Integer.valueOf(i9 / 1000);
        }
        return this.zzh.intValue();
    }

    @Override // com.google.android.gms.measurement.internal.zzjd
    public final boolean zzh() {
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzgh zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzgo zzj() {
        return super.zzj();
    }

    public final long zzn() {
        long andIncrement;
        long j3;
        if (this.zzd.get() != 0) {
            synchronized (this.zzd) {
                this.zzd.compareAndSet(-1L, 1L);
                andIncrement = this.zzd.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (this.zzd) {
            long jNanoTime = System.nanoTime();
            ((b) zzb()).getClass();
            long jNextLong = new Random(jNanoTime ^ System.currentTimeMillis()).nextLong();
            int i6 = this.zze + 1;
            this.zze = i6;
            j3 = jNextLong + ((long) i6);
        }
        return j3;
    }

    public final e zzo() {
        if (this.zzf == null) {
            Context contextZza = zza();
            g.f("context", contextZza);
            StringBuilder sb = new StringBuilder("AdServicesInfo.version=");
            int i6 = Build.VERSION.SDK_INT;
            z0.a aVar = z0.a.f6388a;
            sb.append(i6 >= 30 ? aVar.a() : 0);
            Log.d("MeasurementManager", sb.toString());
            d dVar = (i6 >= 30 ? aVar.a() : 0) >= 5 ? new d(contextZza) : null;
            this.zzf = dVar != null ? new b1.d(dVar) : null;
        }
        return this.zzf;
    }

    public final String zzp() {
        byte[] bArr = new byte[16];
        zzv().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzos zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    public final SecureRandom zzv() {
        zzt();
        if (this.zzc == null) {
            this.zzc = new SecureRandom();
        }
        return this.zzc;
    }

    public final boolean zzw() {
        zzt();
        return zzm() == 1;
    }

    public final boolean zzx() {
        try {
            zza().getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean zzd(String str) {
        return zze(zzbh.zzbd.zza(null), str);
    }

    public static boolean zzf(String str) {
        return zze(zzbh.zzca.zza(null), str);
    }

    public static boolean zzh(String str) {
        d0.d(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    public static boolean zzj(String str) {
        for (String str2 : zzb) {
            if (str2.equals(str)) {
                return false;
            }
        }
        return true;
    }

    public final boolean zze(String str) {
        zzt();
        if (c.a(zza()).f2277a.checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        zzj().zzc().zza("Permission not granted", str);
        return false;
    }

    public final boolean zzi(String str) {
        List<ResolveInfo> listQueryIntentActivities;
        return (TextUtils.isEmpty(str) || (listQueryIntentActivities = zza().getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(str)), 0)) == null || listQueryIntentActivities.isEmpty()) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int zza(java.lang.String r12, java.lang.String r13, java.lang.String r14, java.lang.Object r15, android.os.Bundle r16, java.util.List<java.lang.String> r17, boolean r18, boolean r19) {
        /*
            Method dump skipped, instruction units count: 308
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzos.zza(java.lang.String, java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ b4.a zzb() {
        return super.zzb();
    }

    public final long zzc(String str) {
        if (zza().getPackageManager() == null) {
            return 0L;
        }
        int i6 = 0;
        try {
            ApplicationInfo applicationInfoB = c.a(zza()).b(0, str);
            if (applicationInfoB != null) {
                i6 = applicationInfoB.targetSdkVersion;
            }
        } catch (PackageManager.NameNotFoundException unused) {
            zzj().zzo().zza("PackageManager failed to find running app: app_id", str);
        }
        return i6;
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzha zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzhv zzl() {
        return super.zzl();
    }

    public final long zzm() {
        long j3;
        zzt();
        if (!zzd(this.zzu.zzh().zzad())) {
            return 0L;
        }
        if (Build.VERSION.SDK_INT < 30) {
            j3 = 4;
        } else if (SdkExtensions.getExtensionVersion(30) < 4) {
            j3 = 8;
        } else {
            j3 = zzc() < zzbh.zzax.zza(null).intValue() ? 16L : 0L;
        }
        if (!zze("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")) {
            j3 |= 2;
        }
        if (j3 == 0 && !zzy()) {
            j3 |= 64;
        }
        if (j3 == 0) {
            return 1L;
        }
        return j3;
    }

    public final Object zzb(String str, Object obj) {
        int iZza;
        if ("_ev".equals(str)) {
            return zza(zze().zzb((String) null, false), obj, true, true, (String) null);
        }
        if (zzg(str)) {
            iZza = zze().zzb((String) null, false);
        } else {
            iZza = zze().zza((String) null, false);
        }
        return zza(iZza, obj, false, true, (String) null);
    }

    public final boolean zzd(String str, String str2) {
        ea.a();
        if (zze().zza(zzbh.zzby) && !TextUtils.isEmpty(str2)) {
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return zze().zzo().equals(str);
    }

    private static boolean zze(String str, String str2) {
        return str.equals("*") || Arrays.asList(str.split(",")).contains(str2);
    }

    public final Object zzc(String str, Object obj) {
        if ("_ldl".equals(str)) {
            return zza(zzm(str), obj, true, false, (String) null);
        }
        return zza(zzm(str), obj, false, false, (String) null);
    }

    public static boolean zzg(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    public final boolean zzc(String str, String str2) {
        if (str2 == null) {
            zzj().zzm().zza("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            zzj().zzm().zza("Name is required and can't be empty. Type", str);
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            zzj().zzm().zza("Name must start with a letter. Type, name", str, str2);
            return false;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                zzj().zzm().zza("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    public static ArrayList<Bundle> zzb(List<zzae> list) {
        if (list == null) {
            return new ArrayList<>(0);
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(list.size());
        for (zzae zzaeVar : list) {
            Bundle bundle = new Bundle();
            bundle.putString("app_id", zzaeVar.zza);
            bundle.putString("origin", zzaeVar.zzb);
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, zzaeVar.zzd);
            bundle.putString("name", zzaeVar.zzc.zza);
            Object objZza = zzaeVar.zzc.zza();
            d0.h(objZza);
            zzjf.zza(bundle, objZza);
            bundle.putBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, zzaeVar.zze);
            String str = zzaeVar.zzf;
            if (str != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, str);
            }
            zzbf zzbfVar = zzaeVar.zzg;
            if (zzbfVar != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, zzbfVar.zza);
                zzbe zzbeVar = zzbfVar.zzb;
                if (zzbeVar != null) {
                    bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, zzbeVar.zzb());
                }
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, zzaeVar.zzh);
            zzbf zzbfVar2 = zzaeVar.zzi;
            if (zzbfVar2 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, zzbfVar2.zza);
                zzbe zzbeVar2 = zzbfVar2.zzb;
                if (zzbeVar2 != null) {
                    bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, zzbeVar2.zzb());
                }
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, zzaeVar.zzc.zzb);
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, zzaeVar.zzj);
            zzbf zzbfVar3 = zzaeVar.zzk;
            if (zzbfVar3 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, zzbfVar3.zza);
                zzbe zzbeVar3 = zzbfVar3.zzb;
                if (zzbeVar3 != null) {
                    bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, zzbeVar3.zzb());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    private static boolean zzn(String str) {
        d0.h(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    private static boolean zzc(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public final int zza(String str, Object obj) {
        boolean zZza;
        if ("_ldl".equals(str)) {
            zZza = zza("user property referrer", str, zzm(str), obj);
        } else {
            zZza = zza("user property", str, zzm(str), obj);
        }
        return zZza ? 0 : 7;
    }

    private static boolean zzb(Bundle bundle, int i6) {
        if (bundle == null || bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i6);
        return true;
    }

    public final boolean zzb(String str, String str2) {
        if (str2 == null) {
            zzj().zzm().zza("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            zzj().zzm().zza("Name is required and can't be empty. Type", str);
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt) && iCodePointAt != 95) {
            zzj().zzm().zza("Name must start with a letter or _ (underscore). Type, name", str, str2);
            return false;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                zzj().zzm().zza("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    public final int zza(String str) {
        if (!zzb("event", str)) {
            return 2;
        }
        if (zza("event", zzji.zza, zzji.zzb, str)) {
            return !zza("event", 40, str) ? 2 : 0;
        }
        return 13;
    }

    public final long zza(Context context, String str) {
        zzt();
        d0.h(context);
        d0.d(str);
        PackageManager packageManager = context.getPackageManager();
        MessageDigest messageDigestZzu = zzu();
        if (messageDigestZzu == null) {
            zzj().zzg().zza("Could not get MD5 instance");
            return -1L;
        }
        if (packageManager != null) {
            try {
                if (!zzb(context, str)) {
                    Signature[] signatureArr = c.a(context).c(64, zza().getPackageName()).signatures;
                    if (signatureArr != null && signatureArr.length > 0) {
                        return zza(messageDigestZzu.digest(signatureArr[0].toByteArray()));
                    }
                    zzj().zzu().zza("Could not get signatures");
                    return -1L;
                }
            } catch (PackageManager.NameNotFoundException e9) {
                zzj().zzg().zza("Package name not found", e9);
            }
        }
        return 0L;
    }

    private final boolean zzb(Context context, String str) {
        Signature[] signatureArr;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfoC = c.a(context).c(64, str);
            if (packageInfoC == null || (signatureArr = packageInfoC.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e9) {
            zzj().zzg().zza("Package name not found", e9);
            return true;
        } catch (CertificateException e10) {
            zzj().zzg().zza("Error obtaining certificate", e10);
            return true;
        }
    }

    public static long zza(byte[] bArr) {
        d0.h(bArr);
        if (bArr.length > 0) {
            int i6 = 0;
            long j3 = 0;
            for (int length = bArr.length - 1; length >= 0 && length >= bArr.length - 8; length--) {
                j3 += (((long) bArr[length]) & 255) << i6;
                i6 += 8;
            }
            return j3;
        }
        throw new IllegalStateException();
    }

    public static long zza(zzbe zzbeVar) {
        long length = 0;
        if (zzbeVar == null) {
            return 0L;
        }
        Iterator<String> it = zzbeVar.iterator();
        while (it.hasNext()) {
            Object objZzc = zzbeVar.zzc(it.next());
            if (objZzc instanceof Parcelable[]) {
                length += (long) ((Parcelable[]) objZzc).length;
            }
        }
        return length;
    }

    public static Bundle[] zzb(Object obj) {
        if (obj instanceof Bundle) {
            return new Bundle[]{(Bundle) obj};
        }
        if (obj instanceof Parcelable[]) {
            Parcelable[] parcelableArr = (Parcelable[]) obj;
            return (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
        }
        if (!(obj instanceof ArrayList)) {
            return null;
        }
        ArrayList arrayList = (ArrayList) obj;
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public static long zza(long j3, long j8) {
        return ((j8 * 60000) + j3) / 86400000;
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public static Bundle zza(List<zzon> list) {
        Bundle bundle = new Bundle();
        if (list != null) {
            for (zzon zzonVar : list) {
                String str = zzonVar.zzd;
                if (str != null) {
                    bundle.putString(zzonVar.zza, str);
                } else {
                    Long l4 = zzonVar.zzc;
                    if (l4 != null) {
                        bundle.putLong(zzonVar.zza, l4.longValue());
                    } else {
                        Double d6 = zzonVar.zzf;
                        if (d6 != null) {
                            bundle.putDouble(zzonVar.zza, d6.doubleValue());
                        }
                    }
                }
            }
        }
        return bundle;
    }

    public final Bundle zza(Uri uri, boolean z5) {
        String queryParameter;
        String queryParameter2;
        String queryParameter3;
        String queryParameter4;
        String queryParameter5;
        String queryParameter6;
        String queryParameter7;
        String queryParameter8;
        String queryParameter9;
        String str;
        if (uri == null) {
            return null;
        }
        try {
            if (uri.isHierarchical()) {
                queryParameter = uri.getQueryParameter("utm_campaign");
                queryParameter2 = uri.getQueryParameter("utm_source");
                queryParameter3 = uri.getQueryParameter("utm_medium");
                queryParameter4 = uri.getQueryParameter("gclid");
                queryParameter5 = z5 ? uri.getQueryParameter("gbraid") : null;
                queryParameter6 = uri.getQueryParameter("utm_id");
                queryParameter7 = uri.getQueryParameter("dclid");
                queryParameter8 = uri.getQueryParameter("srsltid");
                queryParameter9 = uri.getQueryParameter("sfmc_id");
            } else {
                queryParameter = null;
                queryParameter2 = null;
                queryParameter3 = null;
                queryParameter4 = null;
                queryParameter5 = null;
                queryParameter6 = null;
                queryParameter7 = null;
                queryParameter8 = null;
                queryParameter9 = null;
            }
            if (TextUtils.isEmpty(queryParameter) && TextUtils.isEmpty(queryParameter2) && TextUtils.isEmpty(queryParameter3) && TextUtils.isEmpty(queryParameter4) && ((!z5 || TextUtils.isEmpty(queryParameter5)) && TextUtils.isEmpty(queryParameter6) && TextUtils.isEmpty(queryParameter7) && TextUtils.isEmpty(queryParameter8) && TextUtils.isEmpty(queryParameter9))) {
                return null;
            }
            Bundle bundle = new Bundle();
            if (TextUtils.isEmpty(queryParameter)) {
                str = "sfmc_id";
            } else {
                str = "sfmc_id";
                bundle.putString(FirebaseAnalytics.Param.CAMPAIGN, queryParameter);
            }
            if (!TextUtils.isEmpty(queryParameter2)) {
                bundle.putString(FirebaseAnalytics.Param.SOURCE, queryParameter2);
            }
            if (!TextUtils.isEmpty(queryParameter3)) {
                bundle.putString(FirebaseAnalytics.Param.MEDIUM, queryParameter3);
            }
            if (!TextUtils.isEmpty(queryParameter4)) {
                bundle.putString("gclid", queryParameter4);
            }
            if (z5 && !TextUtils.isEmpty(queryParameter5)) {
                bundle.putString("gbraid", queryParameter5);
            }
            String queryParameter10 = uri.getQueryParameter("gad_source");
            if (z5 && !TextUtils.isEmpty(queryParameter10)) {
                bundle.putString("gad_source", queryParameter10);
            }
            String queryParameter11 = uri.getQueryParameter("utm_term");
            if (!TextUtils.isEmpty(queryParameter11)) {
                bundle.putString(FirebaseAnalytics.Param.TERM, queryParameter11);
            }
            String queryParameter12 = uri.getQueryParameter("utm_content");
            if (!TextUtils.isEmpty(queryParameter12)) {
                bundle.putString(FirebaseAnalytics.Param.CONTENT, queryParameter12);
            }
            String queryParameter13 = uri.getQueryParameter(FirebaseAnalytics.Param.ACLID);
            if (!TextUtils.isEmpty(queryParameter13)) {
                bundle.putString(FirebaseAnalytics.Param.ACLID, queryParameter13);
            }
            String queryParameter14 = uri.getQueryParameter(FirebaseAnalytics.Param.CP1);
            if (!TextUtils.isEmpty(queryParameter14)) {
                bundle.putString(FirebaseAnalytics.Param.CP1, queryParameter14);
            }
            String queryParameter15 = uri.getQueryParameter("anid");
            if (!TextUtils.isEmpty(queryParameter15)) {
                bundle.putString("anid", queryParameter15);
            }
            if (!TextUtils.isEmpty(queryParameter6)) {
                bundle.putString(FirebaseAnalytics.Param.CAMPAIGN_ID, queryParameter6);
            }
            if (!TextUtils.isEmpty(queryParameter7)) {
                bundle.putString("dclid", queryParameter7);
            }
            String queryParameter16 = uri.getQueryParameter("utm_source_platform");
            if (!TextUtils.isEmpty(queryParameter16)) {
                bundle.putString(FirebaseAnalytics.Param.SOURCE_PLATFORM, queryParameter16);
            }
            String queryParameter17 = uri.getQueryParameter("utm_creative_format");
            if (!TextUtils.isEmpty(queryParameter17)) {
                bundle.putString(FirebaseAnalytics.Param.CREATIVE_FORMAT, queryParameter17);
            }
            String queryParameter18 = uri.getQueryParameter("utm_marketing_tactic");
            if (!TextUtils.isEmpty(queryParameter18)) {
                bundle.putString(FirebaseAnalytics.Param.MARKETING_TACTIC, queryParameter18);
            }
            if (!TextUtils.isEmpty(queryParameter8)) {
                bundle.putString("srsltid", queryParameter8);
            }
            if (!TextUtils.isEmpty(queryParameter9)) {
                bundle.putString(str, queryParameter9);
            }
            return bundle;
        } catch (UnsupportedOperationException e9) {
            zzj().zzu().zza("Install referrer url isn't a hierarchical URI", e9);
            return null;
        }
    }

    public static Bundle zza(Bundle bundle) {
        if (bundle == null) {
            return new Bundle();
        }
        Bundle bundle2 = new Bundle(bundle);
        for (String str : bundle2.keySet()) {
            Object obj = bundle2.get(str);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str, new Bundle((Bundle) obj));
            } else {
                int i6 = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i6 < parcelableArr.length) {
                        if (parcelableArr[i6] instanceof Bundle) {
                            parcelableArr[i6] = new Bundle((Bundle) parcelableArr[i6]);
                        }
                        i6++;
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    while (i6 < list.size()) {
                        Object obj2 = list.get(i6);
                        if (obj2 instanceof Bundle) {
                            list.set(i6, new Bundle((Bundle) obj2));
                        }
                        i6++;
                    }
                }
            }
        }
        return bundle2;
    }

    public final Bundle zza(Bundle bundle, String str) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str2 : bundle.keySet()) {
                Object objZzb = zzb(str2, bundle.get(str2));
                if (objZzb == null) {
                    zzj().zzv().zza("Param value can't be null", zzi().zzb(str2));
                } else {
                    zza(bundle2, str2, objZzb);
                }
            }
        }
        return bundle2;
    }

    public final Bundle zza(String str, String str2, Bundle bundle, List<String> list, boolean z5) {
        int iZzl;
        List<String> list2 = list;
        boolean zZza = zza(str2, zzji.zzd);
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = new Bundle(bundle);
        int iZzc = zze().zzc();
        int i6 = 0;
        for (String str3 : new TreeSet(bundle.keySet())) {
            if (list2 == null || !list2.contains(str3)) {
                iZzl = !z5 ? zzl(str3) : 0;
                if (iZzl == 0) {
                    iZzl = zzk(str3);
                }
            } else {
                iZzl = 0;
            }
            if (iZzl != 0) {
                zza(bundle2, iZzl, str3, iZzl == 3 ? str3 : null);
                bundle2.remove(str3);
            } else {
                int iZza = zza(str, str2, str3, bundle.get(str3), bundle2, list2, z5, zZza);
                if (iZza == 17) {
                    zza(bundle2, iZza, str3, Boolean.FALSE);
                } else if (iZza != 0 && !"_ev".equals(str3)) {
                    zza(bundle2, iZza, iZza == 21 ? str2 : str3, bundle.get(str3));
                    bundle2.remove(str3);
                }
                if (zzh(str3) && (i6 = i6 + 1) > iZzc) {
                    zzj().zzm().zza(a1.a.j(iZzc, "Event can't contain more than ", " params"), zzi().zza(str2), zzi().zza(bundle));
                    zzb(bundle2, 5);
                    bundle2.remove(str3);
                }
            }
            list2 = list;
        }
        return bundle2;
    }

    public final zzbf zza(String str, String str2, Bundle bundle, String str3, long j3, boolean z5, boolean z8) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (zza(str2) == 0) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            bundle2.putString("_o", str3);
            Bundle bundleZza = zza(str, str2, bundle2, Collections.singletonList("_o"), true);
            if (z5) {
                bundleZza = zza(bundleZza, str);
            }
            d0.h(bundleZza);
            return new zzbf(str2, new zzbe(bundleZza), str3, j3);
        }
        zzj().zzg().zza("Invalid conditional property event name", zzi().zzc(str2));
        throw new IllegalArgumentException();
    }

    private final Object zza(int i6, Object obj, boolean z5, boolean z8, String str) {
        Bundle bundleZza;
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(((Boolean) obj).booleanValue() ? 1L : 0L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
            if (!z8 || (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[]))) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcelable parcelable : (Parcelable[]) obj) {
                if ((parcelable instanceof Bundle) && (bundleZza = zza((Bundle) parcelable, (String) null)) != null && !bundleZza.isEmpty()) {
                    arrayList.add(bundleZza);
                }
            }
            return arrayList.toArray(new Bundle[arrayList.size()]);
        }
        return zza(String.valueOf(obj), i6, z5);
    }

    public static String zza(String str, int i6, boolean z5) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i6) {
            return str;
        }
        if (z5) {
            return x.f(str.substring(0, str.offsetByCodePoints(0, i6)), "...");
        }
        return null;
    }

    public final URL zza(long j3, String str, String str2, long j8, String str3) {
        try {
            d0.d(str2);
            d0.d(str);
            String strConcat = "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=" + ("v" + j3 + "." + zzg()) + "&rdid=" + str2 + "&bundleid=" + str + "&retry=" + j8;
            if (str.equals(zze().zzp())) {
                strConcat = strConcat.concat("&ddl_test=1");
            }
            if (!str3.isEmpty()) {
                if (str3.charAt(0) != '&') {
                    strConcat = strConcat.concat("&");
                }
                strConcat = strConcat.concat(str3);
            }
            return new URL(strConcat);
        } catch (IllegalArgumentException e9) {
            e = e9;
            zzj().zzg().zza("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        } catch (MalformedURLException e10) {
            e = e10;
            zzj().zzg().zza("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        }
    }

    public final void zza(Bundle bundle, long j3) {
        long j8 = bundle.getLong("_et");
        if (j8 != 0) {
            zzj().zzu().zza("Params already contained engagement", Long.valueOf(j8));
        }
        bundle.putLong("_et", j3 + j8);
    }

    private static void zza(Bundle bundle, int i6, String str, Object obj) {
        if (zzb(bundle, i6)) {
            bundle.putString("_ev", zza(str, 40, true));
            if (obj != null) {
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", String.valueOf(obj).length());
                }
            }
        }
    }

    public static void zza(zzlk zzlkVar, Bundle bundle, boolean z5) {
        if (bundle == null || zzlkVar == null || (bundle.containsKey("_sc") && !z5)) {
            if (bundle != null && zzlkVar == null && z5) {
                bundle.remove("_sn");
                bundle.remove("_sc");
                bundle.remove("_si");
                return;
            }
            return;
        }
        String str = zzlkVar.zza;
        if (str != null) {
            bundle.putString("_sn", str);
        } else {
            bundle.remove("_sn");
        }
        String str2 = zzlkVar.zzb;
        if (str2 != null) {
            bundle.putString("_sc", str2);
        } else {
            bundle.remove("_sc");
        }
        bundle.putLong("_si", zzlkVar.zzc);
    }

    public final void zza(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                zzq().zza(bundle, str, bundle2.get(str));
            }
        }
    }

    public final void zza(Parcelable[] parcelableArr, int i6) {
        d0.h(parcelableArr);
        for (Parcelable parcelable : parcelableArr) {
            Bundle bundle = (Bundle) parcelable;
            int i9 = 0;
            for (String str : new TreeSet(bundle.keySet())) {
                if (zzh(str) && !zza(str, zzjk.zzd) && (i9 = i9 + 1) > i6) {
                    zzj().zzm().zza(a1.a.j(i6, "Param can't contain more than ", " item-scoped custom parameters"), zzi().zzb(str), zzi().zza(bundle));
                    zzb(bundle, 28);
                    bundle.remove(str);
                }
            }
        }
    }

    public final void zza(zzgs zzgsVar, int i6) {
        int i9 = 0;
        for (String str : new TreeSet(zzgsVar.zzc.keySet())) {
            if (zzh(str) && (i9 = i9 + 1) > i6) {
                zzj().zzm().zza(a1.a.j(i6, "Event can't contain more than ", " params"), zzi().zza(zzgsVar.zza), zzi().zza(zzgsVar.zzc));
                zzb(zzgsVar.zzc, 5);
                zzgsVar.zzc.remove(str);
            }
        }
    }

    public static void zza(zzor zzorVar, int i6, String str, String str2, int i9) {
        zza(zzorVar, (String) null, i6, str, str2, i9);
    }

    public static void zza(zzor zzorVar, String str, int i6, String str2, String str3, int i9) {
        Bundle bundle = new Bundle();
        zzb(bundle, i6);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i6 == 6 || i6 == 7 || i6 == 2) {
            bundle.putLong("_el", i9);
        }
        zzorVar.zza(str, "_err", bundle);
    }

    public final void zza(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
            return;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
        } else if (str != null) {
            zzj().zzv().zza("Not putting event parameter. Invalid value type. name, type", zzi().zzb(str), obj != null ? obj.getClass().getSimpleName() : null);
        }
    }

    public final void zza(w0 w0Var, boolean z5) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z5);
        try {
            w0Var.zza(bundle);
        } catch (RemoteException e9) {
            this.zzu.zzj().zzu().zza("Error returning boolean value to wrapper", e9);
        }
    }

    public final void zza(w0 w0Var, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            w0Var.zza(bundle);
        } catch (RemoteException e9) {
            this.zzu.zzj().zzu().zza("Error returning bundle list to wrapper", e9);
        }
    }

    public final void zza(w0 w0Var, Bundle bundle) {
        try {
            w0Var.zza(bundle);
        } catch (RemoteException e9) {
            this.zzu.zzj().zzu().zza("Error returning bundle value to wrapper", e9);
        }
    }

    public final void zza(w0 w0Var, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            w0Var.zza(bundle);
        } catch (RemoteException e9) {
            this.zzu.zzj().zzu().zza("Error returning byte array to wrapper", e9);
        }
    }

    public final void zza(w0 w0Var, int i6) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i6);
        try {
            w0Var.zza(bundle);
        } catch (RemoteException e9) {
            this.zzu.zzj().zzu().zza("Error returning int value to wrapper", e9);
        }
    }

    public final void zza(w0 w0Var, long j3) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j3);
        try {
            w0Var.zza(bundle);
        } catch (RemoteException e9) {
            this.zzu.zzj().zzu().zza("Error returning long value to wrapper", e9);
        }
    }

    public final void zza(w0 w0Var, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            w0Var.zza(bundle);
        } catch (RemoteException e9) {
            this.zzu.zzj().zzu().zza("Error returning string value to wrapper", e9);
        }
    }

    private final void zza(String str, String str2, String str3, Bundle bundle, List<String> list, boolean z5) {
        int iZzl;
        int iZza;
        List<String> list2 = list;
        if (bundle == null) {
            return;
        }
        int i6 = zze().zzq().zza(231100000, true) ? 35 : 0;
        int i9 = 0;
        for (String str4 : new TreeSet(bundle.keySet())) {
            if (list2 == null || !list2.contains(str4)) {
                iZzl = !z5 ? zzl(str4) : 0;
                if (iZzl == 0) {
                    iZzl = zzk(str4);
                }
            } else {
                iZzl = 0;
            }
            if (iZzl != 0) {
                zza(bundle, iZzl, str4, iZzl == 3 ? str4 : null);
                bundle.remove(str4);
            } else {
                if (zza(bundle.get(str4))) {
                    zzj().zzv().zza("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str4);
                    iZza = 22;
                } else {
                    iZza = zza(str, str2, str4, bundle.get(str4), bundle, list2, z5, false);
                }
                if (iZza != 0 && !"_ev".equals(str4)) {
                    zza(bundle, iZza, str4, bundle.get(str4));
                    bundle.remove(str4);
                } else if (zzh(str4) && !zza(str4, zzjk.zzd)) {
                    i9++;
                    if (!zza(231100000, true)) {
                        zzj().zzm().zza("Item array not supported on client's version of Google Play Services (Android Only)", zzi().zza(str2), zzi().zza(bundle));
                        zzb(bundle, 23);
                        bundle.remove(str4);
                    } else if (i9 > i6) {
                        zzj().zzm().zza(a1.a.j(i6, "Item can't contain more than ", " item-scoped custom params"), zzi().zza(str2), zzi().zza(bundle));
                        zzb(bundle, 28);
                        bundle.remove(str4);
                    }
                }
            }
            list2 = list;
        }
    }

    private static boolean zza(String str, String[] strArr) {
        d0.h(strArr);
        for (String str2 : strArr) {
            if (Objects.equals(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public final boolean zza(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (zzn(str)) {
                return true;
            }
            if (this.zzu.zzae()) {
                zzj().zzm().zza("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", zzgo.zza(str));
            }
            return false;
        }
        if (!TextUtils.isEmpty(str2)) {
            if (zzn(str2)) {
                return true;
            }
            zzj().zzm().zza("Invalid admob_app_id. Analytics disabled.", zzgo.zza(str2));
            return false;
        }
        if (this.zzu.zzae()) {
            zzj().zzm().zza("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
        }
        return false;
    }

    public final boolean zza(String str, int i6, String str2) {
        if (str2 == null) {
            zzj().zzm().zza("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= i6) {
            return true;
        }
        zzj().zzm().zza("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i6), str2);
        return false;
    }

    public final boolean zza(String str, String[] strArr, String str2) {
        return zza(str, strArr, (String[]) null, str2);
    }

    public final boolean zza(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            zzj().zzm().zza("Name is required and can't be null. Type", str);
            return false;
        }
        for (String str3 : zza) {
            if (str2.startsWith(str3)) {
                zzj().zzm().zza("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr == null || !zza(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && zza(str2, strArr2)) {
            return true;
        }
        zzj().zzm().zza("Name is reserved. Type, name", str, str2);
        return false;
    }

    public final boolean zza(String str, String str2, int i6, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String strValueOf = String.valueOf(obj);
            if (strValueOf.codePointCount(0, strValueOf.length()) > i6) {
                zzj().zzv().zza("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(strValueOf.length()));
                return false;
            }
        }
        return true;
    }

    public static boolean zza(Bundle bundle, int i6) {
        int i9 = 0;
        if (bundle.size() <= i6) {
            return false;
        }
        for (String str : new TreeSet(bundle.keySet())) {
            i9++;
            if (i9 > i6) {
                bundle.remove(str);
            }
        }
        return true;
    }

    public static boolean zza(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    public final boolean zza(int i6, boolean z5) {
        Boolean boolZzab = this.zzu.zzr().zzab();
        if (zzg() < i6 / 1000) {
            return (boolZzab == null || boolZzab.booleanValue()) ? false : true;
        }
        return true;
    }

    public static boolean zza(Context context) {
        ActivityInfo receiverInfo;
        d0.h(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static boolean zza(Context context, boolean z5) {
        d0.h(context);
        if (Build.VERSION.SDK_INT >= 24) {
            return zzc(context, "com.google.android.gms.measurement.AppMeasurementJobService");
        }
        return zzc(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    public final boolean zza(String str, double d6) {
        try {
            SharedPreferences.Editor editorEdit = zza().getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
            editorEdit.putString("deeplink", str);
            editorEdit.putLong("timestamp", Double.doubleToRawLongBits(d6));
            return editorEdit.commit();
        } catch (RuntimeException e9) {
            zzj().zzg().zza("Failed to persist Deferred Deep Link. exception", e9);
            return false;
        }
    }

    public static boolean zza(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        return "android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra);
    }

    public static boolean zza(String str, String str2, String str3, String str4) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        boolean zIsEmpty2 = TextUtils.isEmpty(str2);
        if (!zIsEmpty && !zIsEmpty2) {
            d0.h(str);
            return !str.equals(str2);
        }
        if (zIsEmpty && zIsEmpty2) {
            return (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) ? !TextUtils.isEmpty(str4) : !str3.equals(str4);
        }
        if (zIsEmpty || !zIsEmpty2) {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
        if (TextUtils.isEmpty(str4)) {
            return false;
        }
        return TextUtils.isEmpty(str3) || !str3.equals(str4);
    }

    public static byte[] zza(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(parcelObtain, 0);
            return parcelObtain.marshall();
        } finally {
            parcelObtain.recycle();
        }
    }
}
