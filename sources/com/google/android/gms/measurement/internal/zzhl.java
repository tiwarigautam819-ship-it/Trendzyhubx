package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.fragment.app.m1;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.b;
import com.google.android.gms.internal.measurement.c3;
import com.google.android.gms.internal.measurement.g6;
import com.google.android.gms.internal.measurement.i6;
import com.google.android.gms.internal.measurement.j4;
import com.google.android.gms.internal.measurement.k0;
import com.google.android.gms.internal.measurement.k4;
import com.google.android.gms.internal.measurement.o6;
import com.google.android.gms.internal.measurement.p2;
import com.google.android.gms.internal.measurement.q2;
import com.google.android.gms.internal.measurement.r2;
import com.google.android.gms.internal.measurement.s2;
import com.google.android.gms.internal.measurement.t2;
import com.google.android.gms.internal.measurement.ta;
import com.google.android.gms.internal.measurement.u2;
import com.google.android.gms.internal.measurement.v;
import com.google.android.gms.internal.measurement.v2;
import com.google.android.gms.internal.measurement.w2;
import com.google.android.gms.internal.measurement.x2;
import com.google.android.gms.internal.measurement.y2;
import com.google.android.gms.measurement.internal.zzje;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.Callable;
import s.e;
import s.i;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzhl extends zznr implements zzai {
    final i zza;
    final ta zzb;
    private final Map<String, Map<String, String>> zzc;
    private final Map<String, Set<String>> zzd;
    private final Map<String, Map<String, Boolean>> zze;
    private final Map<String, Map<String, Boolean>> zzf;
    private final Map<String, y2> zzh;
    private final Map<String, Map<String, Integer>> zzi;
    private final Map<String, String> zzj;
    private final Map<String, String> zzk;
    private final Map<String, String> zzl;

    public zzhl(zznv zznvVar) {
        super(zznvVar);
        this.zzc = new e(0);
        this.zzd = new e(0);
        this.zze = new e(0);
        this.zzf = new e(0);
        this.zzh = new e(0);
        this.zzj = new e(0);
        this.zzk = new e(0);
        this.zzl = new e(0);
        this.zzi = new e(0);
        this.zza = new zzho(this, 20);
        this.zzb = new zzhr(this);
    }

    private final void zzu(String str) throws Throwable {
        zzal();
        zzt();
        d0.d(str);
        if (this.zzh.get(str) == null) {
            zzan zzanVarZzf = zzh().zzf(str);
            if (zzanVarZzf != null) {
                x2 x2Var = (x2) zza(str, zzanVarZzf.zza).k();
                zza(str, x2Var);
                this.zzc.put(str, zza((y2) x2Var.c()));
                this.zzh.put(str, (y2) x2Var.c());
                zza(str, (y2) x2Var.c());
                this.zzj.put(str, ((y2) x2Var.f1993b).y());
                this.zzk.put(str, zzanVarZzf.zzb);
                this.zzl.put(str, zzanVarZzf.zzc);
                return;
            }
            this.zzc.put(str, null);
            this.zze.put(str, null);
            this.zzd.put(str, null);
            this.zzf.put(str, null);
            this.zzh.put(str, null);
            this.zzj.put(str, null);
            this.zzk.put(str, null);
            this.zzl.put(str, null);
            this.zzi.put(str, null);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zzoo g_() {
        return super.g_();
    }

    public final int zzb(String str, String str2) throws Throwable {
        Integer num;
        zzt();
        zzu(str);
        Map<String, Integer> map = this.zzi.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.measurement.internal.zznr
    public final boolean zzc() {
        return false;
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

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zzt zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zzal zzh() {
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

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zzhl zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zzmw zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zznu zzo() {
        return super.zzo();
    }

    public final boolean zzp(String str) throws Throwable {
        zzt();
        zzu(str);
        if (this.zzd.get(str) != null) {
            return this.zzd.get(str).contains("device_model") || this.zzd.get(str).contains("device_info");
        }
        return false;
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

    public final long zza(String str) throws Throwable {
        String strZza = zza(str, "measurement.account.time_zone_offset_minutes");
        if (TextUtils.isEmpty(strZza)) {
            return 0L;
        }
        try {
            return Long.parseLong(strZza);
        } catch (NumberFormatException e9) {
            zzj().zzu().zza("Unable to parse timezone offset. appId", zzgo.zza(str), e9);
            return 0L;
        }
    }

    public final y2 zzc(String str) {
        zzal();
        zzt();
        d0.d(str);
        zzu(str);
        return this.zzh.get(str);
    }

    public final String zzd(String str) {
        zzt();
        return this.zzl.get(str);
    }

    public final String zze(String str) {
        zzt();
        return this.zzk.get(str);
    }

    public final String zzf(String str) throws Throwable {
        zzt();
        zzu(str);
        return this.zzj.get(str);
    }

    public final Set<String> zzg(String str) {
        zzt();
        zzu(str);
        return this.zzd.get(str);
    }

    public final SortedSet<String> zzh(String str) {
        zzt();
        zzu(str);
        TreeSet treeSet = new TreeSet();
        t2 t2VarZzb = zzb(str);
        if (t2VarZzb != null) {
            Iterator it = t2VarZzb.o().iterator();
            while (it.hasNext()) {
                treeSet.add(((s2) it.next()).n());
            }
        }
        return treeSet;
    }

    public final void zzi(String str) {
        zzt();
        this.zzk.put(str, null);
    }

    public final void zzj(String str) {
        zzt();
        this.zzh.remove(str);
    }

    public final boolean zzk(String str) {
        y2 y2Var;
        return (TextUtils.isEmpty(str) || (y2Var = this.zzh.get(str)) == null || y2Var.n() == 0) ? false : true;
    }

    public final boolean zzl(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_internal"));
    }

    public final boolean zzm(String str) {
        zzt();
        zzu(str);
        t2 t2VarZzb = zzb(str);
        return t2VarZzb == null || !t2VarZzb.t() || t2VarZzb.s();
    }

    public final boolean zzn(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_public"));
    }

    public final boolean zzo(String str) throws Throwable {
        zzt();
        zzu(str);
        return this.zzd.get(str) != null && this.zzd.get(str).contains("app_instance_id");
    }

    public final boolean zzq(String str) throws Throwable {
        zzt();
        zzu(str);
        return this.zzd.get(str) != null && this.zzd.get(str).contains("enhanced_user_id");
    }

    public final boolean zzr(String str) throws Throwable {
        zzt();
        zzu(str);
        return this.zzd.get(str) != null && this.zzd.get(str).contains("google_signals");
    }

    public final boolean zzs(String str) throws Throwable {
        zzt();
        zzu(str);
        if (this.zzd.get(str) != null) {
            return this.zzd.get(str).contains("os_version") || this.zzd.get(str).contains("device_info");
        }
        return false;
    }

    public final boolean zzt(String str) throws Throwable {
        zzt();
        zzu(str);
        return this.zzd.get(str) != null && this.zzd.get(str).contains(MTCoreConstants.Register.KEY_USER_ID);
    }

    public final boolean zzd(String str, String str2) throws Throwable {
        Boolean bool;
        zzt();
        zzu(str);
        if (zzl(str) && zzos.zzg(str2)) {
            return true;
        }
        if (zzn(str) && zzos.zzh(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zze.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ b4.a zzb() {
        return super.zzb();
    }

    public final zzje.zza zzb(String str, zzje.zza zzaVar) {
        zzt();
        zzu(str);
        t2 t2VarZzb = zzb(str);
        if (t2VarZzb == null) {
            return null;
        }
        for (q2 q2Var : t2VarZzb.q()) {
            if (zzaVar == zza(q2Var.o())) {
                return zza(q2Var.n());
            }
        }
        return null;
    }

    public final boolean zzc(String str, zzje.zza zzaVar) throws Throwable {
        zzt();
        zzu(str);
        t2 t2VarZzb = zzb(str);
        if (t2VarZzb == null) {
            return false;
        }
        for (p2 p2Var : t2VarZzb.p()) {
            if (zzaVar == zza(p2Var.o())) {
                return p2Var.n() == 2;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public static /* synthetic */ v zza(zzhl zzhlVar, String str) throws Throwable {
        zzhlVar.zzal();
        d0.d(str);
        if (!zzhlVar.zzk(str)) {
            return null;
        }
        if (zzhlVar.zzh.containsKey(str) && zzhlVar.zzh.get(str) != null) {
            zzhlVar.zza(str, zzhlVar.zzh.get(str));
        } else {
            zzhlVar.zzu(str);
        }
        return (v) zzhlVar.zza.snapshot().get(str);
    }

    public final t2 zzb(String str) throws Throwable {
        zzt();
        zzu(str);
        y2 y2VarZzc = zzc(str);
        if (y2VarZzc == null || !y2VarZzc.D()) {
            return null;
        }
        return y2VarZzc.t();
    }

    public final boolean zzc(String str, String str2) throws Throwable {
        Boolean bool;
        zzt();
        zzu(str);
        if ("ecommerce_purchase".equals(str2) || FirebaseAnalytics.Event.PURCHASE.equals(str2) || FirebaseAnalytics.Event.REFUND.equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zzf.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final zzjh zza(String str, zzje.zza zzaVar) {
        zzt();
        zzu(str);
        t2 t2VarZzb = zzb(str);
        if (t2VarZzb == null) {
            return zzjh.UNINITIALIZED;
        }
        for (p2 p2Var : t2VarZzb.r()) {
            if (zza(p2Var.o()) == zzaVar) {
                int i6 = zzht.zzc[m1.e(p2Var.n())];
                if (i6 == 1) {
                    return zzjh.DENIED;
                }
                if (i6 != 2) {
                    return zzjh.UNINITIALIZED;
                }
                return zzjh.GRANTED;
            }
        }
        return zzjh.UNINITIALIZED;
    }

    private static zzje.zza zza(r2 r2Var) {
        int i6 = zzht.zzb[r2Var.ordinal()];
        if (i6 == 1) {
            return zzje.zza.AD_STORAGE;
        }
        if (i6 == 2) {
            return zzje.zza.ANALYTICS_STORAGE;
        }
        if (i6 == 3) {
            return zzje.zza.AD_USER_DATA;
        }
        if (i6 != 4) {
            return null;
        }
        return zzje.zza.AD_PERSONALIZATION;
    }

    private final y2 zza(String str, byte[] bArr) {
        if (bArr == null) {
            return y2.v();
        }
        try {
            y2 y2Var = (y2) ((x2) zzoo.zza(y2.u(), bArr)).c();
            zzj().zzp().zza("Parsed config. version, gmp_app_id", y2Var.G() ? Long.valueOf(y2Var.s()) : null, y2Var.E() ? y2Var.x() : null);
            return y2Var;
        } catch (i6 e9) {
            zzj().zzu().zza("Unable to merge remote config. appId", zzgo.zza(str), e9);
            return y2.v();
        } catch (RuntimeException e10) {
            zzj().zzu().zza("Unable to merge remote config. appId", zzgo.zza(str), e10);
            return y2.v();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzai
    public final String zza(String str, String str2) throws Throwable {
        zzt();
        zzu(str);
        Map<String, String> map = this.zzc.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    private static Map<String, String> zza(y2 y2Var) {
        e eVar = new e(0);
        if (y2Var != null) {
            for (c3 c3Var : y2Var.C()) {
                eVar.put(c3Var.n(), c3Var.o());
            }
        }
        return eVar;
    }

    private final void zza(String str, x2 x2Var) {
        HashSet hashSet = new HashSet();
        e eVar = new e(0);
        e eVar2 = new e(0);
        e eVar3 = new e(0);
        if (x2Var != null) {
            Iterator it = Collections.unmodifiableList(((y2) x2Var.f1993b).A()).iterator();
            while (it.hasNext()) {
                hashSet.add(((u2) it.next()).n());
            }
            for (int i6 = 0; i6 < ((y2) x2Var.f1993b).r(); i6++) {
                v2 v2Var = (v2) ((y2) x2Var.f1993b).o(i6).k();
                if (v2Var.h().isEmpty()) {
                    zzj().zzu().zza("EventConfig contained null event name");
                } else {
                    String strH = v2Var.h();
                    String strZzb = zzji.zzb(v2Var.h());
                    if (!TextUtils.isEmpty(strZzb)) {
                        v2Var.e();
                        w2.o((w2) v2Var.f1993b, strZzb);
                        x2Var.e();
                        y2.q((y2) x2Var.f1993b, i6, (w2) v2Var.c());
                    }
                    if (((w2) v2Var.f1993b).s() && ((w2) v2Var.f1993b).q()) {
                        eVar.put(strH, Boolean.TRUE);
                    }
                    if (((w2) v2Var.f1993b).t() && ((w2) v2Var.f1993b).r()) {
                        eVar2.put(v2Var.h(), Boolean.TRUE);
                    }
                    if (((w2) v2Var.f1993b).u()) {
                        if (((w2) v2Var.f1993b).n() >= 2 && ((w2) v2Var.f1993b).n() <= 65535) {
                            eVar3.put(v2Var.h(), Integer.valueOf(((w2) v2Var.f1993b).n()));
                        } else {
                            zzj().zzu().zza("Invalid sampling rate. Event name, sample rate", v2Var.h(), Integer.valueOf(((w2) v2Var.f1993b).n()));
                        }
                    }
                }
            }
        }
        this.zzd.put(str, hashSet);
        this.zze.put(str, eVar);
        this.zzf.put(str, eVar2);
        this.zzi.put(str, eVar3);
    }

    private final void zza(final String str, y2 y2Var) {
        if (y2Var.n() == 0) {
            this.zza.remove(str);
            return;
        }
        zzj().zzp().zza("EES programs found", Integer.valueOf(y2Var.n()));
        k4 k4Var = (k4) y2Var.B().get(0);
        try {
            v vVar = new v();
            y yVar = vVar.f1953a;
            ((HashMap) ((o6) yVar.f2165d).f1792a).put("internal.remoteConfig", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhn
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzhq zzhqVar = new zzhq(this.zza, str);
                    b bVar = new b("internal.remoteConfig", 1);
                    bVar.f1683b.put("getValue", new g6(zzhqVar));
                    return bVar;
                }
            });
            ((HashMap) ((o6) yVar.f2165d).f1792a).put("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhm
                /* JADX WARN: Type inference failed for: r3v0, types: [com.google.android.gms.measurement.internal.zzhk] */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    final zzhl zzhlVar = this.zza;
                    final String str2 = str;
                    return new g6((zzhk) new Callable() { // from class: com.google.android.gms.measurement.internal.zzhk
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            zzhl zzhlVar2 = zzhlVar;
                            String str3 = str2;
                            zzg zzgVarZze = zzhlVar2.zzh().zze(str3);
                            HashMap map = new HashMap();
                            map.put(MTPushConstants.PlatformNode.KEY_PLATFORM, "android");
                            map.put("package_name", str3);
                            map.put("gmp_version", 106000L);
                            if (zzgVarZze != null) {
                                String strZzaf = zzgVarZze.zzaf();
                                if (strZzaf != null) {
                                    map.put("app_version", strZzaf);
                                }
                                map.put("app_version_int", Long.valueOf(zzgVarZze.zze()));
                                map.put("dynamite_version", Long.valueOf(zzgVarZze.zzo()));
                            }
                            return map;
                        }
                    });
                }
            });
            ((HashMap) ((o6) yVar.f2165d).f1792a).put("internal.logger", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhp
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new g6(this.zza.zzb);
                }
            });
            vVar.a(k4Var);
            this.zza.put(str, vVar);
            zzj().zzp().zza("EES program loaded for appId, activities", str, Integer.valueOf(k4Var.n().n()));
            Iterator it = k4Var.n().p().iterator();
            while (it.hasNext()) {
                zzj().zzp().zza("EES program activity", ((j4) it.next()).n());
            }
        } catch (k0 unused) {
            zzj().zzg().zza("Failed to load EES program. appId", str);
        }
    }

    public final boolean zza(String str, byte[] bArr, String str2, String str3) {
        zzal();
        zzt();
        d0.d(str);
        x2 x2Var = (x2) zza(str, bArr).k();
        zza(str, x2Var);
        zza(str, (y2) x2Var.c());
        this.zzh.put(str, (y2) x2Var.c());
        this.zzj.put(str, ((y2) x2Var.f1993b).y());
        this.zzk.put(str, str2);
        this.zzl.put(str, str3);
        this.zzc.put(str, zza((y2) x2Var.c()));
        zzh().zza(str, new ArrayList(Collections.unmodifiableList(((y2) x2Var.f1993b).z())));
        try {
            x2Var.e();
            y2.p((y2) x2Var.f1993b);
            bArr = ((y2) x2Var.c()).c();
        } catch (RuntimeException e9) {
            zzj().zzu().zza("Unable to serialize reduced-size config. Storing full config instead. appId", zzgo.zza(str), e9);
        }
        zzal zzalVarZzh = zzh();
        d0.d(str);
        zzalVarZzh.zzt();
        zzalVarZzh.zzal();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        contentValues.put("e_tag", str3);
        try {
            if (zzalVarZzh.e_().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                zzalVarZzh.zzj().zzg().zza("Failed to update remote config (got 0). appId", zzgo.zza(str));
            }
        } catch (SQLiteException e10) {
            zzalVarZzh.zzj().zzg().zza("Error storing remote config. appId", zzgo.zza(str), e10);
        }
        this.zzh.put(str, (y2) x2Var.c());
        return true;
    }
}
