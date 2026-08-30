package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import b4.b;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.ea;
import com.google.android.gms.internal.measurement.g3;
import com.google.android.gms.internal.measurement.g4;
import com.google.android.gms.internal.measurement.h3;
import com.google.android.gms.internal.measurement.h4;
import com.google.android.gms.internal.measurement.i6;
import com.google.android.gms.internal.measurement.l9;
import com.google.android.gms.internal.measurement.m0;
import com.google.android.gms.internal.measurement.p3;
import com.google.android.gms.internal.measurement.q3;
import com.google.android.gms.internal.measurement.t3;
import com.google.android.gms.internal.measurement.u3;
import com.google.android.gms.internal.measurement.v7;
import com.google.android.gms.internal.measurement.x3;
import com.google.android.gms.internal.measurement.x9;
import com.google.android.gms.internal.measurement.y2;
import com.google.android.gms.internal.measurement.y3;
import com.google.android.gms.internal.measurement.z3;
import com.google.android.gms.measurement.internal.zzje;
import d4.c;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import s.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class zznv implements zzjc {
    private static volatile zznv zza;
    private List<Long> zzaa;
    private long zzab;
    private final Map<String, zzje> zzac;
    private final Map<String, zzax> zzad;
    private final Map<String, zzb> zzae;
    private zzlk zzaf;
    private String zzag;
    private final zzor zzah;
    private zzhl zzb;
    private zzgr zzc;
    private zzal zzd;
    private zzgy zze;
    private zznq zzf;
    private zzt zzg;
    private final zzoo zzh;
    private zzli zzi;
    private zzmw zzj;
    private final zznu zzk;
    private zzhf zzl;
    private final zzhy zzm;
    private boolean zzn;
    private boolean zzo;
    private long zzp;
    private List<Runnable> zzq;
    private final Set<String> zzr;
    private int zzs;
    private int zzt;
    private boolean zzu;
    private boolean zzv;
    private boolean zzw;
    private FileLock zzx;
    private FileChannel zzy;
    private List<Long> zzz;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class zza implements zzas {
        z3 zza;
        List<Long> zzb;
        List<q3> zzc;
        private long zzd;

        private static long zza(q3 q3Var) {
            return ((q3Var.z() / 1000) / 60) / 60;
        }

        private zza() {
        }

        @Override // com.google.android.gms.measurement.internal.zzas
        public final void zza(z3 z3Var) {
            d0.h(z3Var);
            this.zza = z3Var;
        }

        @Override // com.google.android.gms.measurement.internal.zzas
        public final boolean zza(long j3, q3 q3Var) {
            d0.h(q3Var);
            if (this.zzc == null) {
                this.zzc = new ArrayList();
            }
            if (this.zzb == null) {
                this.zzb = new ArrayList();
            }
            if (this.zzc.isEmpty() || zza(this.zzc.get(0)) == zza(q3Var)) {
                long jA = this.zzd + ((long) q3Var.a(null));
                zznv.this.zze();
                if (jA < Math.max(0, zzbh.zzi.zza(null).intValue())) {
                    this.zzd = jA;
                    this.zzc.add(q3Var);
                    this.zzb.add(Long.valueOf(j3));
                    int size = this.zzc.size();
                    zznv.this.zze();
                    if (size < Math.max(1, zzbh.zzj.zza(null).intValue())) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    private zznv(zzok zzokVar) {
        this(zzokVar, null);
    }

    private final void zzaa() {
        zzl().zzt();
        if (this.zzu || this.zzv || this.zzw) {
            zzj().zzp().zza("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzu), Boolean.valueOf(this.zzv), Boolean.valueOf(this.zzw));
            return;
        }
        zzj().zzp().zza("Stopping uploading service(s)");
        List<Runnable> list = this.zzq;
        if (list == null) {
            return;
        }
        Iterator<Runnable> it = list.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        List<Runnable> list2 = this.zzq;
        d0.h(list2);
        list2.clear();
    }

    private final void zzab() {
        zzl().zzt();
        for (String str : this.zzr) {
            x9.a();
            if (zze().zze(str, zzbh.zzch)) {
                zzj().zzc().zza("Notifying app that trigger URIs are available. App ID", str);
                Intent intent = new Intent();
                intent.setAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                intent.setPackage(str);
                this.zzm.zza().sendBroadcast(intent);
            }
        }
        this.zzr.clear();
    }

    private final void zzac() {
        long jMax;
        long jMax2;
        zzl().zzt();
        zzs();
        if (this.zzp > 0) {
            ((b) zzb()).getClass();
            long jAbs = 3600000 - Math.abs(SystemClock.elapsedRealtime() - this.zzp);
            if (jAbs > 0) {
                zzj().zzp().zza("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(jAbs));
                zzy().zzb();
                zzz().zzu();
                return;
            }
            this.zzp = 0L;
        }
        if (!this.zzm.zzaf() || !zzad()) {
            zzj().zzp().zza("Nothing to upload or uploading impossible");
            zzy().zzb();
            zzz().zzu();
            return;
        }
        ((b) zzb()).getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        zze();
        long jMax3 = Math.max(0L, zzbh.zzab.zza(null).longValue());
        boolean z5 = zzf().zzz() || zzf().zzy();
        if (z5) {
            String strZzo = zze().zzo();
            if (TextUtils.isEmpty(strZzo) || ".none.".equals(strZzo)) {
                zze();
                jMax = Math.max(0L, zzbh.zzv.zza(null).longValue());
            } else {
                zze();
                jMax = Math.max(0L, zzbh.zzw.zza(null).longValue());
            }
        } else {
            zze();
            jMax = Math.max(0L, zzbh.zzu.zza(null).longValue());
        }
        long jZza = this.zzj.zzd.zza();
        long jZza2 = this.zzj.zze.zza();
        long j3 = 0;
        long jMax4 = Math.max(zzf().c_(), zzf().d_());
        if (jMax4 == 0) {
            jMax2 = 0;
        } else {
            long jAbs2 = jCurrentTimeMillis - Math.abs(jMax4 - jCurrentTimeMillis);
            long jAbs3 = jCurrentTimeMillis - Math.abs(jZza - jCurrentTimeMillis);
            long jAbs4 = jCurrentTimeMillis - Math.abs(jZza2 - jCurrentTimeMillis);
            long jMax5 = Math.max(jAbs3, jAbs4);
            long jMin = jAbs2 + jMax3;
            if (z5 && jMax5 > 0) {
                jMin = Math.min(jAbs2, jMax5) + jMax;
            }
            jMax2 = !zzp().zza(jMax5, jMax) ? jMax5 + jMax : jMin;
            if (jAbs4 != 0 && jAbs4 >= jAbs2) {
                int i6 = 0;
                while (true) {
                    zze();
                    if (i6 >= Math.min(20, Math.max(0, zzbh.zzad.zza(null).intValue()))) {
                        jMax2 = 0;
                        break;
                    }
                    zze();
                    jMax2 += Math.max(j3, zzbh.zzac.zza(null).longValue()) * (1 << i6);
                    if (jMax2 > jAbs4) {
                        break;
                    }
                    i6++;
                    j3 = 0;
                }
            }
            j3 = 0;
        }
        if (jMax2 == j3) {
            zzj().zzp().zza("Next upload time is 0");
            zzy().zzb();
            zzz().zzu();
            return;
        }
        if (!zzh().zzu()) {
            zzj().zzp().zza("No network");
            zzy().zza();
            zzz().zzu();
            return;
        }
        long jZza3 = this.zzj.zzc.zza();
        zze();
        long jMax6 = Math.max(0L, zzbh.zzs.zza(null).longValue());
        if (!zzp().zza(jZza3, jMax6)) {
            jMax2 = Math.max(jMax2, jZza3 + jMax6);
        }
        zzy().zzb();
        ((b) zzb()).getClass();
        long jCurrentTimeMillis2 = jMax2 - System.currentTimeMillis();
        if (jCurrentTimeMillis2 <= 0) {
            zze();
            jCurrentTimeMillis2 = Math.max(0L, zzbh.zzx.zza(null).longValue());
            zzhb zzhbVar = this.zzj.zzd;
            ((b) zzb()).getClass();
            zzhbVar.zza(System.currentTimeMillis());
        }
        zzj().zzp().zza("Upload scheduled in approximately ms", Long.valueOf(jCurrentTimeMillis2));
        zzz().zza(jCurrentTimeMillis2);
    }

    private final boolean zzad() {
        zzl().zzt();
        zzs();
        return zzf().zzx() || !TextUtils.isEmpty(zzf().f_());
    }

    private final boolean zzae() {
        zzl().zzt();
        FileLock fileLock = this.zzx;
        if (fileLock != null && fileLock.isValid()) {
            zzj().zzp().zza("Storage concurrent access okay");
            return true;
        }
        File filesDir = this.zzm.zza().getFilesDir();
        int i6 = m0.f1724c;
        try {
            FileChannel channel = new RandomAccessFile(new File(new File(filesDir, "google_app_measurement.db").getPath()), "rw").getChannel();
            this.zzy = channel;
            FileLock fileLockTryLock = channel.tryLock();
            this.zzx = fileLockTryLock;
            if (fileLockTryLock != null) {
                zzj().zzp().zza("Storage concurrent access okay");
                return true;
            }
            zzj().zzg().zza("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e9) {
            zzj().zzg().zza("Failed to acquire storage lock", e9);
            return false;
        } catch (IOException e10) {
            zzj().zzg().zza("Failed to access storage lock file", e10);
            return false;
        } catch (OverlappingFileLockException e11) {
            zzj().zzu().zza("Storage lock already acquired", e11);
            return false;
        }
    }

    private final zzo zzc(String str) {
        zzg zzgVarZze = zzf().zze(str);
        if (zzgVarZze == null || TextUtils.isEmpty(zzgVarZze.zzaf())) {
            zzj().zzc().zza("No app data available; dropping", str);
            return null;
        }
        Boolean boolZza = zza(zzgVarZze);
        if (boolZza == null || boolZza.booleanValue()) {
            return new zzo(str, zzgVarZze.zzah(), zzgVarZze.zzaf(), zzgVarZze.zze(), zzgVarZze.zzae(), zzgVarZze.zzq(), zzgVarZze.zzn(), (String) null, zzgVarZze.zzar(), false, zzgVarZze.zzag(), zzgVarZze.zzd(), 0L, 0, zzgVarZze.zzaq(), false, zzgVarZze.zzaa(), zzgVarZze.zzx(), zzgVarZze.zzo(), zzgVarZze.zzan(), (String) null, zzb(str).zzf(), "", (String) null, zzgVarZze.zzat(), zzgVarZze.zzw(), zzb(str).zza(), zzd(str).zzf(), zzgVarZze.zza(), zzgVarZze.zzf(), zzgVarZze.zzam(), zzgVarZze.zzak());
        }
        zzj().zzg().zza("App version does not match; dropping. appId", zzgo.zza(str));
        return null;
    }

    private final long zzx() {
        ((b) zzb()).getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        zzmw zzmwVar = this.zzj;
        zzmwVar.zzal();
        zzmwVar.zzt();
        long jZza = zzmwVar.zzf.zza();
        if (jZza == 0) {
            jZza = ((long) zzmwVar.zzq().zzv().nextInt(86400000)) + 1;
            zzmwVar.zzf.zza(jZza);
        }
        return ((((jCurrentTimeMillis + jZza) / 1000) / 60) / 60) / 24;
    }

    private final zzgy zzy() {
        zzgy zzgyVar = this.zze;
        if (zzgyVar != null) {
            return zzgyVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    private final zznq zzz() {
        return (zznq) zza(this.zzf);
    }

    @Override // com.google.android.gms.measurement.internal.zzjc
    public final b4.a zzb() {
        zzhy zzhyVar = this.zzm;
        d0.h(zzhyVar);
        return zzhyVar.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzjc
    public final zzab zzd() {
        return this.zzm.zzd();
    }

    public final zzag zze() {
        zzhy zzhyVar = this.zzm;
        d0.h(zzhyVar);
        return zzhyVar.zzf();
    }

    public final zzal zzf() {
        return (zzal) zza(this.zzd);
    }

    public final zzgh zzg() {
        return this.zzm.zzk();
    }

    public final zzgr zzh() {
        return (zzgr) zza(this.zzc);
    }

    public final zzhl zzi() {
        return (zzhl) zza(this.zzb);
    }

    @Override // com.google.android.gms.measurement.internal.zzjc
    public final zzgo zzj() {
        zzhy zzhyVar = this.zzm;
        d0.h(zzhyVar);
        return zzhyVar.zzj();
    }

    public final zzhy zzk() {
        return this.zzm;
    }

    @Override // com.google.android.gms.measurement.internal.zzjc
    public final zzhv zzl() {
        zzhy zzhyVar = this.zzm;
        d0.h(zzhyVar);
        return zzhyVar.zzl();
    }

    public final zzli zzm() {
        return (zzli) zza(this.zzi);
    }

    public final zzmw zzn() {
        return this.zzj;
    }

    public final zznu zzo() {
        return this.zzk;
    }

    public final zzoo zzp() {
        return (zzoo) zza(this.zzh);
    }

    public final zzos zzq() {
        zzhy zzhyVar = this.zzm;
        d0.h(zzhyVar);
        return zzhyVar.zzt();
    }

    public final void zzr() {
        zzl().zzt();
        zzs();
        if (this.zzo) {
            return;
        }
        this.zzo = true;
        if (zzae()) {
            int iZza = zza(this.zzy);
            int iZzab = this.zzm.zzh().zzab();
            zzl().zzt();
            if (iZza > iZzab) {
                zzj().zzg().zza("Panic: can't downgrade version. Previous, current version", Integer.valueOf(iZza), Integer.valueOf(iZzab));
            } else if (iZza < iZzab) {
                if (zza(iZzab, this.zzy)) {
                    zzj().zzp().zza("Storage version upgraded. Previous, current version", Integer.valueOf(iZza), Integer.valueOf(iZzab));
                } else {
                    zzj().zzg().zza("Storage version upgrade failed. Previous, current version", Integer.valueOf(iZza), Integer.valueOf(iZzab));
                }
            }
        }
    }

    public final void zzs() {
        if (!this.zzn) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    public final void zzt() {
        this.zzt++;
    }

    public final void zzu() {
        this.zzs++;
    }

    public final void zzv() {
        zzl().zzt();
        zzf().zzv();
        zzal zzalVarZzf = zzf();
        zzalVarZzf.zzt();
        zzalVarZzf.zzal();
        if (zzalVarZzf.zzaa()) {
            zzfz<Long> zzfzVar = zzbh.zzbh;
            if (zzfzVar.zza(null).longValue() != 0) {
                SQLiteDatabase sQLiteDatabaseE_ = zzalVarZzf.e_();
                ((b) zzalVarZzf.zzb()).getClass();
                int iDelete = sQLiteDatabaseE_.delete("trigger_uris", "abs(timestamp_millis - ?) > cast(? as integer)", new String[]{String.valueOf(System.currentTimeMillis()), String.valueOf(zzfzVar.zza(null))});
                if (iDelete > 0) {
                    zzalVarZzf.zzj().zzp().zza("Deleted stale trigger uris. rowsDeleted", Integer.valueOf(iDelete));
                }
            }
        }
        if (this.zzj.zzd.zza() == 0) {
            zzhb zzhbVar = this.zzj.zzd;
            ((b) zzb()).getClass();
            zzhbVar.zza(System.currentTimeMillis());
        }
        zzac();
    }

    /* JADX WARN: Removed duplicated region for block: B:181:0x05ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzw() {
        /*
            Method dump skipped, instruction units count: 1705
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznv.zzw():void");
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class zzb {
        final String zza;
        long zzb;

        private zzb(zznv zznvVar) {
            this(zznvVar, zznvVar.zzq().zzp());
        }

        private zzb(zznv zznvVar, String str) {
            this.zza = str;
            ((b) zznvVar.zzb()).getClass();
            this.zzb = SystemClock.elapsedRealtime();
        }
    }

    private zznv(zzok zzokVar, zzhy zzhyVar) {
        this.zzn = false;
        this.zzr = new HashSet();
        this.zzah = new zzof(this);
        d0.h(zzokVar);
        this.zzm = zzhy.zza(zzokVar.zza, null, null);
        this.zzab = -1L;
        this.zzk = new zznu(this);
        zzoo zzooVar = new zzoo(this);
        zzooVar.zzam();
        this.zzh = zzooVar;
        zzgr zzgrVar = new zzgr(this);
        zzgrVar.zzam();
        this.zzc = zzgrVar;
        zzhl zzhlVar = new zzhl(this);
        zzhlVar.zzam();
        this.zzb = zzhlVar;
        this.zzac = new HashMap();
        this.zzad = new HashMap();
        this.zzae = new HashMap();
        zzl().zzb(new zznx(this, zzokVar));
    }

    private final int zza(String str, zzah zzahVar) {
        if (this.zzb.zzb(str) == null) {
            zzahVar.zza(zzje.zza.AD_PERSONALIZATION, zzak.FAILSAFE);
            return 1;
        }
        zzg zzgVarZze = zzf().zze(str);
        if (zzgVarZze != null && zzf.zza(zzgVarZze.zzak()).zza() == zzjh.POLICY) {
            zzhl zzhlVar = this.zzb;
            zzje.zza zzaVar = zzje.zza.AD_PERSONALIZATION;
            zzjh zzjhVarZza = zzhlVar.zza(str, zzaVar);
            if (zzjhVarZza != zzjh.UNINITIALIZED) {
                zzahVar.zza(zzaVar, zzak.REMOTE_ENFORCED_DEFAULT);
                return zzjhVarZza == zzjh.GRANTED ? 0 : 1;
            }
        }
        zzje.zza zzaVar2 = zzje.zza.AD_PERSONALIZATION;
        zzahVar.zza(zzaVar2, zzak.REMOTE_DEFAULT);
        return this.zzb.zzc(str, zzaVar2) ? 0 : 1;
    }

    private final zzax zzd(String str) {
        zzl().zzt();
        zzs();
        zzax zzaxVar = this.zzad.get(str);
        if (zzaxVar != null) {
            return zzaxVar;
        }
        zzax zzaxVarZzg = zzf().zzg(str);
        this.zzad.put(str, zzaxVarZzg);
        return zzaxVarZzg;
    }

    private static Boolean zzh(zzo zzoVar) {
        Boolean bool = zzoVar.zzq;
        if (!TextUtils.isEmpty(zzoVar.zzad)) {
            int i6 = zzoa.zza[zzf.zza(zzoVar.zzad).zza().ordinal()];
            if (i6 == 1) {
                return null;
            }
            if (i6 == 2) {
                return Boolean.FALSE;
            }
            if (i6 == 3) {
                return Boolean.TRUE;
            }
            if (i6 == 4) {
                return null;
            }
        }
        return bool;
    }

    private static boolean zzi(zzo zzoVar) {
        return (TextUtils.isEmpty(zzoVar.zzb) && TextUtils.isEmpty(zzoVar.zzp)) ? false : true;
    }

    public final zzje zzb(String str) {
        zzl().zzt();
        zzs();
        zzje zzjeVarZzi = this.zzac.get(str);
        if (zzjeVarZzi == null) {
            zzjeVarZzi = zzf().zzi(str);
            if (zzjeVarZzi == null) {
                zzjeVarZzi = zzje.zza;
            }
            zza(str, zzjeVarZzi);
        }
        return zzjeVarZzi;
    }

    public final void zze(zzo zzoVar) {
        if (this.zzz != null) {
            ArrayList arrayList = new ArrayList();
            this.zzaa = arrayList;
            arrayList.addAll(this.zzz);
        }
        zzal zzalVarZzf = zzf();
        String str = zzoVar.zza;
        d0.h(str);
        d0.d(str);
        zzalVarZzf.zzt();
        zzalVarZzf.zzal();
        try {
            SQLiteDatabase sQLiteDatabaseE_ = zzalVarZzf.e_();
            String[] strArr = {str};
            int iDelete = sQLiteDatabaseE_.delete("apps", "app_id=?", strArr) + sQLiteDatabaseE_.delete("events", "app_id=?", strArr) + sQLiteDatabaseE_.delete("events_snapshot", "app_id=?", strArr) + sQLiteDatabaseE_.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseE_.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseE_.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseE_.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseE_.delete("queue", "app_id=?", strArr) + sQLiteDatabaseE_.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseE_.delete("main_event_params", "app_id=?", strArr) + sQLiteDatabaseE_.delete("default_event_params", "app_id=?", strArr) + sQLiteDatabaseE_.delete("trigger_uris", "app_id=?", strArr) + sQLiteDatabaseE_.delete("upload_queue", "app_id=?", strArr);
            if (iDelete > 0) {
                zzalVarZzf.zzj().zzp().zza("Reset analytics data. app, records", str, Integer.valueOf(iDelete));
            }
        } catch (SQLiteException e9) {
            zzalVarZzf.zzj().zzg().zza("Error resetting analytics data. appId, error", zzgo.zza(str), e9);
        }
        if (zzoVar.zzh) {
            zzd(zzoVar);
        }
    }

    public final void zzf(zzo zzoVar) {
        zzl().zzt();
        zzs();
        d0.d(zzoVar.zza);
        zzax zzaxVarZza = zzax.zza(zzoVar.zzz);
        zzj().zzp().zza("Setting DMA consent for package", zzoVar.zza, zzaxVarZza);
        String str = zzoVar.zza;
        zzl().zzt();
        zzs();
        zzjh zzjhVarZzc = zzax.zza(zza(str), 100).zzc();
        this.zzad.put(str, zzaxVarZza);
        zzf().zza(str, zzaxVarZza);
        zzjh zzjhVarZzc2 = zzax.zza(zza(str), 100).zzc();
        zzl().zzt();
        zzs();
        zzjh zzjhVar = zzjh.DENIED;
        boolean z5 = zzjhVarZzc == zzjhVar && zzjhVarZzc2 == zzjh.GRANTED;
        boolean z8 = zzjhVarZzc == zzjh.GRANTED && zzjhVarZzc2 == zzjhVar;
        if (zze().zza(zzbh.zzcq)) {
            z5 = z5 || z8;
        }
        if (z5) {
            zzj().zzp().zza("Generated _dcu event for", str);
            Bundle bundle = new Bundle();
            if (zzf().zza(zzx(), str, false, false, false, false, false, false, false).zzf < zze().zzb(str, zzbh.zzay)) {
                bundle.putLong("_r", 1L);
                zzj().zzp().zza("_dcu realtime event count", str, Long.valueOf(zzf().zza(zzx(), str, false, false, false, false, false, true, false).zzf));
            }
            this.zzah.zza(str, "_dcu", bundle);
        }
    }

    public final void zzg(zzo zzoVar) {
        zzl().zzt();
        zzs();
        d0.d(zzoVar.zza);
        zzje zzjeVarZza = zzje.zza(zzoVar.zzt, zzoVar.zzy);
        zzje zzjeVarZzb = zzb(zzoVar.zza);
        zzj().zzp().zza("Setting storage consent for package", zzoVar.zza, zzjeVarZza);
        zza(zzoVar.zza, zzjeVarZza);
        v7.a();
        if (zze().zza(zzbh.zzcy) || !zzjeVarZza.zzc(zzjeVarZzb)) {
            return;
        }
        zze(zzoVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0202 A[Catch: all -> 0x00c6, TryCatch #2 {all -> 0x00c6, blocks: (B:24:0x00ab, B:26:0x00bb, B:43:0x00fc, B:45:0x010b, B:47:0x0120, B:48:0x0146, B:50:0x01a3, B:53:0x01b6, B:56:0x01ca, B:58:0x01d5, B:63:0x01e6, B:66:0x01f4, B:70:0x01ff, B:72:0x0202, B:73:0x0223, B:75:0x0228, B:80:0x0247, B:84:0x025f, B:86:0x027f, B:89:0x0287, B:91:0x0296, B:120:0x037c, B:122:0x03a8, B:123:0x03ab, B:125:0x03cf, B:163:0x0493, B:164:0x0496, B:174:0x0516, B:127:0x03e4, B:132:0x0409, B:134:0x0411, B:136:0x0417, B:140:0x0429, B:144:0x0437, B:148:0x0442, B:141:0x042f, B:149:0x044f, B:154:0x0474, B:156:0x047c, B:158:0x0484, B:160:0x048a, B:152:0x0460, B:130:0x03f5, B:92:0x02a7, B:94:0x02d2, B:95:0x02e3, B:97:0x02ea, B:99:0x02f0, B:101:0x02fa, B:103:0x0300, B:105:0x0306, B:107:0x030c, B:108:0x0311, B:114:0x0335, B:116:0x0339, B:117:0x034d, B:118:0x035d, B:119:0x036d, B:167:0x04b1, B:169:0x04df, B:170:0x04e2, B:171:0x04f8, B:173:0x04fc, B:77:0x0237, B:32:0x00cb, B:36:0x00da, B:38:0x00e9, B:40:0x00f3, B:42:0x00f9), top: B:183:0x00ab, inners: #0, #1, #3, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzd(com.google.android.gms.measurement.internal.zzo r27) {
        /*
            Method dump skipped, instruction units count: 1325
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznv.zzd(com.google.android.gms.measurement.internal.zzo):void");
    }

    public final String zzb(zzo zzoVar) {
        try {
            return (String) zzl().zza(new zzog(this, zzoVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e9) {
            zzj().zzg().zza("Failed to get app instance id. appId", zzgo.zza(zzoVar.zza), e9);
            return null;
        }
    }

    private final int zza(FileChannel fileChannel) {
        zzl().zzt();
        if (fileChannel != null && fileChannel.isOpen()) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            try {
                fileChannel.position(0L);
                int i6 = fileChannel.read(byteBufferAllocate);
                if (i6 == 4) {
                    byteBufferAllocate.flip();
                    return byteBufferAllocate.getInt();
                }
                if (i6 != -1) {
                    zzj().zzu().zza("Unexpected data length. Bytes read", Integer.valueOf(i6));
                }
                return 0;
            } catch (IOException e9) {
                zzj().zzg().zza("Failed to read from channel", e9);
                return 0;
            }
        }
        zzj().zzg().zza("Bad channel to read from");
        return 0;
    }

    private final void zzb(zzg zzgVar) {
        zzl().zzt();
        if (TextUtils.isEmpty(zzgVar.zzah()) && TextUtils.isEmpty(zzgVar.zzaa())) {
            String strZzac = zzgVar.zzac();
            d0.h(strZzac);
            zza(strZzac, 204, null, null, null);
            return;
        }
        l9.a();
        e eVar = null;
        if (zze().zza(zzbh.zzcf)) {
            String strZzac2 = zzgVar.zzac();
            d0.h(strZzac2);
            zzj().zzp().zza("Fetching remote configuration", strZzac2);
            y2 y2VarZzc = zzi().zzc(strZzac2);
            String strZze = zzi().zze(strZzac2);
            if (y2VarZzc != null) {
                if (!TextUtils.isEmpty(strZze)) {
                    eVar = new e(0);
                    eVar.put("If-Modified-Since", strZze);
                }
                String strZzd = zzi().zzd(strZzac2);
                if (!TextUtils.isEmpty(strZzd)) {
                    if (eVar == null) {
                        eVar = new e(0);
                    }
                    eVar.put("If-None-Match", strZzd);
                }
            }
            e eVar2 = eVar;
            this.zzu = true;
            zzgr zzgrVarZzh = zzh();
            zzgu zzguVar = new zzgu() { // from class: com.google.android.gms.measurement.internal.zzny
                @Override // com.google.android.gms.measurement.internal.zzgu
                public final void zza(String str, int i6, Throwable th, byte[] bArr, Map map) {
                    this.zza.zza(str, i6, th, bArr, map);
                }
            };
            zzgrVarZzh.zzt();
            zzgrVarZzh.zzal();
            String strZza = zzgrVarZzh.zzo().zza(zzgVar);
            try {
                zzgrVarZzh.zzl().zza(new zzgw(zzgrVarZzh, zzgVar.zzac(), new URI(strZza).toURL(), null, eVar2, zzguVar));
                return;
            } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused) {
                zzgrVarZzh.zzj().zzg().zza("Failed to parse config URL. Not fetching. appId", zzgo.zza(zzgVar.zzac()), strZza);
                return;
            }
        }
        String strZza2 = this.zzk.zza(zzgVar);
        try {
            String strZzac3 = zzgVar.zzac();
            d0.h(strZzac3);
            URL url = new URL(strZza2);
            zzj().zzp().zza("Fetching remote configuration", strZzac3);
            y2 y2VarZzc2 = zzi().zzc(strZzac3);
            String strZze2 = zzi().zze(strZzac3);
            if (y2VarZzc2 != null) {
                if (!TextUtils.isEmpty(strZze2)) {
                    eVar = new e(0);
                    eVar.put("If-Modified-Since", strZze2);
                }
                String strZzd2 = zzi().zzd(strZzac3);
                if (!TextUtils.isEmpty(strZzd2)) {
                    if (eVar == null) {
                        eVar = new e(0);
                    }
                    eVar.put("If-None-Match", strZzd2);
                }
            }
            this.zzu = true;
            zzgr zzgrVarZzh2 = zzh();
            zzod zzodVar = new zzod(this);
            zzgrVarZzh2.zzt();
            zzgrVarZzh2.zzal();
            zzgrVarZzh2.zzl().zza(new zzgw(zzgrVarZzh2, strZzac3, url, null, eVar, zzodVar));
        } catch (MalformedURLException unused2) {
            zzj().zzg().zza("Failed to parse config URL. Not fetching. appId", zzgo.zza(zzgVar.zzac()), strZza2);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzjc
    public final Context zza() {
        return this.zzm.zza();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    public final Bundle zza(String str) {
        ?? Zza;
        zzl().zzt();
        zzs();
        if (zzi().zzb(str) == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        zzje zzjeVarZzb = zzb(str);
        bundle.putAll(zzjeVarZzb.zzb());
        bundle.putAll(zza(str, zzd(str), zzjeVarZzb, new zzah()).zzb());
        zzop zzopVarZze = zzf().zze(str, "_npa");
        if (zzopVarZze != null) {
            Zza = zzopVarZze.zze.equals(1L);
        } else {
            Zza = zza(str, new zzah());
        }
        bundle.putString("ad_personalization", Zza == 1 ? "denied" : "granted");
        return bundle;
    }

    private final void zze(String str) {
        String str2;
        zzl().zzt();
        zzs();
        this.zzw = true;
        try {
            Boolean boolZzab = this.zzm.zzr().zzab();
            if (boolZzab == null) {
                zzj().zzu().zza("Upload data called on the client side before use of service was decided");
                this.zzw = false;
                zzaa();
                return;
            }
            if (boolZzab.booleanValue()) {
                zzj().zzg().zza("Upload called in the client side when service should be used");
                this.zzw = false;
                zzaa();
                return;
            }
            if (this.zzp > 0) {
                zzac();
                this.zzw = false;
                zzaa();
                return;
            }
            if (!zzh().zzu()) {
                zzj().zzp().zza("Network not connected, ignoring upload request");
                zzac();
                this.zzw = false;
                zzaa();
                return;
            }
            if (!zzf().zzs(str)) {
                zzj().zzp().zza("Upload queue has no batches for appId", str);
                this.zzw = false;
                zzaa();
                return;
            }
            zzoj zzojVarZzj = zzf().zzj(str);
            if (zzojVarZzj == null) {
                this.zzw = false;
                zzaa();
                return;
            }
            x3 x3VarZzc = zzojVarZzj.zzc();
            if (x3VarZzc == null) {
                this.zzw = false;
                zzaa();
                return;
            }
            String strZza = zzp().zza(x3VarZzc);
            byte[] bArrC = x3VarZzc.c();
            zzj().zzp().zza("Uploading data from upload queue. appId, uncompressed size, data", str, Integer.valueOf(bArrC.length), strZza);
            l9.a();
            if (zze().zza(zzbh.zzcf)) {
                this.zzv = true;
                zzh().zza(str, zzojVarZzj.zzb(), x3VarZzc, new zzob(this, str, zzojVarZzj));
            } else {
                try {
                    this.zzv = true;
                    str2 = str;
                } catch (MalformedURLException unused) {
                    str2 = str;
                }
                try {
                    zzh().zza(str2, new URL(zzojVarZzj.zzd()), bArrC, zzojVarZzj.zze(), new zzoe(this, str, zzojVarZzj));
                } catch (MalformedURLException unused2) {
                    zzj().zzg().zza("Failed to parse URL. Not uploading MeasurementBatch. appId", zzgo.zza(str2), zzojVarZzj.zzd());
                }
            }
            this.zzw = false;
            zzaa();
        } catch (Throwable th) {
            this.zzw = false;
            zzaa();
            throw th;
        }
    }

    public final zzt zzc() {
        return (zzt) zza(this.zzg);
    }

    public final void zzc(zzo zzoVar) {
        zzl().zzt();
        zzs();
        d0.h(zzoVar);
        d0.d(zzoVar.zza);
        if (zze().zza(zzbh.zzdc)) {
            int i6 = 0;
            if (zze().zza(zzbh.zzbj)) {
                ((b) zzb()).getClass();
                long jCurrentTimeMillis = System.currentTimeMillis();
                int iZzb = zze().zzb((String) null, zzbh.zzau);
                zze();
                long jZzg = jCurrentTimeMillis - zzag.zzg();
                while (i6 < iZzb && zza((String) null, jZzg)) {
                    i6++;
                }
            } else {
                zze();
                long jZzh = zzag.zzh();
                while (i6 < jZzh && zza(zzoVar.zza, 0L)) {
                    i6++;
                }
            }
            if (zze().zza(zzbh.zzbk)) {
                zzab();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0241  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.zzg zza(com.google.android.gms.measurement.internal.zzo r13) {
        /*
            Method dump skipped, instruction units count: 591
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznv.zza(com.google.android.gms.measurement.internal.zzo):com.google.android.gms.measurement.internal.zzg");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0265  */
    /* JADX WARN: Type inference failed for: r14v10, types: [int] */
    /* JADX WARN: Type inference failed for: r14v51 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzc(com.google.android.gms.measurement.internal.zzbf r35, com.google.android.gms.measurement.internal.zzo r36) {
        /*
            Method dump skipped, instruction units count: 2793
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznv.zzc(com.google.android.gms.measurement.internal.zzbf, com.google.android.gms.measurement.internal.zzo):void");
    }

    private final void zzb(zzbf zzbfVar, zzo zzoVar) {
        d0.d(zzoVar.zza);
        zzgs zzgsVarZza = zzgs.zza(zzbfVar);
        zzq().zza(zzgsVarZza.zzc, zzf().zzd(zzoVar.zza));
        zzq().zza(zzgsVarZza, zze().zzb(zzoVar.zza));
        zzbf zzbfVarZza = zzgsVarZza.zza();
        if ("_cmp".equals(zzbfVarZza.zza) && "referrer API v2".equals(zzbfVarZza.zzb.zzd("_cis"))) {
            String strZzd = zzbfVarZza.zzb.zzd("gclid");
            if (!TextUtils.isEmpty(strZzd)) {
                zza(new zzon("_lgclid", zzbfVarZza.zzd, strZzd, "auto"), zzoVar);
            }
        }
        zza(zzbfVarZza, zzoVar);
    }

    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final void zza(String str, int i6, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        String strZza;
        String strZza2;
        zzl().zzt();
        zzs();
        d0.d(str);
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } catch (Throwable th2) {
                this.zzu = false;
                zzaa();
                throw th2;
            }
        }
        zzj().zzp().zza("onConfigFetched. Response size", Integer.valueOf(bArr.length));
        zzf().zzp();
        try {
            zzg zzgVarZze = zzf().zze(str);
            boolean z5 = (i6 == 200 || i6 == 204 || i6 == 304) && th == null;
            if (zzgVarZze == null) {
                zzj().zzu().zza("App does not exist in onConfigFetched. appId", zzgo.zza(str));
            } else if (!z5 && i6 != 404) {
                ((b) zzb()).getClass();
                zzgVarZze.zzm(System.currentTimeMillis());
                zzf().zza(zzgVarZze, false, false);
                zzj().zzp().zza("Fetching config failed. code, error", Integer.valueOf(i6), th);
                zzi().zzi(str);
                zzhb zzhbVar = this.zzj.zze;
                ((b) zzb()).getClass();
                zzhbVar.zza(System.currentTimeMillis());
                if (i6 == 503 || i6 == 429) {
                    zzhb zzhbVar2 = this.zzj.zzc;
                    ((b) zzb()).getClass();
                    zzhbVar2.zza(System.currentTimeMillis());
                }
                zzac();
            } else {
                l9.a();
                if (zze().zza(zzbh.zzcf)) {
                    strZza = zza(map, "Last-Modified");
                    strZza2 = zza(map, "ETag");
                } else {
                    List<String> list = map != null ? map.get("Last-Modified") : null;
                    strZza = (list == null || list.isEmpty()) ? null : list.get(0);
                    List<String> list2 = map != null ? map.get("ETag") : null;
                    strZza2 = (list2 == null || list2.isEmpty()) ? null : list2.get(0);
                }
                if (i6 != 404 && i6 != 304) {
                    if (!zzi().zza(str, bArr, strZza, strZza2)) {
                        zzf().zzu();
                        this.zzu = false;
                        zzaa();
                        return;
                    }
                } else if (zzi().zzc(str) == null && !zzi().zza(str, null, null, null)) {
                    zzf().zzu();
                    this.zzu = false;
                    zzaa();
                    return;
                }
                ((b) zzb()).getClass();
                zzgVarZze.zzd(System.currentTimeMillis());
                zzf().zza(zzgVarZze, false, false);
                if (i6 == 404) {
                    zzj().zzv().zza("Config not found. Using empty config. appId", str);
                } else {
                    zzj().zzp().zza("Successfully fetched config. Got network response. code, size", Integer.valueOf(i6), Integer.valueOf(bArr.length));
                }
                if (zzh().zzu() && zzad()) {
                    zzw();
                } else if (zze().zza(zzbh.zzcb) && zzh().zzu() && zzf().zzs(zzgVarZze.zzac())) {
                    zze(zzgVarZze.zzac());
                } else {
                    zzac();
                }
            }
            zzf().zzw();
            zzf().zzu();
            this.zzu = false;
            zzaa();
        } catch (Throwable th3) {
            zzf().zzu();
            throw th3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.google.android.gms.measurement.internal.zzax zza(java.lang.String r8, com.google.android.gms.measurement.internal.zzax r9, com.google.android.gms.measurement.internal.zzje r10, com.google.android.gms.measurement.internal.zzah r11) {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznv.zza(java.lang.String, com.google.android.gms.measurement.internal.zzax, com.google.android.gms.measurement.internal.zzje, com.google.android.gms.measurement.internal.zzah):com.google.android.gms.measurement.internal.zzax");
    }

    public final void zzb(zzg zzgVar, y3 y3Var) {
        zzl().zzt();
        zzs();
        g3 g3VarX = h3.x();
        byte[] bArrZzav = zzgVar.zzav();
        if (bArrZzav != null) {
            try {
                g3VarX = (g3) zzoo.zza(g3VarX, bArrZzav);
            } catch (i6 unused) {
                zzj().zzu().zza("Failed to parse locally stored ad campaign info. appId", zzgo.zza(zzgVar.zzac()));
            }
        }
        for (q3 q3Var : y3Var.m()) {
            if (q3Var.B().equals("_cmp")) {
                String str = (String) zzoo.zza(q3Var, "gclid", "");
                String str2 = (String) zzoo.zza(q3Var, "gbraid", "");
                String str3 = (String) zzoo.zza(q3Var, "gad_source", "");
                if (!str.isEmpty() || !str2.isEmpty()) {
                    long jLongValue = ((Long) zzoo.zza(q3Var, "click_timestamp", (Object) 0L)).longValue();
                    if (jLongValue <= 0) {
                        jLongValue = q3Var.z();
                    }
                    if ("referrer API v2".equals(zzoo.zzb(q3Var, "_cis"))) {
                        if (jLongValue > ((h3) g3VarX.f1993b).r()) {
                            if (str.isEmpty()) {
                                g3VarX.e();
                                h3.E((h3) g3VarX.f1993b);
                            } else {
                                g3VarX.e();
                                h3.F((h3) g3VarX.f1993b, str);
                            }
                            if (str2.isEmpty()) {
                                g3VarX.e();
                                h3.B((h3) g3VarX.f1993b);
                            } else {
                                g3VarX.e();
                                h3.C((h3) g3VarX.f1993b, str2);
                            }
                            if (str3.isEmpty()) {
                                g3VarX.e();
                                h3.y((h3) g3VarX.f1993b);
                            } else {
                                g3VarX.e();
                                h3.z((h3) g3VarX.f1993b, str3);
                            }
                            g3VarX.e();
                            h3.t((h3) g3VarX.f1993b, jLongValue);
                        }
                    } else if (jLongValue > ((h3) g3VarX.f1993b).n()) {
                        if (str.isEmpty()) {
                            g3VarX.e();
                            h3.v((h3) g3VarX.f1993b);
                        } else {
                            g3VarX.e();
                            h3.w((h3) g3VarX.f1993b, str);
                        }
                        if (str2.isEmpty()) {
                            g3VarX.e();
                            h3.s((h3) g3VarX.f1993b);
                        } else {
                            g3VarX.e();
                            h3.u((h3) g3VarX.f1993b, str2);
                        }
                        if (str3.isEmpty()) {
                            g3VarX.e();
                            h3.o((h3) g3VarX.f1993b);
                        } else {
                            g3VarX.e();
                            h3.q((h3) g3VarX.f1993b, str3);
                        }
                        g3VarX.e();
                        h3.p((h3) g3VarX.f1993b, jLongValue);
                    }
                }
            }
        }
        if (!((h3) g3VarX.c()).equals(h3.A())) {
            h3 h3Var = (h3) g3VarX.c();
            y3Var.e();
            z3.u((z3) y3Var.f1993b, h3Var);
        }
        zzgVar.zza(((h3) g3VarX.c()).c());
        if (zzgVar.zzas()) {
            zzf().zza(zzgVar, false, false);
        }
    }

    private static zznr zza(zznr zznrVar) {
        if (zznrVar != null) {
            if (zznrVar.zzan()) {
                return zznrVar;
            }
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(zznrVar.getClass())));
        }
        throw new IllegalStateException("Upload Component not created");
    }

    public static zznv zza(Context context) {
        d0.h(context);
        d0.h(context.getApplicationContext());
        if (zza == null) {
            synchronized (zznv.class) {
                try {
                    if (zza == null) {
                        zza = new zznv(new zzok(context));
                    }
                } finally {
                }
            }
        }
        return zza;
    }

    private final Boolean zza(zzg zzgVar) {
        try {
            if (zzgVar.zze() != -2147483648L) {
                if (zzgVar.zze() == c.a(this.zzm.zza()).c(0, zzgVar.zzac()).versionCode) {
                    return Boolean.TRUE;
                }
            } else {
                String str = c.a(this.zzm.zza()).c(0, zzgVar.zzac()).versionName;
                String strZzaf = zzgVar.zzaf();
                if (strZzaf != null && strZzaf.equals(str)) {
                    return Boolean.TRUE;
                }
            }
            return Boolean.FALSE;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private final String zza(zzje zzjeVar) {
        if (!zzjeVar.zzh()) {
            return null;
        }
        byte[] bArr = new byte[16];
        zzq().zzv().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    private static String zza(Map<String, List<String>> map, String str) {
        if (map == null) {
            return null;
        }
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (str.equalsIgnoreCase(entry.getKey())) {
                if (entry.getValue().isEmpty()) {
                    return null;
                }
                return entry.getValue().get(0);
            }
        }
        return null;
    }

    public static /* synthetic */ void zza(zznv zznvVar, zzok zzokVar) {
        zznvVar.zzl().zzt();
        zznvVar.zzl = new zzhf(zznvVar);
        zzal zzalVar = new zzal(zznvVar);
        zzalVar.zzam();
        zznvVar.zzd = zzalVar;
        zzag zzagVarZze = zznvVar.zze();
        zzhl zzhlVar = zznvVar.zzb;
        d0.h(zzhlVar);
        zzagVarZze.zza(zzhlVar);
        zzmw zzmwVar = new zzmw(zznvVar);
        zzmwVar.zzam();
        zznvVar.zzj = zzmwVar;
        zzt zztVar = new zzt(zznvVar);
        zztVar.zzam();
        zznvVar.zzg = zztVar;
        zzli zzliVar = new zzli(zznvVar);
        zzliVar.zzam();
        zznvVar.zzi = zzliVar;
        zznq zznqVar = new zznq(zznvVar);
        zznqVar.zzam();
        zznvVar.zzf = zznqVar;
        zznvVar.zze = new zzgy(zznvVar);
        if (zznvVar.zzs != zznvVar.zzt) {
            zznvVar.zzj().zzg().zza("Not all upload components initialized", Integer.valueOf(zznvVar.zzs), Integer.valueOf(zznvVar.zzt));
        }
        zznvVar.zzn = true;
    }

    public final void zza(Runnable runnable) {
        zzl().zzt();
        if (this.zzq == null) {
            this.zzq = new ArrayList();
        }
        this.zzq.add(runnable);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(java.lang.String r6, com.google.android.gms.internal.measurement.y3 r7) {
        /*
            Method dump skipped, instruction units count: 267
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznv.zza(java.lang.String, com.google.android.gms.internal.measurement.y3):void");
    }

    public final void zzb(zzae zzaeVar) {
        String str = zzaeVar.zza;
        d0.h(str);
        zzo zzoVarZzc = zzc(str);
        if (zzoVarZzc != null) {
            zzb(zzaeVar, zzoVarZzc);
        }
    }

    public final void zzb(zzae zzaeVar, zzo zzoVar) {
        boolean z5;
        d0.h(zzaeVar);
        d0.d(zzaeVar.zza);
        d0.h(zzaeVar.zzb);
        d0.h(zzaeVar.zzc);
        d0.d(zzaeVar.zzc.zza);
        zzl().zzt();
        zzs();
        if (zzi(zzoVar)) {
            if (!zzoVar.zzh) {
                zza(zzoVar);
                return;
            }
            zzae zzaeVar2 = new zzae(zzaeVar);
            boolean z8 = false;
            zzaeVar2.zze = false;
            zzf().zzp();
            try {
                zzal zzalVarZzf = zzf();
                String str = zzaeVar2.zza;
                d0.h(str);
                zzae zzaeVarZzc = zzalVarZzf.zzc(str, zzaeVar2.zzc.zza);
                if (zzaeVarZzc != null && !zzaeVarZzc.zzb.equals(zzaeVar2.zzb)) {
                    zzj().zzu().zza("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzm.zzk().zzc(zzaeVar2.zzc.zza), zzaeVar2.zzb, zzaeVarZzc.zzb);
                }
                if (zzaeVarZzc != null && (z5 = zzaeVarZzc.zze)) {
                    zzaeVar2.zzb = zzaeVarZzc.zzb;
                    zzaeVar2.zzd = zzaeVarZzc.zzd;
                    zzaeVar2.zzh = zzaeVarZzc.zzh;
                    zzaeVar2.zzf = zzaeVarZzc.zzf;
                    zzaeVar2.zzi = zzaeVarZzc.zzi;
                    zzaeVar2.zze = z5;
                    zzon zzonVar = zzaeVar2.zzc;
                    zzaeVar2.zzc = new zzon(zzonVar.zza, zzaeVarZzc.zzc.zzb, zzonVar.zza(), zzaeVarZzc.zzc.zze);
                } else if (TextUtils.isEmpty(zzaeVar2.zzf)) {
                    zzon zzonVar2 = zzaeVar2.zzc;
                    zzaeVar2.zzc = new zzon(zzonVar2.zza, zzaeVar2.zzd, zzonVar2.zza(), zzaeVar2.zzc.zze);
                    z8 = true;
                    zzaeVar2.zze = true;
                }
                if (zzaeVar2.zze) {
                    zzon zzonVar3 = zzaeVar2.zzc;
                    String str2 = zzaeVar2.zza;
                    d0.h(str2);
                    String str3 = zzaeVar2.zzb;
                    String str4 = zzonVar3.zza;
                    long j3 = zzonVar3.zzb;
                    Object objZza = zzonVar3.zza();
                    d0.h(objZza);
                    zzop zzopVar = new zzop(str2, str3, str4, j3, objZza);
                    if (zzf().zza(zzopVar)) {
                        zzj().zzc().zza("User property updated immediately", zzaeVar2.zza, this.zzm.zzk().zzc(zzopVar.zzc), zzopVar.zze);
                    } else {
                        zzj().zzg().zza("(2)Too many active user properties, ignoring", zzgo.zza(zzaeVar2.zza), this.zzm.zzk().zzc(zzopVar.zzc), zzopVar.zze);
                    }
                    if (z8 && zzaeVar2.zzi != null) {
                        zzc(new zzbf(zzaeVar2.zzi, zzaeVar2.zzd), zzoVar);
                    }
                }
                if (zzf().zza(zzaeVar2)) {
                    zzj().zzc().zza("Conditional property added", zzaeVar2.zza, this.zzm.zzk().zzc(zzaeVar2.zzc.zza), zzaeVar2.zzc.zza());
                } else {
                    zzj().zzg().zza("Too many conditional properties, ignoring", zzgo.zza(zzaeVar2.zza), this.zzm.zzk().zzc(zzaeVar2.zzc.zza), zzaeVar2.zzc.zza());
                }
                zzf().zzw();
                zzf().zzu();
            } catch (Throwable th) {
                zzf().zzu();
                throw th;
            }
        }
    }

    public final void zza(zzg zzgVar, y3 y3Var) {
        h4 h4Var;
        zzl().zzt();
        zzs();
        zzah zzahVarZza = zzah.zza(((z3) y3Var.f1993b).F());
        String strZzac = zzgVar.zzac();
        zzl().zzt();
        zzs();
        zzje zzjeVarZzb = zzb(strZzac);
        int[] iArr = zzoa.zza;
        int i6 = iArr[zzjeVarZzb.zzc().ordinal()];
        if (i6 == 1) {
            zzahVarZza.zza(zzje.zza.AD_STORAGE, zzak.REMOTE_ENFORCED_DEFAULT);
        } else if (i6 != 2 && i6 != 3) {
            zzahVarZza.zza(zzje.zza.AD_STORAGE, zzak.FAILSAFE);
        } else {
            zzahVarZza.zza(zzje.zza.AD_STORAGE, zzjeVarZzb.zza());
        }
        int i9 = iArr[zzjeVarZzb.zzd().ordinal()];
        if (i9 == 1) {
            zzahVarZza.zza(zzje.zza.ANALYTICS_STORAGE, zzak.REMOTE_ENFORCED_DEFAULT);
        } else if (i9 != 2 && i9 != 3) {
            zzahVarZza.zza(zzje.zza.ANALYTICS_STORAGE, zzak.FAILSAFE);
        } else {
            zzahVarZza.zza(zzje.zza.ANALYTICS_STORAGE, zzjeVarZzb.zza());
        }
        String strZzac2 = zzgVar.zzac();
        zzl().zzt();
        zzs();
        zzax zzaxVarZza = zza(strZzac2, zzd(strZzac2), zzb(strZzac2), zzahVarZza);
        Boolean boolZzd = zzaxVarZza.zzd();
        d0.h(boolZzd);
        boolean zBooleanValue = boolZzd.booleanValue();
        y3Var.e();
        z3.j0((z3) y3Var.f1993b, zBooleanValue);
        if (!TextUtils.isEmpty(zzaxVarZza.zze())) {
            String strZze = zzaxVarZza.zze();
            y3Var.e();
            z3.s1((z3) y3Var.f1993b, strZze);
        }
        zzl().zzt();
        zzs();
        Iterator it = y3Var.n().iterator();
        while (true) {
            if (it.hasNext()) {
                h4Var = (h4) it.next();
                if ("_npa".equals(h4Var.A())) {
                    break;
                }
            } else {
                h4Var = null;
                break;
            }
        }
        if (h4Var != null) {
            zzje.zza zzaVar = zzje.zza.AD_PERSONALIZATION;
            if (zzahVarZza.zza(zzaVar) == zzak.UNSET) {
                zzop zzopVarZze = zzf().zze(zzgVar.zzac(), "_npa");
                if (zzopVarZze != null) {
                    if ("tcf".equals(zzopVarZze.zzb)) {
                        zzahVarZza.zza(zzaVar, zzak.TCF);
                    } else if ("app".equals(zzopVarZze.zzb)) {
                        zzahVarZza.zza(zzaVar, zzak.API);
                    } else {
                        zzahVarZza.zza(zzaVar, zzak.MANIFEST);
                    }
                } else {
                    Boolean boolZzx = zzgVar.zzx();
                    if (boolZzx != null && ((boolZzx != Boolean.TRUE || h4Var.w() == 1) && (boolZzx != Boolean.FALSE || h4Var.w() == 0))) {
                        zzahVarZza.zza(zzaVar, zzak.MANIFEST);
                    } else {
                        zzahVarZza.zza(zzaVar, zzak.API);
                    }
                }
            }
        } else {
            int iZza = zza(zzgVar.zzac(), zzahVarZza);
            g4 g4VarZ = h4.z();
            g4VarZ.e();
            h4.q((h4) g4VarZ.f1993b, "_npa");
            ((b) zzb()).getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            g4VarZ.e();
            h4.u((h4) g4VarZ.f1993b, jCurrentTimeMillis);
            g4VarZ.e();
            h4.p((h4) g4VarZ.f1993b, iZza);
            h4 h4Var2 = (h4) g4VarZ.c();
            y3Var.e();
            z3.y((z3) y3Var.f1993b, h4Var2);
            zzj().zzp().zza("Setting user property", "non_personalized_ads(_npa)", Integer.valueOf(iZza));
        }
        String string = zzahVarZza.toString();
        y3Var.e();
        z3.i1((z3) y3Var.f1993b, string);
        boolean zZzm = this.zzb.zzm(zzgVar.zzac());
        List listM = y3Var.m();
        int i10 = 0;
        for (int i11 = 0; i11 < listM.size(); i11++) {
            if ("_tcf".equals(((q3) listM.get(i11)).B())) {
                p3 p3Var = (p3) ((q3) listM.get(i11)).k();
                List listO = p3Var.o();
                while (true) {
                    if (i10 >= listO.size()) {
                        break;
                    }
                    if ("_tcfd".equals(((u3) listO.get(i10)).C())) {
                        String strZza = zznm.zza(((u3) listO.get(i10)).D(), zZzm);
                        t3 t3VarB = u3.B();
                        t3VarB.i("_tcfd");
                        t3VarB.j(strZza);
                        p3Var.e();
                        q3.s((q3) p3Var.f1993b, i10, (u3) t3VarB.c());
                        break;
                    }
                    i10++;
                }
                y3Var.h(i11, p3Var);
                return;
            }
        }
    }

    private static void zza(p3 p3Var, int i6, String str) {
        List listO = p3Var.o();
        for (int i9 = 0; i9 < listO.size(); i9++) {
            if ("_err".equals(((u3) listO.get(i9)).C())) {
                return;
            }
        }
        t3 t3VarB = u3.B();
        t3VarB.i("_err");
        t3VarB.h(i6);
        u3 u3Var = (u3) t3VarB.c();
        t3 t3VarB2 = u3.B();
        t3VarB2.i("_ev");
        t3VarB2.j(str);
        u3 u3Var2 = (u3) t3VarB2.c();
        p3Var.i(u3Var);
        p3Var.i(u3Var2);
    }

    public final void zza(zzbf zzbfVar, zzo zzoVar) {
        zzbf zzbfVar2;
        List<zzae> listZza;
        List<zzae> listZza2;
        List<zzae> listZza3;
        String str;
        d0.h(zzoVar);
        d0.d(zzoVar.zza);
        zzl().zzt();
        zzs();
        String str2 = zzoVar.zza;
        long j3 = zzbfVar.zzd;
        zzgs zzgsVarZza = zzgs.zza(zzbfVar);
        zzl().zzt();
        int i6 = 0;
        zzos.zza((this.zzaf == null || (str = this.zzag) == null || !str.equals(str2)) ? null : this.zzaf, zzgsVarZza.zzc, false);
        zzbf zzbfVarZza = zzgsVarZza.zza();
        zzp();
        if (zzoo.zza(zzbfVarZza, zzoVar)) {
            if (!zzoVar.zzh) {
                zza(zzoVar);
                return;
            }
            List<String> list = zzoVar.zzs;
            if (list == null) {
                zzbfVar2 = zzbfVarZza;
            } else if (list.contains(zzbfVarZza.zza)) {
                Bundle bundleZzb = zzbfVarZza.zzb.zzb();
                bundleZzb.putLong("ga_safelisted", 1L);
                zzbfVar2 = new zzbf(zzbfVarZza.zza, new zzbe(bundleZzb), zzbfVarZza.zzc, zzbfVarZza.zzd);
            } else {
                zzj().zzc().zza("Dropping non-safelisted event. appId, event name, origin", str2, zzbfVarZza.zza, zzbfVarZza.zzc);
                return;
            }
            zzf().zzp();
            try {
                zzal zzalVarZzf = zzf();
                d0.d(str2);
                zzalVarZzf.zzt();
                zzalVarZzf.zzal();
                if (j3 < 0) {
                    zzalVarZzf.zzj().zzu().zza("Invalid time querying timed out conditional properties", zzgo.zza(str2), Long.valueOf(j3));
                    listZza = Collections.EMPTY_LIST;
                } else {
                    listZza = zzalVarZzf.zza("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str2, String.valueOf(j3)});
                }
                for (zzae zzaeVar : listZza) {
                    if (zzaeVar != null) {
                        zzj().zzp().zza("User property timed out", zzaeVar.zza, this.zzm.zzk().zzc(zzaeVar.zzc.zza), zzaeVar.zzc.zza());
                        if (zzaeVar.zzg != null) {
                            zzc(new zzbf(zzaeVar.zzg, j3), zzoVar);
                        }
                        zzf().zza(str2, zzaeVar.zzc.zza);
                    }
                }
                zzal zzalVarZzf2 = zzf();
                d0.d(str2);
                zzalVarZzf2.zzt();
                zzalVarZzf2.zzal();
                if (j3 < 0) {
                    zzalVarZzf2.zzj().zzu().zza("Invalid time querying expired conditional properties", zzgo.zza(str2), Long.valueOf(j3));
                    listZza2 = Collections.EMPTY_LIST;
                } else {
                    listZza2 = zzalVarZzf2.zza("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str2, String.valueOf(j3)});
                }
                ArrayList arrayList = new ArrayList(listZza2.size());
                for (zzae zzaeVar2 : listZza2) {
                    if (zzaeVar2 != null) {
                        zzj().zzp().zza("User property expired", zzaeVar2.zza, this.zzm.zzk().zzc(zzaeVar2.zzc.zza), zzaeVar2.zzc.zza());
                        zzf().zzh(str2, zzaeVar2.zzc.zza);
                        zzbf zzbfVar3 = zzaeVar2.zzk;
                        if (zzbfVar3 != null) {
                            arrayList.add(zzbfVar3);
                        }
                        zzf().zza(str2, zzaeVar2.zzc.zza);
                    }
                }
                int size = arrayList.size();
                int i9 = 0;
                while (i9 < size) {
                    Object obj = arrayList.get(i9);
                    i9++;
                    zzc(new zzbf((zzbf) obj, j3), zzoVar);
                }
                zzal zzalVarZzf3 = zzf();
                String str3 = zzbfVar2.zza;
                d0.d(str2);
                d0.d(str3);
                zzalVarZzf3.zzt();
                zzalVarZzf3.zzal();
                if (j3 < 0) {
                    zzalVarZzf3.zzj().zzu().zza("Invalid time querying triggered conditional properties", zzgo.zza(str2), zzalVarZzf3.zzi().zza(str3), Long.valueOf(j3));
                    listZza3 = Collections.EMPTY_LIST;
                } else {
                    listZza3 = zzalVarZzf3.zza("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str2, str3, String.valueOf(j3)});
                }
                ArrayList arrayList2 = new ArrayList(listZza3.size());
                for (zzae zzaeVar3 : listZza3) {
                    if (zzaeVar3 != null) {
                        zzon zzonVar = zzaeVar3.zzc;
                        String str4 = zzaeVar3.zza;
                        d0.h(str4);
                        String str5 = zzaeVar3.zzb;
                        String str6 = zzonVar.zza;
                        Object objZza = zzonVar.zza();
                        d0.h(objZza);
                        zzop zzopVar = new zzop(str4, str5, str6, j3, objZza);
                        if (zzf().zza(zzopVar)) {
                            zzj().zzp().zza("User property triggered", zzaeVar3.zza, this.zzm.zzk().zzc(zzopVar.zzc), zzopVar.zze);
                        } else {
                            zzj().zzg().zza("Too many active user properties, ignoring", zzgo.zza(zzaeVar3.zza), this.zzm.zzk().zzc(zzopVar.zzc), zzopVar.zze);
                        }
                        zzbf zzbfVar4 = zzaeVar3.zzi;
                        if (zzbfVar4 != null) {
                            arrayList2.add(zzbfVar4);
                        }
                        zzaeVar3.zzc = new zzon(zzopVar);
                        zzaeVar3.zze = true;
                        zzf().zza(zzaeVar3);
                    }
                }
                zzc(zzbfVar2, zzoVar);
                int size2 = arrayList2.size();
                while (i6 < size2) {
                    Object obj2 = arrayList2.get(i6);
                    i6++;
                    zzc(new zzbf((zzbf) obj2, j3), zzoVar);
                }
                zzf().zzw();
                zzf().zzu();
            } catch (Throwable th) {
                zzf().zzu();
                throw th;
            }
        }
    }

    public final void zza(zzbf zzbfVar, String str) {
        zzg zzgVarZze = zzf().zze(str);
        if (zzgVarZze != null && !TextUtils.isEmpty(zzgVarZze.zzaf())) {
            Boolean boolZza = zza(zzgVarZze);
            if (boolZza == null) {
                if (!"_ui".equals(zzbfVar.zza)) {
                    zzj().zzu().zza("Could not find package. appId", zzgo.zza(str));
                }
            } else if (!boolZza.booleanValue()) {
                zzj().zzg().zza("App version does not match; dropping event. appId", zzgo.zza(str));
                return;
            }
            zzb(zzbfVar, new zzo(str, zzgVarZze.zzah(), zzgVarZze.zzaf(), zzgVarZze.zze(), zzgVarZze.zzae(), zzgVarZze.zzq(), zzgVarZze.zzn(), (String) null, zzgVarZze.zzar(), false, zzgVarZze.zzag(), zzgVarZze.zzd(), 0L, 0, zzgVarZze.zzaq(), false, zzgVarZze.zzaa(), zzgVarZze.zzx(), zzgVarZze.zzo(), zzgVarZze.zzan(), (String) null, zzb(str).zzf(), "", (String) null, zzgVarZze.zzat(), zzgVarZze.zzw(), zzb(str).zza(), zzd(str).zzf(), zzgVarZze.zza(), zzgVarZze.zzf(), zzgVarZze.zzam(), zzgVarZze.zzak()));
            return;
        }
        zzj().zzc().zza("No app data available; dropping event", str);
    }

    private final void zza(y3 y3Var, long j3, boolean z5) {
        String str;
        zzop zzopVar;
        String str2;
        if (z5) {
            str = "_se";
        } else {
            str = "_lte";
        }
        String str3 = str;
        zzop zzopVarZze = zzf().zze(y3Var.x(), str3);
        if (zzopVarZze != null && zzopVarZze.zze != null) {
            String strX = y3Var.x();
            ((b) zzb()).getClass();
            zzopVar = new zzop(strX, "auto", str3, System.currentTimeMillis(), Long.valueOf(((Long) zzopVarZze.zze).longValue() + j3));
        } else {
            String strX2 = y3Var.x();
            ((b) zzb()).getClass();
            zzopVar = new zzop(strX2, "auto", str3, System.currentTimeMillis(), Long.valueOf(j3));
        }
        g4 g4VarZ = h4.z();
        g4VarZ.e();
        h4.q((h4) g4VarZ.f1993b, str3);
        ((b) zzb()).getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        g4VarZ.e();
        h4.u((h4) g4VarZ.f1993b, jCurrentTimeMillis);
        long jLongValue = ((Long) zzopVar.zze).longValue();
        g4VarZ.e();
        h4.p((h4) g4VarZ.f1993b, jLongValue);
        h4 h4Var = (h4) g4VarZ.c();
        int iZza = zzoo.zza(y3Var, str3);
        if (iZza >= 0) {
            y3Var.e();
            z3.s((z3) y3Var.f1993b, iZza, h4Var);
        } else {
            y3Var.e();
            z3.y((z3) y3Var.f1993b, h4Var);
        }
        if (j3 > 0) {
            zzf().zza(zzopVar);
            if (z5) {
                str2 = "session-scoped";
            } else {
                str2 = "lifetime";
            }
            zzj().zzp().zza("Updated engagement user property. scope, value", str2, zzopVar.zze);
        }
    }

    public final void zza(boolean z5) {
        zzac();
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00e9 A[Catch: all -> 0x0010, SQLiteException -> 0x00d7, TryCatch #1 {SQLiteException -> 0x00d7, blocks: (B:29:0x00c2, B:32:0x00db, B:34:0x00e9, B:36:0x010d, B:67:0x01b7, B:69:0x01ca, B:71:0x01d0, B:80:0x01ff, B:72:0x01d4, B:74:0x01e0, B:76:0x01ea, B:78:0x01f4, B:79:0x01f8, B:81:0x0202, B:82:0x0209, B:35:0x0100), top: B:89:0x00c2, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0100 A[Catch: all -> 0x0010, SQLiteException -> 0x00d7, TryCatch #1 {SQLiteException -> 0x00d7, blocks: (B:29:0x00c2, B:32:0x00db, B:34:0x00e9, B:36:0x010d, B:67:0x01b7, B:69:0x01ca, B:71:0x01d0, B:80:0x01ff, B:72:0x01d4, B:74:0x01e0, B:76:0x01ea, B:78:0x01f4, B:79:0x01f8, B:81:0x0202, B:82:0x0209, B:35:0x0100), top: B:89:0x00c2, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0120 A[Catch: all -> 0x014f, TryCatch #4 {all -> 0x014f, blocks: (B:37:0x0114, B:39:0x0120, B:40:0x0124, B:42:0x012a, B:45:0x0153, B:46:0x0159, B:48:0x015f, B:49:0x0165, B:50:0x017f, B:53:0x018b, B:54:0x0192, B:56:0x0194, B:57:0x01a1, B:60:0x01a4, B:62:0x01a8, B:65:0x01af, B:66:0x01b0), top: B:94:0x0114, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x015f A[Catch: all -> 0x014f, TRY_LEAVE, TryCatch #4 {all -> 0x014f, blocks: (B:37:0x0114, B:39:0x0120, B:40:0x0124, B:42:0x012a, B:45:0x0153, B:46:0x0159, B:48:0x015f, B:49:0x0165, B:50:0x017f, B:53:0x018b, B:54:0x0192, B:56:0x0194, B:57:0x01a1, B:60:0x01a4, B:62:0x01a8, B:65:0x01af, B:66:0x01b0), top: B:94:0x0114, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01d4 A[Catch: all -> 0x0010, SQLiteException -> 0x00d7, TryCatch #1 {SQLiteException -> 0x00d7, blocks: (B:29:0x00c2, B:32:0x00db, B:34:0x00e9, B:36:0x010d, B:67:0x01b7, B:69:0x01ca, B:71:0x01d0, B:80:0x01ff, B:72:0x01d4, B:74:0x01e0, B:76:0x01ea, B:78:0x01f4, B:79:0x01f8, B:81:0x0202, B:82:0x0209, B:35:0x0100), top: B:89:0x00c2, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01f8 A[Catch: all -> 0x0010, SQLiteException -> 0x00d7, TryCatch #1 {SQLiteException -> 0x00d7, blocks: (B:29:0x00c2, B:32:0x00db, B:34:0x00e9, B:36:0x010d, B:67:0x01b7, B:69:0x01ca, B:71:0x01d0, B:80:0x01ff, B:72:0x01d4, B:74:0x01e0, B:76:0x01ea, B:78:0x01f4, B:79:0x01f8, B:81:0x0202, B:82:0x0209, B:35:0x0100), top: B:89:0x00c2, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(boolean r12, int r13, java.lang.Throwable r14, byte[] r15, java.lang.String r16, java.util.List<android.util.Pair<com.google.android.gms.internal.measurement.x3, com.google.android.gms.measurement.internal.zznw>> r17) {
        /*
            Method dump skipped, instruction units count: 581
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznv.zza(boolean, int, java.lang.Throwable, byte[], java.lang.String, java.util.List):void");
    }

    public final void zza(String str, int i6, Throwable th, byte[] bArr, zzoj zzojVar) {
        zzl().zzt();
        zzs();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } catch (Throwable th2) {
                this.zzv = false;
                zzaa();
                throw th2;
            }
        }
        if ((i6 == 200 || i6 == 204) && th == null) {
            if (zzojVar != null) {
                zzal zzalVarZzf = zzf();
                Long lValueOf = Long.valueOf(zzojVar.zza());
                zzalVarZzf.zzt();
                zzalVarZzf.zzal();
                ea.a();
                if (zzalVarZzf.zze().zza(zzbh.zzcb)) {
                    try {
                        if (zzalVarZzf.e_().delete("upload_queue", "rowid=?", new String[]{String.valueOf(lValueOf)}) != 1) {
                            zzalVarZzf.zzj().zzu().zza("Deleted fewer rows from upload_queue than expected");
                        }
                    } catch (SQLiteException e9) {
                        zzalVarZzf.zzj().zzg().zza("Failed to delete a MeasurementBatch in a upload_queue table", e9);
                        throw e9;
                    }
                }
            }
            zzj().zzp().zza("Successfully uploaded batch from upload queue. appId, status", str, Integer.valueOf(i6));
            if (zze().zza(zzbh.zzcb) && zzh().zzu() && zzf().zzs(str)) {
                zze(str);
            } else {
                zzac();
            }
        } else {
            String str2 = new String(bArr, StandardCharsets.UTF_8);
            String strSubstring = str2.substring(0, Math.min(32, str2.length()));
            zzgq zzgqVarZzv = zzj().zzv();
            Integer numValueOf = Integer.valueOf(i6);
            Object obj = th;
            if (th == null) {
                obj = strSubstring;
            }
            zzgqVarZzv.zza("Network upload failed. Will retry later. appId, status, error", str, numValueOf, obj);
            if (zzojVar != null) {
                zzf().zza(Long.valueOf(zzojVar.zza()));
            }
            zzac();
        }
        this.zzv = false;
        zzaa();
    }

    public final void zza(zzae zzaeVar) {
        String str = zzaeVar.zza;
        d0.h(str);
        zzo zzoVarZzc = zzc(str);
        if (zzoVarZzc != null) {
            zza(zzaeVar, zzoVarZzc);
        }
    }

    public final void zza(zzae zzaeVar, zzo zzoVar) {
        d0.h(zzaeVar);
        d0.d(zzaeVar.zza);
        d0.h(zzaeVar.zzc);
        d0.d(zzaeVar.zzc.zza);
        zzl().zzt();
        zzs();
        if (zzi(zzoVar)) {
            if (!zzoVar.zzh) {
                zza(zzoVar);
                return;
            }
            zzf().zzp();
            try {
                zza(zzoVar);
                String str = zzaeVar.zza;
                d0.h(str);
                zzae zzaeVarZzc = zzf().zzc(str, zzaeVar.zzc.zza);
                if (zzaeVarZzc != null) {
                    zzj().zzc().zza("Removing conditional user property", zzaeVar.zza, this.zzm.zzk().zzc(zzaeVar.zzc.zza));
                    zzf().zza(str, zzaeVar.zzc.zza);
                    if (zzaeVarZzc.zze) {
                        zzf().zzh(str, zzaeVar.zzc.zza);
                    }
                    zzbf zzbfVar = zzaeVar.zzk;
                    if (zzbfVar != null) {
                        zzbe zzbeVar = zzbfVar.zzb;
                        Bundle bundleZzb = zzbeVar != null ? zzbeVar.zzb() : null;
                        zzos zzosVarZzq = zzq();
                        zzbf zzbfVar2 = zzaeVar.zzk;
                        d0.h(zzbfVar2);
                        zzbf zzbfVarZza = zzosVarZzq.zza(str, zzbfVar2.zza, bundleZzb, zzaeVarZzc.zzb, zzaeVar.zzk.zzd, true, true);
                        d0.h(zzbfVarZza);
                        zzc(zzbfVarZza, zzoVar);
                    }
                } else {
                    zzj().zzu().zza("Conditional user property doesn't exist", zzgo.zza(zzaeVar.zza), this.zzm.zzk().zzc(zzaeVar.zzc.zza));
                }
                zzf().zzw();
                zzf().zzu();
            } catch (Throwable th) {
                zzf().zzu();
                throw th;
            }
        }
    }

    private static void zza(p3 p3Var, String str) {
        List listO = p3Var.o();
        for (int i6 = 0; i6 < listO.size(); i6++) {
            if (str.equals(((u3) listO.get(i6)).C())) {
                p3Var.e();
                q3.p(i6, (q3) p3Var.f1993b);
                return;
            }
        }
    }

    public final void zza(String str, zzo zzoVar) {
        zzl().zzt();
        zzs();
        if (zzi(zzoVar)) {
            if (!zzoVar.zzh) {
                zza(zzoVar);
                return;
            }
            Boolean boolZzh = zzh(zzoVar);
            if ("_npa".equals(str) && boolZzh != null) {
                zzj().zzc().zza("Falling back to manifest metadata value for ad personalization");
                ((b) zzb()).getClass();
                zza(new zzon("_npa", System.currentTimeMillis(), Long.valueOf(boolZzh.booleanValue() ? 1L : 0L), "auto"), zzoVar);
                return;
            }
            zzj().zzc().zza("Removing user property", this.zzm.zzk().zzc(str));
            zzf().zzp();
            try {
                zza(zzoVar);
                if ("_id".equals(str)) {
                    zzal zzalVarZzf = zzf();
                    String str2 = zzoVar.zza;
                    d0.h(str2);
                    zzalVarZzf.zzh(str2, "_lair");
                }
                zzal zzalVarZzf2 = zzf();
                String str3 = zzoVar.zza;
                d0.h(str3);
                zzalVarZzf2.zzh(str3, str);
                zzf().zzw();
                zzj().zzc().zza("User property removed", this.zzm.zzk().zzc(str));
                zzf().zzu();
            } catch (Throwable th) {
                zzf().zzu();
                throw th;
            }
        }
    }

    public final void zza(String str, zzlk zzlkVar) {
        zzl().zzt();
        String str2 = this.zzag;
        if (str2 == null || str2.equals(str) || zzlkVar != null) {
            this.zzag = str;
            this.zzaf = zzlkVar;
        }
    }

    private final void zza(List<Long> list) {
        d0.a(!list.isEmpty());
        if (this.zzz != null) {
            zzj().zzg().zza("Set uploading progress before finishing the previous upload");
        } else {
            this.zzz = new ArrayList(list);
        }
    }

    private final void zza(String str, zzje zzjeVar) {
        zzl().zzt();
        zzs();
        this.zzac.put(str, zzjeVar);
        zzf().zzb(str, zzjeVar);
    }

    private final void zza(String str, boolean z5, Long l4, Long l8) {
        zzg zzgVarZze = zzf().zze(str);
        if (zzgVarZze != null) {
            zzgVarZze.zzd(z5);
            zzgVarZze.zza(l4);
            zzgVarZze.zzb(l8);
            if (zzgVarZze.zzas()) {
                zzf().zza(zzgVarZze, false, false);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(com.google.android.gms.measurement.internal.zzon r18, com.google.android.gms.measurement.internal.zzo r19) {
        /*
            Method dump skipped, instruction units count: 497
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznv.zza(com.google.android.gms.measurement.internal.zzon, com.google.android.gms.measurement.internal.zzo):void");
    }

    private final void zza(String str, t3 t3Var, Bundle bundle, String str2) {
        int iZzb;
        List listUnmodifiableList = Collections.unmodifiableList(Arrays.asList("_o", "_sn", "_sc", "_si"));
        if (!zzos.zzg(((u3) t3Var.f1993b).C()) && !zzos.zzg(str)) {
            iZzb = zze().zza(str2, true);
        } else {
            iZzb = zze().zzb(str2, true);
        }
        long j3 = iZzb;
        long jCodePointCount = ((u3) t3Var.f1993b).D().codePointCount(0, ((u3) t3Var.f1993b).D().length());
        zzq();
        String strC = ((u3) t3Var.f1993b).C();
        zze();
        String strZza = zzos.zza(strC, 40, true);
        if (jCodePointCount <= j3 || listUnmodifiableList.contains(((u3) t3Var.f1993b).C())) {
            return;
        }
        if ("_ev".equals(((u3) t3Var.f1993b).C())) {
            zzq();
            bundle.putString("_ev", zzos.zza(((u3) t3Var.f1993b).D(), zze().zzb(str2, true), true));
            return;
        }
        zzj().zzv().zza("Param value is too long; discarded. Name, value length", strZza, Long.valueOf(jCodePointCount));
        if (bundle.getLong("_err") == 0) {
            bundle.putLong("_err", 4L);
            if (bundle.getString("_ev") == null) {
                bundle.putString("_ev", strZza);
                bundle.putLong("_el", jCodePointCount);
            }
        }
        bundle.remove(((u3) t3Var.f1993b).C());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:191:0x05bf A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:3:0x0013, B:22:0x007b, B:96:0x0228, B:98:0x022c, B:101:0x0234, B:102:0x024d, B:105:0x0261, B:108:0x028b, B:110:0x02c0, B:113:0x02d1, B:115:0x02db, B:283:0x0879, B:118:0x0302, B:120:0x0310, B:123:0x032c, B:125:0x0336, B:127:0x0348, B:129:0x0356, B:131:0x0366, B:132:0x0373, B:133:0x0378, B:135:0x038e, B:191:0x05bf, B:192:0x05cb, B:195:0x05d7, B:201:0x05fa, B:198:0x05e9, B:204:0x0602, B:206:0x060e, B:208:0x061a, B:222:0x0664, B:225:0x068d, B:227:0x0699, B:230:0x06aa, B:232:0x06bb, B:234:0x06c9, B:250:0x072e, B:252:0x0738, B:253:0x0744, B:255:0x074e, B:257:0x075c, B:259:0x0766, B:260:0x0777, B:262:0x077d, B:263:0x0798, B:265:0x079e, B:266:0x07bc, B:267:0x07c9, B:271:0x07f2, B:268:0x07d1, B:270:0x07df, B:272:0x07fc, B:273:0x081b, B:275:0x0821, B:277:0x0834, B:278:0x0841, B:280:0x0848, B:282:0x0858, B:238:0x06db, B:240:0x06e7, B:243:0x06fa, B:245:0x070b, B:247:0x0719, B:214:0x0641, B:218:0x0654, B:220:0x065a, B:223:0x0684, B:138:0x03a4, B:145:0x03bd, B:148:0x03cb, B:150:0x03d9, B:155:0x0432, B:151:0x03ff, B:153:0x040f, B:159:0x043d, B:162:0x0470, B:163:0x049a, B:165:0x04d1, B:167:0x04d7, B:170:0x04e3, B:172:0x051c, B:173:0x0537, B:175:0x0541, B:177:0x0551, B:181:0x0565, B:178:0x055a, B:185:0x0570, B:187:0x057e, B:188:0x05a0, B:286:0x088f, B:288:0x08a1, B:290:0x08aa, B:302:0x08dd, B:292:0x08b4, B:294:0x08bd, B:296:0x08c3, B:299:0x08cf, B:301:0x08d7, B:303:0x08e0, B:304:0x08ec, B:307:0x08f4, B:309:0x0906, B:310:0x0911, B:312:0x0919, B:316:0x0945, B:318:0x095f, B:320:0x0974, B:322:0x0983, B:324:0x099d, B:325:0x09af, B:326:0x09b2, B:327:0x09ce, B:329:0x09d4, B:331:0x09ec, B:332:0x09fa, B:334:0x0a0a, B:335:0x0a18, B:336:0x0a1b, B:338:0x0a2f, B:340:0x0a68, B:342:0x0a6e, B:348:0x0a95, B:350:0x0a9b, B:351:0x0ab9, B:353:0x0abf, B:343:0x0a7c, B:345:0x0a82, B:347:0x0a88, B:354:0x0ad3, B:356:0x0ae8, B:358:0x0af7, B:360:0x0b07, B:363:0x0b10, B:365:0x0b16, B:366:0x0b2c, B:368:0x0b32, B:370:0x0b42, B:372:0x0b5a, B:375:0x0b72, B:377:0x0b9b, B:393:0x0cb9, B:395:0x0cc5, B:378:0x0bb4, B:380:0x0bc6, B:382:0x0be3, B:384:0x0c08, B:385:0x0c35, B:387:0x0c49, B:389:0x0c66, B:391:0x0c8b, B:396:0x0ccb, B:398:0x0cdc, B:400:0x0d69, B:402:0x0d79, B:403:0x0d8c, B:405:0x0d92, B:408:0x0db0, B:410:0x0dc9, B:412:0x0ddc, B:414:0x0de1, B:416:0x0de5, B:418:0x0de9, B:420:0x0df3, B:422:0x0dfe, B:424:0x0e02, B:426:0x0e08, B:428:0x0e13, B:430:0x0e21, B:491:0x1023, B:431:0x0e2a, B:433:0x0e55, B:434:0x0e5d, B:436:0x0e63, B:438:0x0e75, B:445:0x0ea2, B:447:0x0eca, B:449:0x0ed6, B:451:0x0eec, B:454:0x0f31, B:460:0x0f4b, B:462:0x0f56, B:464:0x0f5a, B:466:0x0f5e, B:468:0x0f62, B:469:0x0f6e, B:470:0x0f73, B:472:0x0f79, B:474:0x0f8f, B:475:0x0f98, B:490:0x1020, B:476:0x0fae, B:478:0x0fb2, B:482:0x0fd2, B:484:0x0ff2, B:485:0x0ffd, B:489:0x1013, B:479:0x0fbc, B:443:0x0e8b, B:492:0x102d, B:494:0x1037, B:495:0x104b, B:496:0x1053, B:498:0x1059, B:499:0x106d, B:501:0x107d, B:527:0x113f, B:529:0x1145, B:531:0x1155, B:534:0x115c, B:539:0x119b, B:535:0x116b, B:537:0x1177, B:538:0x1184, B:540:0x11aa, B:541:0x11c1, B:544:0x11c9, B:545:0x11ce, B:546:0x11de, B:548:0x11f8, B:549:0x1211, B:550:0x1219, B:554:0x1235, B:553:0x1224, B:502:0x1096, B:504:0x109c, B:506:0x10a4, B:508:0x10b2, B:514:0x10c0, B:516:0x10ce, B:518:0x10dd, B:520:0x10ea, B:522:0x1105, B:524:0x1130, B:526:0x1137, B:525:0x1134, B:521:0x1102, B:515:0x10cb, B:507:0x10af, B:399:0x0d27, B:319:0x0971, B:313:0x091e, B:315:0x0924, B:557:0x1246, B:57:0x011e, B:72:0x019f, B:79:0x01da, B:85:0x01f6, B:89:0x020c, B:95:0x0225, B:561:0x1259, B:562:0x125c, B:50:0x00da, B:60:0x0127), top: B:565:0x0013, inners: #1, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x068a  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0699 A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:3:0x0013, B:22:0x007b, B:96:0x0228, B:98:0x022c, B:101:0x0234, B:102:0x024d, B:105:0x0261, B:108:0x028b, B:110:0x02c0, B:113:0x02d1, B:115:0x02db, B:283:0x0879, B:118:0x0302, B:120:0x0310, B:123:0x032c, B:125:0x0336, B:127:0x0348, B:129:0x0356, B:131:0x0366, B:132:0x0373, B:133:0x0378, B:135:0x038e, B:191:0x05bf, B:192:0x05cb, B:195:0x05d7, B:201:0x05fa, B:198:0x05e9, B:204:0x0602, B:206:0x060e, B:208:0x061a, B:222:0x0664, B:225:0x068d, B:227:0x0699, B:230:0x06aa, B:232:0x06bb, B:234:0x06c9, B:250:0x072e, B:252:0x0738, B:253:0x0744, B:255:0x074e, B:257:0x075c, B:259:0x0766, B:260:0x0777, B:262:0x077d, B:263:0x0798, B:265:0x079e, B:266:0x07bc, B:267:0x07c9, B:271:0x07f2, B:268:0x07d1, B:270:0x07df, B:272:0x07fc, B:273:0x081b, B:275:0x0821, B:277:0x0834, B:278:0x0841, B:280:0x0848, B:282:0x0858, B:238:0x06db, B:240:0x06e7, B:243:0x06fa, B:245:0x070b, B:247:0x0719, B:214:0x0641, B:218:0x0654, B:220:0x065a, B:223:0x0684, B:138:0x03a4, B:145:0x03bd, B:148:0x03cb, B:150:0x03d9, B:155:0x0432, B:151:0x03ff, B:153:0x040f, B:159:0x043d, B:162:0x0470, B:163:0x049a, B:165:0x04d1, B:167:0x04d7, B:170:0x04e3, B:172:0x051c, B:173:0x0537, B:175:0x0541, B:177:0x0551, B:181:0x0565, B:178:0x055a, B:185:0x0570, B:187:0x057e, B:188:0x05a0, B:286:0x088f, B:288:0x08a1, B:290:0x08aa, B:302:0x08dd, B:292:0x08b4, B:294:0x08bd, B:296:0x08c3, B:299:0x08cf, B:301:0x08d7, B:303:0x08e0, B:304:0x08ec, B:307:0x08f4, B:309:0x0906, B:310:0x0911, B:312:0x0919, B:316:0x0945, B:318:0x095f, B:320:0x0974, B:322:0x0983, B:324:0x099d, B:325:0x09af, B:326:0x09b2, B:327:0x09ce, B:329:0x09d4, B:331:0x09ec, B:332:0x09fa, B:334:0x0a0a, B:335:0x0a18, B:336:0x0a1b, B:338:0x0a2f, B:340:0x0a68, B:342:0x0a6e, B:348:0x0a95, B:350:0x0a9b, B:351:0x0ab9, B:353:0x0abf, B:343:0x0a7c, B:345:0x0a82, B:347:0x0a88, B:354:0x0ad3, B:356:0x0ae8, B:358:0x0af7, B:360:0x0b07, B:363:0x0b10, B:365:0x0b16, B:366:0x0b2c, B:368:0x0b32, B:370:0x0b42, B:372:0x0b5a, B:375:0x0b72, B:377:0x0b9b, B:393:0x0cb9, B:395:0x0cc5, B:378:0x0bb4, B:380:0x0bc6, B:382:0x0be3, B:384:0x0c08, B:385:0x0c35, B:387:0x0c49, B:389:0x0c66, B:391:0x0c8b, B:396:0x0ccb, B:398:0x0cdc, B:400:0x0d69, B:402:0x0d79, B:403:0x0d8c, B:405:0x0d92, B:408:0x0db0, B:410:0x0dc9, B:412:0x0ddc, B:414:0x0de1, B:416:0x0de5, B:418:0x0de9, B:420:0x0df3, B:422:0x0dfe, B:424:0x0e02, B:426:0x0e08, B:428:0x0e13, B:430:0x0e21, B:491:0x1023, B:431:0x0e2a, B:433:0x0e55, B:434:0x0e5d, B:436:0x0e63, B:438:0x0e75, B:445:0x0ea2, B:447:0x0eca, B:449:0x0ed6, B:451:0x0eec, B:454:0x0f31, B:460:0x0f4b, B:462:0x0f56, B:464:0x0f5a, B:466:0x0f5e, B:468:0x0f62, B:469:0x0f6e, B:470:0x0f73, B:472:0x0f79, B:474:0x0f8f, B:475:0x0f98, B:490:0x1020, B:476:0x0fae, B:478:0x0fb2, B:482:0x0fd2, B:484:0x0ff2, B:485:0x0ffd, B:489:0x1013, B:479:0x0fbc, B:443:0x0e8b, B:492:0x102d, B:494:0x1037, B:495:0x104b, B:496:0x1053, B:498:0x1059, B:499:0x106d, B:501:0x107d, B:527:0x113f, B:529:0x1145, B:531:0x1155, B:534:0x115c, B:539:0x119b, B:535:0x116b, B:537:0x1177, B:538:0x1184, B:540:0x11aa, B:541:0x11c1, B:544:0x11c9, B:545:0x11ce, B:546:0x11de, B:548:0x11f8, B:549:0x1211, B:550:0x1219, B:554:0x1235, B:553:0x1224, B:502:0x1096, B:504:0x109c, B:506:0x10a4, B:508:0x10b2, B:514:0x10c0, B:516:0x10ce, B:518:0x10dd, B:520:0x10ea, B:522:0x1105, B:524:0x1130, B:526:0x1137, B:525:0x1134, B:521:0x1102, B:515:0x10cb, B:507:0x10af, B:399:0x0d27, B:319:0x0971, B:313:0x091e, B:315:0x0924, B:557:0x1246, B:57:0x011e, B:72:0x019f, B:79:0x01da, B:85:0x01f6, B:89:0x020c, B:95:0x0225, B:561:0x1259, B:562:0x125c, B:50:0x00da, B:60:0x0127), top: B:565:0x0013, inners: #1, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x06d8  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x06db A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:3:0x0013, B:22:0x007b, B:96:0x0228, B:98:0x022c, B:101:0x0234, B:102:0x024d, B:105:0x0261, B:108:0x028b, B:110:0x02c0, B:113:0x02d1, B:115:0x02db, B:283:0x0879, B:118:0x0302, B:120:0x0310, B:123:0x032c, B:125:0x0336, B:127:0x0348, B:129:0x0356, B:131:0x0366, B:132:0x0373, B:133:0x0378, B:135:0x038e, B:191:0x05bf, B:192:0x05cb, B:195:0x05d7, B:201:0x05fa, B:198:0x05e9, B:204:0x0602, B:206:0x060e, B:208:0x061a, B:222:0x0664, B:225:0x068d, B:227:0x0699, B:230:0x06aa, B:232:0x06bb, B:234:0x06c9, B:250:0x072e, B:252:0x0738, B:253:0x0744, B:255:0x074e, B:257:0x075c, B:259:0x0766, B:260:0x0777, B:262:0x077d, B:263:0x0798, B:265:0x079e, B:266:0x07bc, B:267:0x07c9, B:271:0x07f2, B:268:0x07d1, B:270:0x07df, B:272:0x07fc, B:273:0x081b, B:275:0x0821, B:277:0x0834, B:278:0x0841, B:280:0x0848, B:282:0x0858, B:238:0x06db, B:240:0x06e7, B:243:0x06fa, B:245:0x070b, B:247:0x0719, B:214:0x0641, B:218:0x0654, B:220:0x065a, B:223:0x0684, B:138:0x03a4, B:145:0x03bd, B:148:0x03cb, B:150:0x03d9, B:155:0x0432, B:151:0x03ff, B:153:0x040f, B:159:0x043d, B:162:0x0470, B:163:0x049a, B:165:0x04d1, B:167:0x04d7, B:170:0x04e3, B:172:0x051c, B:173:0x0537, B:175:0x0541, B:177:0x0551, B:181:0x0565, B:178:0x055a, B:185:0x0570, B:187:0x057e, B:188:0x05a0, B:286:0x088f, B:288:0x08a1, B:290:0x08aa, B:302:0x08dd, B:292:0x08b4, B:294:0x08bd, B:296:0x08c3, B:299:0x08cf, B:301:0x08d7, B:303:0x08e0, B:304:0x08ec, B:307:0x08f4, B:309:0x0906, B:310:0x0911, B:312:0x0919, B:316:0x0945, B:318:0x095f, B:320:0x0974, B:322:0x0983, B:324:0x099d, B:325:0x09af, B:326:0x09b2, B:327:0x09ce, B:329:0x09d4, B:331:0x09ec, B:332:0x09fa, B:334:0x0a0a, B:335:0x0a18, B:336:0x0a1b, B:338:0x0a2f, B:340:0x0a68, B:342:0x0a6e, B:348:0x0a95, B:350:0x0a9b, B:351:0x0ab9, B:353:0x0abf, B:343:0x0a7c, B:345:0x0a82, B:347:0x0a88, B:354:0x0ad3, B:356:0x0ae8, B:358:0x0af7, B:360:0x0b07, B:363:0x0b10, B:365:0x0b16, B:366:0x0b2c, B:368:0x0b32, B:370:0x0b42, B:372:0x0b5a, B:375:0x0b72, B:377:0x0b9b, B:393:0x0cb9, B:395:0x0cc5, B:378:0x0bb4, B:380:0x0bc6, B:382:0x0be3, B:384:0x0c08, B:385:0x0c35, B:387:0x0c49, B:389:0x0c66, B:391:0x0c8b, B:396:0x0ccb, B:398:0x0cdc, B:400:0x0d69, B:402:0x0d79, B:403:0x0d8c, B:405:0x0d92, B:408:0x0db0, B:410:0x0dc9, B:412:0x0ddc, B:414:0x0de1, B:416:0x0de5, B:418:0x0de9, B:420:0x0df3, B:422:0x0dfe, B:424:0x0e02, B:426:0x0e08, B:428:0x0e13, B:430:0x0e21, B:491:0x1023, B:431:0x0e2a, B:433:0x0e55, B:434:0x0e5d, B:436:0x0e63, B:438:0x0e75, B:445:0x0ea2, B:447:0x0eca, B:449:0x0ed6, B:451:0x0eec, B:454:0x0f31, B:460:0x0f4b, B:462:0x0f56, B:464:0x0f5a, B:466:0x0f5e, B:468:0x0f62, B:469:0x0f6e, B:470:0x0f73, B:472:0x0f79, B:474:0x0f8f, B:475:0x0f98, B:490:0x1020, B:476:0x0fae, B:478:0x0fb2, B:482:0x0fd2, B:484:0x0ff2, B:485:0x0ffd, B:489:0x1013, B:479:0x0fbc, B:443:0x0e8b, B:492:0x102d, B:494:0x1037, B:495:0x104b, B:496:0x1053, B:498:0x1059, B:499:0x106d, B:501:0x107d, B:527:0x113f, B:529:0x1145, B:531:0x1155, B:534:0x115c, B:539:0x119b, B:535:0x116b, B:537:0x1177, B:538:0x1184, B:540:0x11aa, B:541:0x11c1, B:544:0x11c9, B:545:0x11ce, B:546:0x11de, B:548:0x11f8, B:549:0x1211, B:550:0x1219, B:554:0x1235, B:553:0x1224, B:502:0x1096, B:504:0x109c, B:506:0x10a4, B:508:0x10b2, B:514:0x10c0, B:516:0x10ce, B:518:0x10dd, B:520:0x10ea, B:522:0x1105, B:524:0x1130, B:526:0x1137, B:525:0x1134, B:521:0x1102, B:515:0x10cb, B:507:0x10af, B:399:0x0d27, B:319:0x0971, B:313:0x091e, B:315:0x0924, B:557:0x1246, B:57:0x011e, B:72:0x019f, B:79:0x01da, B:85:0x01f6, B:89:0x020c, B:95:0x0225, B:561:0x1259, B:562:0x125c, B:50:0x00da, B:60:0x0127), top: B:565:0x0013, inners: #1, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0738 A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:3:0x0013, B:22:0x007b, B:96:0x0228, B:98:0x022c, B:101:0x0234, B:102:0x024d, B:105:0x0261, B:108:0x028b, B:110:0x02c0, B:113:0x02d1, B:115:0x02db, B:283:0x0879, B:118:0x0302, B:120:0x0310, B:123:0x032c, B:125:0x0336, B:127:0x0348, B:129:0x0356, B:131:0x0366, B:132:0x0373, B:133:0x0378, B:135:0x038e, B:191:0x05bf, B:192:0x05cb, B:195:0x05d7, B:201:0x05fa, B:198:0x05e9, B:204:0x0602, B:206:0x060e, B:208:0x061a, B:222:0x0664, B:225:0x068d, B:227:0x0699, B:230:0x06aa, B:232:0x06bb, B:234:0x06c9, B:250:0x072e, B:252:0x0738, B:253:0x0744, B:255:0x074e, B:257:0x075c, B:259:0x0766, B:260:0x0777, B:262:0x077d, B:263:0x0798, B:265:0x079e, B:266:0x07bc, B:267:0x07c9, B:271:0x07f2, B:268:0x07d1, B:270:0x07df, B:272:0x07fc, B:273:0x081b, B:275:0x0821, B:277:0x0834, B:278:0x0841, B:280:0x0848, B:282:0x0858, B:238:0x06db, B:240:0x06e7, B:243:0x06fa, B:245:0x070b, B:247:0x0719, B:214:0x0641, B:218:0x0654, B:220:0x065a, B:223:0x0684, B:138:0x03a4, B:145:0x03bd, B:148:0x03cb, B:150:0x03d9, B:155:0x0432, B:151:0x03ff, B:153:0x040f, B:159:0x043d, B:162:0x0470, B:163:0x049a, B:165:0x04d1, B:167:0x04d7, B:170:0x04e3, B:172:0x051c, B:173:0x0537, B:175:0x0541, B:177:0x0551, B:181:0x0565, B:178:0x055a, B:185:0x0570, B:187:0x057e, B:188:0x05a0, B:286:0x088f, B:288:0x08a1, B:290:0x08aa, B:302:0x08dd, B:292:0x08b4, B:294:0x08bd, B:296:0x08c3, B:299:0x08cf, B:301:0x08d7, B:303:0x08e0, B:304:0x08ec, B:307:0x08f4, B:309:0x0906, B:310:0x0911, B:312:0x0919, B:316:0x0945, B:318:0x095f, B:320:0x0974, B:322:0x0983, B:324:0x099d, B:325:0x09af, B:326:0x09b2, B:327:0x09ce, B:329:0x09d4, B:331:0x09ec, B:332:0x09fa, B:334:0x0a0a, B:335:0x0a18, B:336:0x0a1b, B:338:0x0a2f, B:340:0x0a68, B:342:0x0a6e, B:348:0x0a95, B:350:0x0a9b, B:351:0x0ab9, B:353:0x0abf, B:343:0x0a7c, B:345:0x0a82, B:347:0x0a88, B:354:0x0ad3, B:356:0x0ae8, B:358:0x0af7, B:360:0x0b07, B:363:0x0b10, B:365:0x0b16, B:366:0x0b2c, B:368:0x0b32, B:370:0x0b42, B:372:0x0b5a, B:375:0x0b72, B:377:0x0b9b, B:393:0x0cb9, B:395:0x0cc5, B:378:0x0bb4, B:380:0x0bc6, B:382:0x0be3, B:384:0x0c08, B:385:0x0c35, B:387:0x0c49, B:389:0x0c66, B:391:0x0c8b, B:396:0x0ccb, B:398:0x0cdc, B:400:0x0d69, B:402:0x0d79, B:403:0x0d8c, B:405:0x0d92, B:408:0x0db0, B:410:0x0dc9, B:412:0x0ddc, B:414:0x0de1, B:416:0x0de5, B:418:0x0de9, B:420:0x0df3, B:422:0x0dfe, B:424:0x0e02, B:426:0x0e08, B:428:0x0e13, B:430:0x0e21, B:491:0x1023, B:431:0x0e2a, B:433:0x0e55, B:434:0x0e5d, B:436:0x0e63, B:438:0x0e75, B:445:0x0ea2, B:447:0x0eca, B:449:0x0ed6, B:451:0x0eec, B:454:0x0f31, B:460:0x0f4b, B:462:0x0f56, B:464:0x0f5a, B:466:0x0f5e, B:468:0x0f62, B:469:0x0f6e, B:470:0x0f73, B:472:0x0f79, B:474:0x0f8f, B:475:0x0f98, B:490:0x1020, B:476:0x0fae, B:478:0x0fb2, B:482:0x0fd2, B:484:0x0ff2, B:485:0x0ffd, B:489:0x1013, B:479:0x0fbc, B:443:0x0e8b, B:492:0x102d, B:494:0x1037, B:495:0x104b, B:496:0x1053, B:498:0x1059, B:499:0x106d, B:501:0x107d, B:527:0x113f, B:529:0x1145, B:531:0x1155, B:534:0x115c, B:539:0x119b, B:535:0x116b, B:537:0x1177, B:538:0x1184, B:540:0x11aa, B:541:0x11c1, B:544:0x11c9, B:545:0x11ce, B:546:0x11de, B:548:0x11f8, B:549:0x1211, B:550:0x1219, B:554:0x1235, B:553:0x1224, B:502:0x1096, B:504:0x109c, B:506:0x10a4, B:508:0x10b2, B:514:0x10c0, B:516:0x10ce, B:518:0x10dd, B:520:0x10ea, B:522:0x1105, B:524:0x1130, B:526:0x1137, B:525:0x1134, B:521:0x1102, B:515:0x10cb, B:507:0x10af, B:399:0x0d27, B:319:0x0971, B:313:0x091e, B:315:0x0924, B:557:0x1246, B:57:0x011e, B:72:0x019f, B:79:0x01da, B:85:0x01f6, B:89:0x020c, B:95:0x0225, B:561:0x1259, B:562:0x125c, B:50:0x00da, B:60:0x0127), top: B:565:0x0013, inners: #1, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0854  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x08b4 A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:3:0x0013, B:22:0x007b, B:96:0x0228, B:98:0x022c, B:101:0x0234, B:102:0x024d, B:105:0x0261, B:108:0x028b, B:110:0x02c0, B:113:0x02d1, B:115:0x02db, B:283:0x0879, B:118:0x0302, B:120:0x0310, B:123:0x032c, B:125:0x0336, B:127:0x0348, B:129:0x0356, B:131:0x0366, B:132:0x0373, B:133:0x0378, B:135:0x038e, B:191:0x05bf, B:192:0x05cb, B:195:0x05d7, B:201:0x05fa, B:198:0x05e9, B:204:0x0602, B:206:0x060e, B:208:0x061a, B:222:0x0664, B:225:0x068d, B:227:0x0699, B:230:0x06aa, B:232:0x06bb, B:234:0x06c9, B:250:0x072e, B:252:0x0738, B:253:0x0744, B:255:0x074e, B:257:0x075c, B:259:0x0766, B:260:0x0777, B:262:0x077d, B:263:0x0798, B:265:0x079e, B:266:0x07bc, B:267:0x07c9, B:271:0x07f2, B:268:0x07d1, B:270:0x07df, B:272:0x07fc, B:273:0x081b, B:275:0x0821, B:277:0x0834, B:278:0x0841, B:280:0x0848, B:282:0x0858, B:238:0x06db, B:240:0x06e7, B:243:0x06fa, B:245:0x070b, B:247:0x0719, B:214:0x0641, B:218:0x0654, B:220:0x065a, B:223:0x0684, B:138:0x03a4, B:145:0x03bd, B:148:0x03cb, B:150:0x03d9, B:155:0x0432, B:151:0x03ff, B:153:0x040f, B:159:0x043d, B:162:0x0470, B:163:0x049a, B:165:0x04d1, B:167:0x04d7, B:170:0x04e3, B:172:0x051c, B:173:0x0537, B:175:0x0541, B:177:0x0551, B:181:0x0565, B:178:0x055a, B:185:0x0570, B:187:0x057e, B:188:0x05a0, B:286:0x088f, B:288:0x08a1, B:290:0x08aa, B:302:0x08dd, B:292:0x08b4, B:294:0x08bd, B:296:0x08c3, B:299:0x08cf, B:301:0x08d7, B:303:0x08e0, B:304:0x08ec, B:307:0x08f4, B:309:0x0906, B:310:0x0911, B:312:0x0919, B:316:0x0945, B:318:0x095f, B:320:0x0974, B:322:0x0983, B:324:0x099d, B:325:0x09af, B:326:0x09b2, B:327:0x09ce, B:329:0x09d4, B:331:0x09ec, B:332:0x09fa, B:334:0x0a0a, B:335:0x0a18, B:336:0x0a1b, B:338:0x0a2f, B:340:0x0a68, B:342:0x0a6e, B:348:0x0a95, B:350:0x0a9b, B:351:0x0ab9, B:353:0x0abf, B:343:0x0a7c, B:345:0x0a82, B:347:0x0a88, B:354:0x0ad3, B:356:0x0ae8, B:358:0x0af7, B:360:0x0b07, B:363:0x0b10, B:365:0x0b16, B:366:0x0b2c, B:368:0x0b32, B:370:0x0b42, B:372:0x0b5a, B:375:0x0b72, B:377:0x0b9b, B:393:0x0cb9, B:395:0x0cc5, B:378:0x0bb4, B:380:0x0bc6, B:382:0x0be3, B:384:0x0c08, B:385:0x0c35, B:387:0x0c49, B:389:0x0c66, B:391:0x0c8b, B:396:0x0ccb, B:398:0x0cdc, B:400:0x0d69, B:402:0x0d79, B:403:0x0d8c, B:405:0x0d92, B:408:0x0db0, B:410:0x0dc9, B:412:0x0ddc, B:414:0x0de1, B:416:0x0de5, B:418:0x0de9, B:420:0x0df3, B:422:0x0dfe, B:424:0x0e02, B:426:0x0e08, B:428:0x0e13, B:430:0x0e21, B:491:0x1023, B:431:0x0e2a, B:433:0x0e55, B:434:0x0e5d, B:436:0x0e63, B:438:0x0e75, B:445:0x0ea2, B:447:0x0eca, B:449:0x0ed6, B:451:0x0eec, B:454:0x0f31, B:460:0x0f4b, B:462:0x0f56, B:464:0x0f5a, B:466:0x0f5e, B:468:0x0f62, B:469:0x0f6e, B:470:0x0f73, B:472:0x0f79, B:474:0x0f8f, B:475:0x0f98, B:490:0x1020, B:476:0x0fae, B:478:0x0fb2, B:482:0x0fd2, B:484:0x0ff2, B:485:0x0ffd, B:489:0x1013, B:479:0x0fbc, B:443:0x0e8b, B:492:0x102d, B:494:0x1037, B:495:0x104b, B:496:0x1053, B:498:0x1059, B:499:0x106d, B:501:0x107d, B:527:0x113f, B:529:0x1145, B:531:0x1155, B:534:0x115c, B:539:0x119b, B:535:0x116b, B:537:0x1177, B:538:0x1184, B:540:0x11aa, B:541:0x11c1, B:544:0x11c9, B:545:0x11ce, B:546:0x11de, B:548:0x11f8, B:549:0x1211, B:550:0x1219, B:554:0x1235, B:553:0x1224, B:502:0x1096, B:504:0x109c, B:506:0x10a4, B:508:0x10b2, B:514:0x10c0, B:516:0x10ce, B:518:0x10dd, B:520:0x10ea, B:522:0x1105, B:524:0x1130, B:526:0x1137, B:525:0x1134, B:521:0x1102, B:515:0x10cb, B:507:0x10af, B:399:0x0d27, B:319:0x0971, B:313:0x091e, B:315:0x0924, B:557:0x1246, B:57:0x011e, B:72:0x019f, B:79:0x01da, B:85:0x01f6, B:89:0x020c, B:95:0x0225, B:561:0x1259, B:562:0x125c, B:50:0x00da, B:60:0x0127), top: B:565:0x0013, inners: #1, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0ea2 A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:3:0x0013, B:22:0x007b, B:96:0x0228, B:98:0x022c, B:101:0x0234, B:102:0x024d, B:105:0x0261, B:108:0x028b, B:110:0x02c0, B:113:0x02d1, B:115:0x02db, B:283:0x0879, B:118:0x0302, B:120:0x0310, B:123:0x032c, B:125:0x0336, B:127:0x0348, B:129:0x0356, B:131:0x0366, B:132:0x0373, B:133:0x0378, B:135:0x038e, B:191:0x05bf, B:192:0x05cb, B:195:0x05d7, B:201:0x05fa, B:198:0x05e9, B:204:0x0602, B:206:0x060e, B:208:0x061a, B:222:0x0664, B:225:0x068d, B:227:0x0699, B:230:0x06aa, B:232:0x06bb, B:234:0x06c9, B:250:0x072e, B:252:0x0738, B:253:0x0744, B:255:0x074e, B:257:0x075c, B:259:0x0766, B:260:0x0777, B:262:0x077d, B:263:0x0798, B:265:0x079e, B:266:0x07bc, B:267:0x07c9, B:271:0x07f2, B:268:0x07d1, B:270:0x07df, B:272:0x07fc, B:273:0x081b, B:275:0x0821, B:277:0x0834, B:278:0x0841, B:280:0x0848, B:282:0x0858, B:238:0x06db, B:240:0x06e7, B:243:0x06fa, B:245:0x070b, B:247:0x0719, B:214:0x0641, B:218:0x0654, B:220:0x065a, B:223:0x0684, B:138:0x03a4, B:145:0x03bd, B:148:0x03cb, B:150:0x03d9, B:155:0x0432, B:151:0x03ff, B:153:0x040f, B:159:0x043d, B:162:0x0470, B:163:0x049a, B:165:0x04d1, B:167:0x04d7, B:170:0x04e3, B:172:0x051c, B:173:0x0537, B:175:0x0541, B:177:0x0551, B:181:0x0565, B:178:0x055a, B:185:0x0570, B:187:0x057e, B:188:0x05a0, B:286:0x088f, B:288:0x08a1, B:290:0x08aa, B:302:0x08dd, B:292:0x08b4, B:294:0x08bd, B:296:0x08c3, B:299:0x08cf, B:301:0x08d7, B:303:0x08e0, B:304:0x08ec, B:307:0x08f4, B:309:0x0906, B:310:0x0911, B:312:0x0919, B:316:0x0945, B:318:0x095f, B:320:0x0974, B:322:0x0983, B:324:0x099d, B:325:0x09af, B:326:0x09b2, B:327:0x09ce, B:329:0x09d4, B:331:0x09ec, B:332:0x09fa, B:334:0x0a0a, B:335:0x0a18, B:336:0x0a1b, B:338:0x0a2f, B:340:0x0a68, B:342:0x0a6e, B:348:0x0a95, B:350:0x0a9b, B:351:0x0ab9, B:353:0x0abf, B:343:0x0a7c, B:345:0x0a82, B:347:0x0a88, B:354:0x0ad3, B:356:0x0ae8, B:358:0x0af7, B:360:0x0b07, B:363:0x0b10, B:365:0x0b16, B:366:0x0b2c, B:368:0x0b32, B:370:0x0b42, B:372:0x0b5a, B:375:0x0b72, B:377:0x0b9b, B:393:0x0cb9, B:395:0x0cc5, B:378:0x0bb4, B:380:0x0bc6, B:382:0x0be3, B:384:0x0c08, B:385:0x0c35, B:387:0x0c49, B:389:0x0c66, B:391:0x0c8b, B:396:0x0ccb, B:398:0x0cdc, B:400:0x0d69, B:402:0x0d79, B:403:0x0d8c, B:405:0x0d92, B:408:0x0db0, B:410:0x0dc9, B:412:0x0ddc, B:414:0x0de1, B:416:0x0de5, B:418:0x0de9, B:420:0x0df3, B:422:0x0dfe, B:424:0x0e02, B:426:0x0e08, B:428:0x0e13, B:430:0x0e21, B:491:0x1023, B:431:0x0e2a, B:433:0x0e55, B:434:0x0e5d, B:436:0x0e63, B:438:0x0e75, B:445:0x0ea2, B:447:0x0eca, B:449:0x0ed6, B:451:0x0eec, B:454:0x0f31, B:460:0x0f4b, B:462:0x0f56, B:464:0x0f5a, B:466:0x0f5e, B:468:0x0f62, B:469:0x0f6e, B:470:0x0f73, B:472:0x0f79, B:474:0x0f8f, B:475:0x0f98, B:490:0x1020, B:476:0x0fae, B:478:0x0fb2, B:482:0x0fd2, B:484:0x0ff2, B:485:0x0ffd, B:489:0x1013, B:479:0x0fbc, B:443:0x0e8b, B:492:0x102d, B:494:0x1037, B:495:0x104b, B:496:0x1053, B:498:0x1059, B:499:0x106d, B:501:0x107d, B:527:0x113f, B:529:0x1145, B:531:0x1155, B:534:0x115c, B:539:0x119b, B:535:0x116b, B:537:0x1177, B:538:0x1184, B:540:0x11aa, B:541:0x11c1, B:544:0x11c9, B:545:0x11ce, B:546:0x11de, B:548:0x11f8, B:549:0x1211, B:550:0x1219, B:554:0x1235, B:553:0x1224, B:502:0x1096, B:504:0x109c, B:506:0x10a4, B:508:0x10b2, B:514:0x10c0, B:516:0x10ce, B:518:0x10dd, B:520:0x10ea, B:522:0x1105, B:524:0x1130, B:526:0x1137, B:525:0x1134, B:521:0x1102, B:515:0x10cb, B:507:0x10af, B:399:0x0d27, B:319:0x0971, B:313:0x091e, B:315:0x0924, B:557:0x1246, B:57:0x011e, B:72:0x019f, B:79:0x01da, B:85:0x01f6, B:89:0x020c, B:95:0x0225, B:561:0x1259, B:562:0x125c, B:50:0x00da, B:60:0x0127), top: B:565:0x0013, inners: #1, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:447:0x0eca A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:3:0x0013, B:22:0x007b, B:96:0x0228, B:98:0x022c, B:101:0x0234, B:102:0x024d, B:105:0x0261, B:108:0x028b, B:110:0x02c0, B:113:0x02d1, B:115:0x02db, B:283:0x0879, B:118:0x0302, B:120:0x0310, B:123:0x032c, B:125:0x0336, B:127:0x0348, B:129:0x0356, B:131:0x0366, B:132:0x0373, B:133:0x0378, B:135:0x038e, B:191:0x05bf, B:192:0x05cb, B:195:0x05d7, B:201:0x05fa, B:198:0x05e9, B:204:0x0602, B:206:0x060e, B:208:0x061a, B:222:0x0664, B:225:0x068d, B:227:0x0699, B:230:0x06aa, B:232:0x06bb, B:234:0x06c9, B:250:0x072e, B:252:0x0738, B:253:0x0744, B:255:0x074e, B:257:0x075c, B:259:0x0766, B:260:0x0777, B:262:0x077d, B:263:0x0798, B:265:0x079e, B:266:0x07bc, B:267:0x07c9, B:271:0x07f2, B:268:0x07d1, B:270:0x07df, B:272:0x07fc, B:273:0x081b, B:275:0x0821, B:277:0x0834, B:278:0x0841, B:280:0x0848, B:282:0x0858, B:238:0x06db, B:240:0x06e7, B:243:0x06fa, B:245:0x070b, B:247:0x0719, B:214:0x0641, B:218:0x0654, B:220:0x065a, B:223:0x0684, B:138:0x03a4, B:145:0x03bd, B:148:0x03cb, B:150:0x03d9, B:155:0x0432, B:151:0x03ff, B:153:0x040f, B:159:0x043d, B:162:0x0470, B:163:0x049a, B:165:0x04d1, B:167:0x04d7, B:170:0x04e3, B:172:0x051c, B:173:0x0537, B:175:0x0541, B:177:0x0551, B:181:0x0565, B:178:0x055a, B:185:0x0570, B:187:0x057e, B:188:0x05a0, B:286:0x088f, B:288:0x08a1, B:290:0x08aa, B:302:0x08dd, B:292:0x08b4, B:294:0x08bd, B:296:0x08c3, B:299:0x08cf, B:301:0x08d7, B:303:0x08e0, B:304:0x08ec, B:307:0x08f4, B:309:0x0906, B:310:0x0911, B:312:0x0919, B:316:0x0945, B:318:0x095f, B:320:0x0974, B:322:0x0983, B:324:0x099d, B:325:0x09af, B:326:0x09b2, B:327:0x09ce, B:329:0x09d4, B:331:0x09ec, B:332:0x09fa, B:334:0x0a0a, B:335:0x0a18, B:336:0x0a1b, B:338:0x0a2f, B:340:0x0a68, B:342:0x0a6e, B:348:0x0a95, B:350:0x0a9b, B:351:0x0ab9, B:353:0x0abf, B:343:0x0a7c, B:345:0x0a82, B:347:0x0a88, B:354:0x0ad3, B:356:0x0ae8, B:358:0x0af7, B:360:0x0b07, B:363:0x0b10, B:365:0x0b16, B:366:0x0b2c, B:368:0x0b32, B:370:0x0b42, B:372:0x0b5a, B:375:0x0b72, B:377:0x0b9b, B:393:0x0cb9, B:395:0x0cc5, B:378:0x0bb4, B:380:0x0bc6, B:382:0x0be3, B:384:0x0c08, B:385:0x0c35, B:387:0x0c49, B:389:0x0c66, B:391:0x0c8b, B:396:0x0ccb, B:398:0x0cdc, B:400:0x0d69, B:402:0x0d79, B:403:0x0d8c, B:405:0x0d92, B:408:0x0db0, B:410:0x0dc9, B:412:0x0ddc, B:414:0x0de1, B:416:0x0de5, B:418:0x0de9, B:420:0x0df3, B:422:0x0dfe, B:424:0x0e02, B:426:0x0e08, B:428:0x0e13, B:430:0x0e21, B:491:0x1023, B:431:0x0e2a, B:433:0x0e55, B:434:0x0e5d, B:436:0x0e63, B:438:0x0e75, B:445:0x0ea2, B:447:0x0eca, B:449:0x0ed6, B:451:0x0eec, B:454:0x0f31, B:460:0x0f4b, B:462:0x0f56, B:464:0x0f5a, B:466:0x0f5e, B:468:0x0f62, B:469:0x0f6e, B:470:0x0f73, B:472:0x0f79, B:474:0x0f8f, B:475:0x0f98, B:490:0x1020, B:476:0x0fae, B:478:0x0fb2, B:482:0x0fd2, B:484:0x0ff2, B:485:0x0ffd, B:489:0x1013, B:479:0x0fbc, B:443:0x0e8b, B:492:0x102d, B:494:0x1037, B:495:0x104b, B:496:0x1053, B:498:0x1059, B:499:0x106d, B:501:0x107d, B:527:0x113f, B:529:0x1145, B:531:0x1155, B:534:0x115c, B:539:0x119b, B:535:0x116b, B:537:0x1177, B:538:0x1184, B:540:0x11aa, B:541:0x11c1, B:544:0x11c9, B:545:0x11ce, B:546:0x11de, B:548:0x11f8, B:549:0x1211, B:550:0x1219, B:554:0x1235, B:553:0x1224, B:502:0x1096, B:504:0x109c, B:506:0x10a4, B:508:0x10b2, B:514:0x10c0, B:516:0x10ce, B:518:0x10dd, B:520:0x10ea, B:522:0x1105, B:524:0x1130, B:526:0x1137, B:525:0x1134, B:521:0x1102, B:515:0x10cb, B:507:0x10af, B:399:0x0d27, B:319:0x0971, B:313:0x091e, B:315:0x0924, B:557:0x1246, B:57:0x011e, B:72:0x019f, B:79:0x01da, B:85:0x01f6, B:89:0x020c, B:95:0x0225, B:561:0x1259, B:562:0x125c, B:50:0x00da, B:60:0x0127), top: B:565:0x0013, inners: #1, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:456:0x0f44  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x0f47  */
    /* JADX WARN: Removed duplicated region for block: B:460:0x0f4b A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:3:0x0013, B:22:0x007b, B:96:0x0228, B:98:0x022c, B:101:0x0234, B:102:0x024d, B:105:0x0261, B:108:0x028b, B:110:0x02c0, B:113:0x02d1, B:115:0x02db, B:283:0x0879, B:118:0x0302, B:120:0x0310, B:123:0x032c, B:125:0x0336, B:127:0x0348, B:129:0x0356, B:131:0x0366, B:132:0x0373, B:133:0x0378, B:135:0x038e, B:191:0x05bf, B:192:0x05cb, B:195:0x05d7, B:201:0x05fa, B:198:0x05e9, B:204:0x0602, B:206:0x060e, B:208:0x061a, B:222:0x0664, B:225:0x068d, B:227:0x0699, B:230:0x06aa, B:232:0x06bb, B:234:0x06c9, B:250:0x072e, B:252:0x0738, B:253:0x0744, B:255:0x074e, B:257:0x075c, B:259:0x0766, B:260:0x0777, B:262:0x077d, B:263:0x0798, B:265:0x079e, B:266:0x07bc, B:267:0x07c9, B:271:0x07f2, B:268:0x07d1, B:270:0x07df, B:272:0x07fc, B:273:0x081b, B:275:0x0821, B:277:0x0834, B:278:0x0841, B:280:0x0848, B:282:0x0858, B:238:0x06db, B:240:0x06e7, B:243:0x06fa, B:245:0x070b, B:247:0x0719, B:214:0x0641, B:218:0x0654, B:220:0x065a, B:223:0x0684, B:138:0x03a4, B:145:0x03bd, B:148:0x03cb, B:150:0x03d9, B:155:0x0432, B:151:0x03ff, B:153:0x040f, B:159:0x043d, B:162:0x0470, B:163:0x049a, B:165:0x04d1, B:167:0x04d7, B:170:0x04e3, B:172:0x051c, B:173:0x0537, B:175:0x0541, B:177:0x0551, B:181:0x0565, B:178:0x055a, B:185:0x0570, B:187:0x057e, B:188:0x05a0, B:286:0x088f, B:288:0x08a1, B:290:0x08aa, B:302:0x08dd, B:292:0x08b4, B:294:0x08bd, B:296:0x08c3, B:299:0x08cf, B:301:0x08d7, B:303:0x08e0, B:304:0x08ec, B:307:0x08f4, B:309:0x0906, B:310:0x0911, B:312:0x0919, B:316:0x0945, B:318:0x095f, B:320:0x0974, B:322:0x0983, B:324:0x099d, B:325:0x09af, B:326:0x09b2, B:327:0x09ce, B:329:0x09d4, B:331:0x09ec, B:332:0x09fa, B:334:0x0a0a, B:335:0x0a18, B:336:0x0a1b, B:338:0x0a2f, B:340:0x0a68, B:342:0x0a6e, B:348:0x0a95, B:350:0x0a9b, B:351:0x0ab9, B:353:0x0abf, B:343:0x0a7c, B:345:0x0a82, B:347:0x0a88, B:354:0x0ad3, B:356:0x0ae8, B:358:0x0af7, B:360:0x0b07, B:363:0x0b10, B:365:0x0b16, B:366:0x0b2c, B:368:0x0b32, B:370:0x0b42, B:372:0x0b5a, B:375:0x0b72, B:377:0x0b9b, B:393:0x0cb9, B:395:0x0cc5, B:378:0x0bb4, B:380:0x0bc6, B:382:0x0be3, B:384:0x0c08, B:385:0x0c35, B:387:0x0c49, B:389:0x0c66, B:391:0x0c8b, B:396:0x0ccb, B:398:0x0cdc, B:400:0x0d69, B:402:0x0d79, B:403:0x0d8c, B:405:0x0d92, B:408:0x0db0, B:410:0x0dc9, B:412:0x0ddc, B:414:0x0de1, B:416:0x0de5, B:418:0x0de9, B:420:0x0df3, B:422:0x0dfe, B:424:0x0e02, B:426:0x0e08, B:428:0x0e13, B:430:0x0e21, B:491:0x1023, B:431:0x0e2a, B:433:0x0e55, B:434:0x0e5d, B:436:0x0e63, B:438:0x0e75, B:445:0x0ea2, B:447:0x0eca, B:449:0x0ed6, B:451:0x0eec, B:454:0x0f31, B:460:0x0f4b, B:462:0x0f56, B:464:0x0f5a, B:466:0x0f5e, B:468:0x0f62, B:469:0x0f6e, B:470:0x0f73, B:472:0x0f79, B:474:0x0f8f, B:475:0x0f98, B:490:0x1020, B:476:0x0fae, B:478:0x0fb2, B:482:0x0fd2, B:484:0x0ff2, B:485:0x0ffd, B:489:0x1013, B:479:0x0fbc, B:443:0x0e8b, B:492:0x102d, B:494:0x1037, B:495:0x104b, B:496:0x1053, B:498:0x1059, B:499:0x106d, B:501:0x107d, B:527:0x113f, B:529:0x1145, B:531:0x1155, B:534:0x115c, B:539:0x119b, B:535:0x116b, B:537:0x1177, B:538:0x1184, B:540:0x11aa, B:541:0x11c1, B:544:0x11c9, B:545:0x11ce, B:546:0x11de, B:548:0x11f8, B:549:0x1211, B:550:0x1219, B:554:0x1235, B:553:0x1224, B:502:0x1096, B:504:0x109c, B:506:0x10a4, B:508:0x10b2, B:514:0x10c0, B:516:0x10ce, B:518:0x10dd, B:520:0x10ea, B:522:0x1105, B:524:0x1130, B:526:0x1137, B:525:0x1134, B:521:0x1102, B:515:0x10cb, B:507:0x10af, B:399:0x0d27, B:319:0x0971, B:313:0x091e, B:315:0x0924, B:557:0x1246, B:57:0x011e, B:72:0x019f, B:79:0x01da, B:85:0x01f6, B:89:0x020c, B:95:0x0225, B:561:0x1259, B:562:0x125c, B:50:0x00da, B:60:0x0127), top: B:565:0x0013, inners: #1, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:470:0x0f73 A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:3:0x0013, B:22:0x007b, B:96:0x0228, B:98:0x022c, B:101:0x0234, B:102:0x024d, B:105:0x0261, B:108:0x028b, B:110:0x02c0, B:113:0x02d1, B:115:0x02db, B:283:0x0879, B:118:0x0302, B:120:0x0310, B:123:0x032c, B:125:0x0336, B:127:0x0348, B:129:0x0356, B:131:0x0366, B:132:0x0373, B:133:0x0378, B:135:0x038e, B:191:0x05bf, B:192:0x05cb, B:195:0x05d7, B:201:0x05fa, B:198:0x05e9, B:204:0x0602, B:206:0x060e, B:208:0x061a, B:222:0x0664, B:225:0x068d, B:227:0x0699, B:230:0x06aa, B:232:0x06bb, B:234:0x06c9, B:250:0x072e, B:252:0x0738, B:253:0x0744, B:255:0x074e, B:257:0x075c, B:259:0x0766, B:260:0x0777, B:262:0x077d, B:263:0x0798, B:265:0x079e, B:266:0x07bc, B:267:0x07c9, B:271:0x07f2, B:268:0x07d1, B:270:0x07df, B:272:0x07fc, B:273:0x081b, B:275:0x0821, B:277:0x0834, B:278:0x0841, B:280:0x0848, B:282:0x0858, B:238:0x06db, B:240:0x06e7, B:243:0x06fa, B:245:0x070b, B:247:0x0719, B:214:0x0641, B:218:0x0654, B:220:0x065a, B:223:0x0684, B:138:0x03a4, B:145:0x03bd, B:148:0x03cb, B:150:0x03d9, B:155:0x0432, B:151:0x03ff, B:153:0x040f, B:159:0x043d, B:162:0x0470, B:163:0x049a, B:165:0x04d1, B:167:0x04d7, B:170:0x04e3, B:172:0x051c, B:173:0x0537, B:175:0x0541, B:177:0x0551, B:181:0x0565, B:178:0x055a, B:185:0x0570, B:187:0x057e, B:188:0x05a0, B:286:0x088f, B:288:0x08a1, B:290:0x08aa, B:302:0x08dd, B:292:0x08b4, B:294:0x08bd, B:296:0x08c3, B:299:0x08cf, B:301:0x08d7, B:303:0x08e0, B:304:0x08ec, B:307:0x08f4, B:309:0x0906, B:310:0x0911, B:312:0x0919, B:316:0x0945, B:318:0x095f, B:320:0x0974, B:322:0x0983, B:324:0x099d, B:325:0x09af, B:326:0x09b2, B:327:0x09ce, B:329:0x09d4, B:331:0x09ec, B:332:0x09fa, B:334:0x0a0a, B:335:0x0a18, B:336:0x0a1b, B:338:0x0a2f, B:340:0x0a68, B:342:0x0a6e, B:348:0x0a95, B:350:0x0a9b, B:351:0x0ab9, B:353:0x0abf, B:343:0x0a7c, B:345:0x0a82, B:347:0x0a88, B:354:0x0ad3, B:356:0x0ae8, B:358:0x0af7, B:360:0x0b07, B:363:0x0b10, B:365:0x0b16, B:366:0x0b2c, B:368:0x0b32, B:370:0x0b42, B:372:0x0b5a, B:375:0x0b72, B:377:0x0b9b, B:393:0x0cb9, B:395:0x0cc5, B:378:0x0bb4, B:380:0x0bc6, B:382:0x0be3, B:384:0x0c08, B:385:0x0c35, B:387:0x0c49, B:389:0x0c66, B:391:0x0c8b, B:396:0x0ccb, B:398:0x0cdc, B:400:0x0d69, B:402:0x0d79, B:403:0x0d8c, B:405:0x0d92, B:408:0x0db0, B:410:0x0dc9, B:412:0x0ddc, B:414:0x0de1, B:416:0x0de5, B:418:0x0de9, B:420:0x0df3, B:422:0x0dfe, B:424:0x0e02, B:426:0x0e08, B:428:0x0e13, B:430:0x0e21, B:491:0x1023, B:431:0x0e2a, B:433:0x0e55, B:434:0x0e5d, B:436:0x0e63, B:438:0x0e75, B:445:0x0ea2, B:447:0x0eca, B:449:0x0ed6, B:451:0x0eec, B:454:0x0f31, B:460:0x0f4b, B:462:0x0f56, B:464:0x0f5a, B:466:0x0f5e, B:468:0x0f62, B:469:0x0f6e, B:470:0x0f73, B:472:0x0f79, B:474:0x0f8f, B:475:0x0f98, B:490:0x1020, B:476:0x0fae, B:478:0x0fb2, B:482:0x0fd2, B:484:0x0ff2, B:485:0x0ffd, B:489:0x1013, B:479:0x0fbc, B:443:0x0e8b, B:492:0x102d, B:494:0x1037, B:495:0x104b, B:496:0x1053, B:498:0x1059, B:499:0x106d, B:501:0x107d, B:527:0x113f, B:529:0x1145, B:531:0x1155, B:534:0x115c, B:539:0x119b, B:535:0x116b, B:537:0x1177, B:538:0x1184, B:540:0x11aa, B:541:0x11c1, B:544:0x11c9, B:545:0x11ce, B:546:0x11de, B:548:0x11f8, B:549:0x1211, B:550:0x1219, B:554:0x1235, B:553:0x1224, B:502:0x1096, B:504:0x109c, B:506:0x10a4, B:508:0x10b2, B:514:0x10c0, B:516:0x10ce, B:518:0x10dd, B:520:0x10ea, B:522:0x1105, B:524:0x1130, B:526:0x1137, B:525:0x1134, B:521:0x1102, B:515:0x10cb, B:507:0x10af, B:399:0x0d27, B:319:0x0971, B:313:0x091e, B:315:0x0924, B:557:0x1246, B:57:0x011e, B:72:0x019f, B:79:0x01da, B:85:0x01f6, B:89:0x020c, B:95:0x0225, B:561:0x1259, B:562:0x125c, B:50:0x00da, B:60:0x0127), top: B:565:0x0013, inners: #1, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:521:0x1102 A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:3:0x0013, B:22:0x007b, B:96:0x0228, B:98:0x022c, B:101:0x0234, B:102:0x024d, B:105:0x0261, B:108:0x028b, B:110:0x02c0, B:113:0x02d1, B:115:0x02db, B:283:0x0879, B:118:0x0302, B:120:0x0310, B:123:0x032c, B:125:0x0336, B:127:0x0348, B:129:0x0356, B:131:0x0366, B:132:0x0373, B:133:0x0378, B:135:0x038e, B:191:0x05bf, B:192:0x05cb, B:195:0x05d7, B:201:0x05fa, B:198:0x05e9, B:204:0x0602, B:206:0x060e, B:208:0x061a, B:222:0x0664, B:225:0x068d, B:227:0x0699, B:230:0x06aa, B:232:0x06bb, B:234:0x06c9, B:250:0x072e, B:252:0x0738, B:253:0x0744, B:255:0x074e, B:257:0x075c, B:259:0x0766, B:260:0x0777, B:262:0x077d, B:263:0x0798, B:265:0x079e, B:266:0x07bc, B:267:0x07c9, B:271:0x07f2, B:268:0x07d1, B:270:0x07df, B:272:0x07fc, B:273:0x081b, B:275:0x0821, B:277:0x0834, B:278:0x0841, B:280:0x0848, B:282:0x0858, B:238:0x06db, B:240:0x06e7, B:243:0x06fa, B:245:0x070b, B:247:0x0719, B:214:0x0641, B:218:0x0654, B:220:0x065a, B:223:0x0684, B:138:0x03a4, B:145:0x03bd, B:148:0x03cb, B:150:0x03d9, B:155:0x0432, B:151:0x03ff, B:153:0x040f, B:159:0x043d, B:162:0x0470, B:163:0x049a, B:165:0x04d1, B:167:0x04d7, B:170:0x04e3, B:172:0x051c, B:173:0x0537, B:175:0x0541, B:177:0x0551, B:181:0x0565, B:178:0x055a, B:185:0x0570, B:187:0x057e, B:188:0x05a0, B:286:0x088f, B:288:0x08a1, B:290:0x08aa, B:302:0x08dd, B:292:0x08b4, B:294:0x08bd, B:296:0x08c3, B:299:0x08cf, B:301:0x08d7, B:303:0x08e0, B:304:0x08ec, B:307:0x08f4, B:309:0x0906, B:310:0x0911, B:312:0x0919, B:316:0x0945, B:318:0x095f, B:320:0x0974, B:322:0x0983, B:324:0x099d, B:325:0x09af, B:326:0x09b2, B:327:0x09ce, B:329:0x09d4, B:331:0x09ec, B:332:0x09fa, B:334:0x0a0a, B:335:0x0a18, B:336:0x0a1b, B:338:0x0a2f, B:340:0x0a68, B:342:0x0a6e, B:348:0x0a95, B:350:0x0a9b, B:351:0x0ab9, B:353:0x0abf, B:343:0x0a7c, B:345:0x0a82, B:347:0x0a88, B:354:0x0ad3, B:356:0x0ae8, B:358:0x0af7, B:360:0x0b07, B:363:0x0b10, B:365:0x0b16, B:366:0x0b2c, B:368:0x0b32, B:370:0x0b42, B:372:0x0b5a, B:375:0x0b72, B:377:0x0b9b, B:393:0x0cb9, B:395:0x0cc5, B:378:0x0bb4, B:380:0x0bc6, B:382:0x0be3, B:384:0x0c08, B:385:0x0c35, B:387:0x0c49, B:389:0x0c66, B:391:0x0c8b, B:396:0x0ccb, B:398:0x0cdc, B:400:0x0d69, B:402:0x0d79, B:403:0x0d8c, B:405:0x0d92, B:408:0x0db0, B:410:0x0dc9, B:412:0x0ddc, B:414:0x0de1, B:416:0x0de5, B:418:0x0de9, B:420:0x0df3, B:422:0x0dfe, B:424:0x0e02, B:426:0x0e08, B:428:0x0e13, B:430:0x0e21, B:491:0x1023, B:431:0x0e2a, B:433:0x0e55, B:434:0x0e5d, B:436:0x0e63, B:438:0x0e75, B:445:0x0ea2, B:447:0x0eca, B:449:0x0ed6, B:451:0x0eec, B:454:0x0f31, B:460:0x0f4b, B:462:0x0f56, B:464:0x0f5a, B:466:0x0f5e, B:468:0x0f62, B:469:0x0f6e, B:470:0x0f73, B:472:0x0f79, B:474:0x0f8f, B:475:0x0f98, B:490:0x1020, B:476:0x0fae, B:478:0x0fb2, B:482:0x0fd2, B:484:0x0ff2, B:485:0x0ffd, B:489:0x1013, B:479:0x0fbc, B:443:0x0e8b, B:492:0x102d, B:494:0x1037, B:495:0x104b, B:496:0x1053, B:498:0x1059, B:499:0x106d, B:501:0x107d, B:527:0x113f, B:529:0x1145, B:531:0x1155, B:534:0x115c, B:539:0x119b, B:535:0x116b, B:537:0x1177, B:538:0x1184, B:540:0x11aa, B:541:0x11c1, B:544:0x11c9, B:545:0x11ce, B:546:0x11de, B:548:0x11f8, B:549:0x1211, B:550:0x1219, B:554:0x1235, B:553:0x1224, B:502:0x1096, B:504:0x109c, B:506:0x10a4, B:508:0x10b2, B:514:0x10c0, B:516:0x10ce, B:518:0x10dd, B:520:0x10ea, B:522:0x1105, B:524:0x1130, B:526:0x1137, B:525:0x1134, B:521:0x1102, B:515:0x10cb, B:507:0x10af, B:399:0x0d27, B:319:0x0971, B:313:0x091e, B:315:0x0924, B:557:0x1246, B:57:0x011e, B:72:0x019f, B:79:0x01da, B:85:0x01f6, B:89:0x020c, B:95:0x0225, B:561:0x1259, B:562:0x125c, B:50:0x00da, B:60:0x0127), top: B:565:0x0013, inners: #1, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x010d A[Catch: all -> 0x008f, SQLiteException -> 0x0093, TRY_LEAVE, TryCatch #4 {SQLiteException -> 0x0093, blocks: (B:27:0x0087, B:54:0x00eb, B:56:0x010d, B:59:0x0123, B:60:0x0127, B:61:0x0137, B:63:0x013d, B:64:0x014e, B:66:0x0158, B:69:0x016e, B:71:0x018e, B:74:0x01a4, B:75:0x01ad, B:77:0x01b8, B:83:0x01f0, B:82:0x01df, B:68:0x0167, B:88:0x01fb), top: B:572:0x0087 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0123 A[Catch: all -> 0x008f, SQLiteException -> 0x0093, TRY_ENTER, TRY_LEAVE, TryCatch #4 {SQLiteException -> 0x0093, blocks: (B:27:0x0087, B:54:0x00eb, B:56:0x010d, B:59:0x0123, B:60:0x0127, B:61:0x0137, B:63:0x013d, B:64:0x014e, B:66:0x0158, B:69:0x016e, B:71:0x018e, B:74:0x01a4, B:75:0x01ad, B:77:0x01b8, B:83:0x01f0, B:82:0x01df, B:68:0x0167, B:88:0x01fb), top: B:572:0x0087 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0225 A[Catch: all -> 0x0080, TRY_ENTER, TryCatch #0 {all -> 0x0080, blocks: (B:3:0x0013, B:22:0x007b, B:96:0x0228, B:98:0x022c, B:101:0x0234, B:102:0x024d, B:105:0x0261, B:108:0x028b, B:110:0x02c0, B:113:0x02d1, B:115:0x02db, B:283:0x0879, B:118:0x0302, B:120:0x0310, B:123:0x032c, B:125:0x0336, B:127:0x0348, B:129:0x0356, B:131:0x0366, B:132:0x0373, B:133:0x0378, B:135:0x038e, B:191:0x05bf, B:192:0x05cb, B:195:0x05d7, B:201:0x05fa, B:198:0x05e9, B:204:0x0602, B:206:0x060e, B:208:0x061a, B:222:0x0664, B:225:0x068d, B:227:0x0699, B:230:0x06aa, B:232:0x06bb, B:234:0x06c9, B:250:0x072e, B:252:0x0738, B:253:0x0744, B:255:0x074e, B:257:0x075c, B:259:0x0766, B:260:0x0777, B:262:0x077d, B:263:0x0798, B:265:0x079e, B:266:0x07bc, B:267:0x07c9, B:271:0x07f2, B:268:0x07d1, B:270:0x07df, B:272:0x07fc, B:273:0x081b, B:275:0x0821, B:277:0x0834, B:278:0x0841, B:280:0x0848, B:282:0x0858, B:238:0x06db, B:240:0x06e7, B:243:0x06fa, B:245:0x070b, B:247:0x0719, B:214:0x0641, B:218:0x0654, B:220:0x065a, B:223:0x0684, B:138:0x03a4, B:145:0x03bd, B:148:0x03cb, B:150:0x03d9, B:155:0x0432, B:151:0x03ff, B:153:0x040f, B:159:0x043d, B:162:0x0470, B:163:0x049a, B:165:0x04d1, B:167:0x04d7, B:170:0x04e3, B:172:0x051c, B:173:0x0537, B:175:0x0541, B:177:0x0551, B:181:0x0565, B:178:0x055a, B:185:0x0570, B:187:0x057e, B:188:0x05a0, B:286:0x088f, B:288:0x08a1, B:290:0x08aa, B:302:0x08dd, B:292:0x08b4, B:294:0x08bd, B:296:0x08c3, B:299:0x08cf, B:301:0x08d7, B:303:0x08e0, B:304:0x08ec, B:307:0x08f4, B:309:0x0906, B:310:0x0911, B:312:0x0919, B:316:0x0945, B:318:0x095f, B:320:0x0974, B:322:0x0983, B:324:0x099d, B:325:0x09af, B:326:0x09b2, B:327:0x09ce, B:329:0x09d4, B:331:0x09ec, B:332:0x09fa, B:334:0x0a0a, B:335:0x0a18, B:336:0x0a1b, B:338:0x0a2f, B:340:0x0a68, B:342:0x0a6e, B:348:0x0a95, B:350:0x0a9b, B:351:0x0ab9, B:353:0x0abf, B:343:0x0a7c, B:345:0x0a82, B:347:0x0a88, B:354:0x0ad3, B:356:0x0ae8, B:358:0x0af7, B:360:0x0b07, B:363:0x0b10, B:365:0x0b16, B:366:0x0b2c, B:368:0x0b32, B:370:0x0b42, B:372:0x0b5a, B:375:0x0b72, B:377:0x0b9b, B:393:0x0cb9, B:395:0x0cc5, B:378:0x0bb4, B:380:0x0bc6, B:382:0x0be3, B:384:0x0c08, B:385:0x0c35, B:387:0x0c49, B:389:0x0c66, B:391:0x0c8b, B:396:0x0ccb, B:398:0x0cdc, B:400:0x0d69, B:402:0x0d79, B:403:0x0d8c, B:405:0x0d92, B:408:0x0db0, B:410:0x0dc9, B:412:0x0ddc, B:414:0x0de1, B:416:0x0de5, B:418:0x0de9, B:420:0x0df3, B:422:0x0dfe, B:424:0x0e02, B:426:0x0e08, B:428:0x0e13, B:430:0x0e21, B:491:0x1023, B:431:0x0e2a, B:433:0x0e55, B:434:0x0e5d, B:436:0x0e63, B:438:0x0e75, B:445:0x0ea2, B:447:0x0eca, B:449:0x0ed6, B:451:0x0eec, B:454:0x0f31, B:460:0x0f4b, B:462:0x0f56, B:464:0x0f5a, B:466:0x0f5e, B:468:0x0f62, B:469:0x0f6e, B:470:0x0f73, B:472:0x0f79, B:474:0x0f8f, B:475:0x0f98, B:490:0x1020, B:476:0x0fae, B:478:0x0fb2, B:482:0x0fd2, B:484:0x0ff2, B:485:0x0ffd, B:489:0x1013, B:479:0x0fbc, B:443:0x0e8b, B:492:0x102d, B:494:0x1037, B:495:0x104b, B:496:0x1053, B:498:0x1059, B:499:0x106d, B:501:0x107d, B:527:0x113f, B:529:0x1145, B:531:0x1155, B:534:0x115c, B:539:0x119b, B:535:0x116b, B:537:0x1177, B:538:0x1184, B:540:0x11aa, B:541:0x11c1, B:544:0x11c9, B:545:0x11ce, B:546:0x11de, B:548:0x11f8, B:549:0x1211, B:550:0x1219, B:554:0x1235, B:553:0x1224, B:502:0x1096, B:504:0x109c, B:506:0x10a4, B:508:0x10b2, B:514:0x10c0, B:516:0x10ce, B:518:0x10dd, B:520:0x10ea, B:522:0x1105, B:524:0x1130, B:526:0x1137, B:525:0x1134, B:521:0x1102, B:515:0x10cb, B:507:0x10af, B:399:0x0d27, B:319:0x0971, B:313:0x091e, B:315:0x0924, B:557:0x1246, B:57:0x011e, B:72:0x019f, B:79:0x01da, B:85:0x01f6, B:89:0x020c, B:95:0x0225, B:561:0x1259, B:562:0x125c, B:50:0x00da, B:60:0x0127), top: B:565:0x0013, inners: #1, #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean zza(java.lang.String r49, long r50) {
        /*
            Method dump skipped, instruction units count: 4709
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznv.zza(java.lang.String, long):boolean");
    }

    private final boolean zza(p3 p3Var, p3 p3Var2) {
        d0.a("_e".equals(p3Var.n()));
        zzp();
        u3 u3VarZza = zzoo.zza((q3) p3Var.c(), "_sc");
        String strD = u3VarZza == null ? null : u3VarZza.D();
        zzp();
        u3 u3VarZza2 = zzoo.zza((q3) p3Var2.c(), "_pc");
        String strD2 = u3VarZza2 != null ? u3VarZza2.D() : null;
        if (strD2 == null || !strD2.equals(strD)) {
            return false;
        }
        d0.a("_e".equals(p3Var.n()));
        zzp();
        u3 u3VarZza3 = zzoo.zza((q3) p3Var.c(), "_et");
        if (u3VarZza3 == null || !u3VarZza3.H() || u3VarZza3.z() <= 0) {
            return true;
        }
        long jZ = u3VarZza3.z();
        zzp();
        u3 u3VarZza4 = zzoo.zza((q3) p3Var2.c(), "_et");
        if (u3VarZza4 != null && u3VarZza4.z() > 0) {
            jZ += u3VarZza4.z();
        }
        zzp();
        zzoo.zza(p3Var2, "_et", Long.valueOf(jZ));
        zzp();
        zzoo.zza(p3Var, "_fr", (Object) 1L);
        return true;
    }

    private final boolean zza(int i6, FileChannel fileChannel) {
        zzl().zzt();
        if (fileChannel != null && fileChannel.isOpen()) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            byteBufferAllocate.putInt(i6);
            byteBufferAllocate.flip();
            try {
                fileChannel.truncate(0L);
                fileChannel.write(byteBufferAllocate);
                fileChannel.force(true);
                if (fileChannel.size() != 4) {
                    zzj().zzg().zza("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
                }
                return true;
            } catch (IOException e9) {
                zzj().zzg().zza("Failed to write to channel", e9);
                return false;
            }
        }
        zzj().zzg().zza("Bad channel to read from");
        return false;
    }
}
