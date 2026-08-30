package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.c;
import com.google.android.gms.internal.measurement.d4;
import com.google.android.gms.internal.measurement.ea;
import com.google.android.gms.internal.measurement.f2;
import com.google.android.gms.internal.measurement.f4;
import com.google.android.gms.internal.measurement.f9;
import com.google.android.gms.internal.measurement.g4;
import com.google.android.gms.internal.measurement.h2;
import com.google.android.gms.internal.measurement.h3;
import com.google.android.gms.internal.measurement.h4;
import com.google.android.gms.internal.measurement.i6;
import com.google.android.gms.internal.measurement.j2;
import com.google.android.gms.internal.measurement.j6;
import com.google.android.gms.internal.measurement.k3;
import com.google.android.gms.internal.measurement.l2;
import com.google.android.gms.internal.measurement.m3;
import com.google.android.gms.internal.measurement.n2;
import com.google.android.gms.internal.measurement.o3;
import com.google.android.gms.internal.measurement.p3;
import com.google.android.gms.internal.measurement.q3;
import com.google.android.gms.internal.measurement.s6;
import com.google.android.gms.internal.measurement.t3;
import com.google.android.gms.internal.measurement.t5;
import com.google.android.gms.internal.measurement.u3;
import com.google.android.gms.internal.measurement.w5;
import com.google.android.gms.internal.measurement.x3;
import com.google.android.gms.internal.measurement.x9;
import com.google.android.gms.internal.measurement.y3;
import com.google.android.gms.internal.measurement.y5;
import com.google.android.gms.internal.measurement.y9;
import com.google.android.gms.internal.measurement.z3;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import y3.b;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzoo extends zznr {
    public zzoo(zznv zznvVar) {
        super(zznvVar);
    }

    public static <BuilderT extends s6> BuilderT zza(BuilderT buildert, byte[] bArr) throws i6 {
        t5 t5VarH;
        t5 t5Var = t5.f1909a;
        if (t5Var == null) {
            synchronized (t5.class) {
                try {
                    t5VarH = t5.f1909a;
                    if (t5VarH == null) {
                        t5VarH = w5.h();
                        t5.f1909a = t5VarH;
                    }
                } finally {
                }
            }
            t5Var = t5VarH;
        }
        if (t5Var != null) {
            y5 y5Var = (y5) buildert;
            y5Var.getClass();
            y5Var.g(bArr, bArr.length, t5Var);
            return y5Var;
        }
        y5 y5Var2 = (y5) buildert;
        y5Var2.getClass();
        y5Var2.g(bArr, bArr.length, t5.f1910b);
        return y5Var2;
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zzoo g_() {
        return super.g_();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ b4.a zzb() {
        return super.zzb();
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

    public final List<Integer> zzu() {
        Map<String, String> mapZza = zzbh.zza(this.zzg.zza());
        if (mapZza == null || mapZza.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int iIntValue = zzbh.zzar.zza(null).intValue();
        for (Map.Entry<String, String> entry : mapZza.entrySet()) {
            if (entry.getKey().startsWith("measurement.id.")) {
                try {
                    int i6 = Integer.parseInt(entry.getValue());
                    if (i6 != 0) {
                        arrayList.add(Integer.valueOf(i6));
                        if (arrayList.size() >= iIntValue) {
                            zzj().zzu().zza("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                            break;
                        }
                        continue;
                    } else {
                        continue;
                    }
                } catch (NumberFormatException e9) {
                    zzj().zzu().zza("Experiment ID NumberFormatException", e9);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    public static Object zzb(q3 q3Var, String str) {
        u3 u3VarZza = zza(q3Var, str);
        if (u3VarZza == null) {
            return null;
        }
        if (u3VarZza.J()) {
            return u3VarZza.D();
        }
        if (u3VarZza.H()) {
            return Long.valueOf(u3VarZza.z());
        }
        if (u3VarZza.F()) {
            return Double.valueOf(u3VarZza.n());
        }
        if (u3VarZza.x() > 0) {
            return zzb((List<u3>) u3VarZza.E());
        }
        return null;
    }

    public final byte[] zzc(byte[] bArr) throws IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int i6 = gZIPInputStream.read(bArr2);
                if (i6 <= 0) {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr2, 0, i6);
            }
        } catch (IOException e9) {
            zzj().zzg().zza("Failed to ungzip content", e9);
            throw e9;
        }
    }

    public static boolean zzb(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    public final byte[] zzb(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e9) {
            zzj().zzg().zza("Failed to gzip content", e9);
            throw e9;
        }
    }

    public static int zza(y3 y3Var, String str) {
        if (y3Var == null) {
            return -1;
        }
        for (int i6 = 0; i6 < ((z3) y3Var.f1993b).t1(); i6++) {
            if (str.equals(((z3) y3Var.f1993b).d0(i6).A())) {
                return i6;
            }
        }
        return -1;
    }

    public final long zza(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        return zza(str.getBytes(Charset.forName("UTF-8")));
    }

    public final long zza(byte[] bArr) {
        d0.h(bArr);
        zzq().zzt();
        MessageDigest messageDigestZzu = zzos.zzu();
        if (messageDigestZzu == null) {
            zzj().zzg().zza("Failed to get MD5");
            return 0L;
        }
        return zzos.zza(messageDigestZzu.digest(bArr));
    }

    public static Bundle[] zzb(List<u3> list) {
        ArrayList arrayList = new ArrayList();
        for (u3 u3Var : list) {
            if (u3Var != null) {
                Bundle bundle = new Bundle();
                for (u3 u3Var2 : u3Var.E()) {
                    if (u3Var2.J()) {
                        bundle.putString(u3Var2.C(), u3Var2.D());
                    } else if (u3Var2.H()) {
                        bundle.putLong(u3Var2.C(), u3Var2.z());
                    } else if (u3Var2.F()) {
                        bundle.putDouble(u3Var2.C(), u3Var2.n());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public static Bundle zza(List<u3> list) {
        Bundle bundle = new Bundle();
        for (u3 u3Var : list) {
            String strC = u3Var.C();
            if (u3Var.F()) {
                bundle.putDouble(strC, u3Var.n());
            } else if (u3Var.G()) {
                bundle.putFloat(strC, u3Var.u());
            } else if (u3Var.J()) {
                bundle.putString(strC, u3Var.D());
            } else if (u3Var.H()) {
                bundle.putLong(strC, u3Var.z());
            }
        }
        return bundle;
    }

    public final zzbf zza(c cVar) {
        String string;
        Object obj;
        Bundle bundleZza = zza((Map<String, Object>) cVar.f1542c, true);
        if (bundleZza.containsKey("_o") && (obj = bundleZza.get("_o")) != null) {
            string = obj.toString();
        } else {
            string = "app";
        }
        String str = string;
        String strZzb = zzji.zzb(cVar.f1540a);
        if (strZzb == null) {
            strZzb = cVar.f1540a;
        }
        return new zzbf(strZzb, new zzbe(bundleZza), str, cVar.f1541b);
    }

    private final Bundle zza(Map<String, Object> map, boolean z5) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z5) {
                ArrayList arrayList = (ArrayList) obj;
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                int i6 = 0;
                while (i6 < size) {
                    Object obj2 = arrayList.get(i6);
                    i6++;
                    arrayList2.add(zza((Map<String, Object>) obj2, false));
                }
                bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
            }
        }
        return bundle;
    }

    public final <T extends Parcelable> T zza(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.unmarshall(bArr, 0, bArr.length);
            parcelObtain.setDataPosition(0);
            return creator.createFromParcel(parcelObtain);
        } catch (b unused) {
            zzj().zzg().zza("Failed to load parcelable from buffer");
            return null;
        } finally {
            parcelObtain.recycle();
        }
    }

    public final zzno zza(String str, y3 y3Var, p3 p3Var, String str2) throws Throwable {
        int iIndexOf;
        x9.a();
        if (!zze().zze(str, zzbh.zzch)) {
            return null;
        }
        ((b4.b) zzb()).getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        String[] strArrSplit = zze().zzd(str, zzbh.zzbg).split(",");
        HashSet hashSet = new HashSet(strArrSplit.length);
        for (String str3 : strArrSplit) {
            Objects.requireNonNull(str3);
            if (!hashSet.add(str3)) {
                throw new IllegalArgumentException("duplicate element: " + ((Object) str3));
            }
        }
        Set setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        zznu zznuVarZzo = zzo();
        String strZzf = zznuVarZzo.zzm().zzf(str);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(zznuVarZzo.zze().zzd(str, zzbh.zzaz));
        if (!TextUtils.isEmpty(strZzf)) {
            builder.authority(strZzf + "." + zznuVarZzo.zze().zzd(str, zzbh.zzba));
        } else {
            builder.authority(zznuVarZzo.zze().zzd(str, zzbh.zzba));
        }
        builder.path(zznuVarZzo.zze().zzd(str, zzbh.zzbb));
        zza(builder, "gmp_app_id", ((z3) y3Var.f1993b).L(), (Set<String>) setUnmodifiableSet);
        zza(builder, "gmp_version", "106000", (Set<String>) setUnmodifiableSet);
        String strC = ((z3) y3Var.f1993b).C();
        zzag zzagVarZze = zze();
        zzfz<Boolean> zzfzVar = zzbh.zzck;
        if (zzagVarZze.zze(str, zzfzVar) && zzm().zzo(str)) {
            strC = "";
        }
        zza(builder, "app_instance_id", strC, (Set<String>) setUnmodifiableSet);
        zza(builder, "rdid", ((z3) y3Var.f1993b).P(), (Set<String>) setUnmodifiableSet);
        zza(builder, "bundle_id", y3Var.x(), (Set<String>) setUnmodifiableSet);
        String strN = p3Var.n();
        String strZza = zzji.zza(strN);
        if (!TextUtils.isEmpty(strZza)) {
            strN = strZza;
        }
        zza(builder, "app_event_name", strN, (Set<String>) setUnmodifiableSet);
        zza(builder, "app_version", String.valueOf(((z3) y3Var.f1993b).c0()), (Set<String>) setUnmodifiableSet);
        String strN2 = ((z3) y3Var.f1993b).N();
        if (zze().zze(str, zzfzVar) && zzm().zzs(str) && !TextUtils.isEmpty(strN2) && (iIndexOf = strN2.indexOf(".")) != -1) {
            strN2 = strN2.substring(0, iIndexOf);
        }
        zza(builder, "os_version", strN2, (Set<String>) setUnmodifiableSet);
        zza(builder, "timestamp", String.valueOf(p3Var.m()), (Set<String>) setUnmodifiableSet);
        String str4 = "1";
        if (((z3) y3Var.f1993b).X()) {
            zza(builder, "lat", "1", (Set<String>) setUnmodifiableSet);
        }
        zza(builder, "privacy_sandbox_version", String.valueOf(((z3) y3Var.f1993b).n()), (Set<String>) setUnmodifiableSet);
        zza(builder, "trigger_uri_source", "1", (Set<String>) setUnmodifiableSet);
        zza(builder, "trigger_uri_timestamp", String.valueOf(jCurrentTimeMillis), (Set<String>) setUnmodifiableSet);
        zza(builder, "request_uuid", str2, (Set<String>) setUnmodifiableSet);
        List<u3> listO = p3Var.o();
        Bundle bundle = new Bundle();
        for (u3 u3Var : listO) {
            String strC2 = u3Var.C();
            if (u3Var.F()) {
                bundle.putString(strC2, String.valueOf(u3Var.n()));
            } else if (u3Var.G()) {
                bundle.putString(strC2, String.valueOf(u3Var.u()));
            } else if (u3Var.J()) {
                bundle.putString(strC2, u3Var.D());
            } else if (u3Var.H()) {
                bundle.putString(strC2, String.valueOf(u3Var.z()));
            }
        }
        zza(builder, zze().zzd(str, zzbh.zzbf).split("\\|"), bundle, (Set<String>) setUnmodifiableSet);
        List<h4> listN = y3Var.n();
        Bundle bundle2 = new Bundle();
        for (h4 h4Var : listN) {
            String strA = h4Var.A();
            if (h4Var.C()) {
                bundle2.putString(strA, String.valueOf(h4Var.n()));
            } else if (h4Var.D()) {
                bundle2.putString(strA, String.valueOf(h4Var.s()));
            } else if (h4Var.G()) {
                bundle2.putString(strA, h4Var.B());
            } else if (h4Var.E()) {
                bundle2.putString(strA, String.valueOf(h4Var.w()));
            }
        }
        zza(builder, zze().zzd(str, zzbh.zzbe).split("\\|"), bundle2, (Set<String>) setUnmodifiableSet);
        if (!((z3) y3Var.f1993b).W()) {
            str4 = "0";
        }
        zza(builder, "dma", str4, (Set<String>) setUnmodifiableSet);
        if (!((z3) y3Var.f1993b).H().isEmpty()) {
            zza(builder, "dma_cps", ((z3) y3Var.f1993b).H(), (Set<String>) setUnmodifiableSet);
        }
        if (zze().zza(zzbh.zzcm) && ((z3) y3Var.f1993b).Z()) {
            h3 h3VarA2 = ((z3) y3Var.f1993b).a2();
            if (!h3VarA2.H().isEmpty()) {
                zza(builder, "dl_gclid", h3VarA2.H(), (Set<String>) setUnmodifiableSet);
            }
            if (!h3VarA2.G().isEmpty()) {
                zza(builder, "dl_gbraid", h3VarA2.G(), (Set<String>) setUnmodifiableSet);
            }
            if (!h3VarA2.D().isEmpty()) {
                zza(builder, "dl_gs", h3VarA2.D(), (Set<String>) setUnmodifiableSet);
            }
            if (h3VarA2.n() > 0) {
                zza(builder, "dl_ss_ts", String.valueOf(h3VarA2.n()), (Set<String>) setUnmodifiableSet);
            }
            if (!h3VarA2.K().isEmpty()) {
                zza(builder, "mr_gclid", h3VarA2.K(), (Set<String>) setUnmodifiableSet);
            }
            if (!h3VarA2.J().isEmpty()) {
                zza(builder, "mr_gbraid", h3VarA2.J(), (Set<String>) setUnmodifiableSet);
            }
            if (!h3VarA2.I().isEmpty()) {
                zza(builder, "mr_gs", h3VarA2.I(), (Set<String>) setUnmodifiableSet);
            }
            if (h3VarA2.r() > 0) {
                zza(builder, "mr_click_ts", String.valueOf(h3VarA2.r()), (Set<String>) setUnmodifiableSet);
            }
        }
        return new zzno(builder.build().toString(), jCurrentTimeMillis, 1);
    }

    public final q3 zza(zzbc zzbcVar) {
        p3 p3VarA = q3.A();
        long j3 = zzbcVar.zze;
        p3VarA.e();
        q3.q(j3, (q3) p3VarA.f1993b);
        for (String str : zzbcVar.zzf) {
            t3 t3VarB = u3.B();
            t3VarB.i(str);
            Object objZzc = zzbcVar.zzf.zzc(str);
            d0.h(objZzc);
            zza(t3VarB, objZzc);
            p3VarA.h(t3VarB);
        }
        if (zze().zza(zzbh.zzdi) && !TextUtils.isEmpty(zzbcVar.zzc) && zzbcVar.zzf.zzc("_o") == null) {
            t3 t3VarB2 = u3.B();
            t3VarB2.i("_o");
            t3VarB2.j(zzbcVar.zzc);
            p3VarA.i((u3) t3VarB2.c());
        }
        return (q3) p3VarA.c();
    }

    public static u3 zza(q3 q3Var, String str) {
        for (u3 u3Var : q3Var.C()) {
            if (u3Var.C().equals(str)) {
                return u3Var;
            }
        }
        return null;
    }

    public static Object zza(q3 q3Var, String str, Object obj) {
        Object objZzb = zzb(q3Var, str);
        return objZzb == null ? obj : objZzb;
    }

    public final String zza(x3 x3Var) {
        k3 k3VarB2;
        if (x3Var == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        ea.a();
        if (zze().zza(zzbh.zzbx) && x3Var.n() > 0) {
            zzq();
            if (zzos.zzf(x3Var.p().e2())) {
                if (x3Var.A()) {
                    zza(sb, 0, "upload_subdomain", x3Var.x());
                }
                if (x3Var.z()) {
                    zza(sb, 0, "sgtm_join_id", x3Var.w());
                }
            }
        }
        for (z3 z3Var : x3Var.y()) {
            if (z3Var != null) {
                zza(sb, 1);
                sb.append("bundle {\n");
                if (z3Var.z0()) {
                    zza(sb, 1, "protocol_version", Integer.valueOf(z3Var.e1()));
                }
                y9.f1998b.get();
                if (zze().zze(z3Var.e2(), zzbh.zzbw) && z3Var.C0()) {
                    zza(sb, 1, "session_stitching_token", z3Var.Q());
                }
                zza(sb, 1, MTPushConstants.PlatformNode.KEY_PLATFORM, z3Var.O());
                if (z3Var.u0()) {
                    zza(sb, 1, "gmp_version", Long.valueOf(z3Var.N1()));
                }
                if (z3Var.H0()) {
                    zza(sb, 1, "uploading_gmp_version", Long.valueOf(z3Var.Z1()));
                }
                if (z3Var.s0()) {
                    zza(sb, 1, "dynamite_version", Long.valueOf(z3Var.G1()));
                }
                if (z3Var.l0()) {
                    zza(sb, 1, "config_version", Long.valueOf(z3Var.y1()));
                }
                zza(sb, 1, "gmp_app_id", z3Var.L());
                zza(sb, 1, "admob_app_id", z3Var.d2());
                zza(sb, 1, "app_id", z3Var.e2());
                zza(sb, 1, "app_version", z3Var.E());
                if (z3Var.a0()) {
                    zza(sb, 1, "app_version_major", Integer.valueOf(z3Var.c0()));
                }
                zza(sb, 1, "firebase_instance_id", z3Var.K());
                if (z3Var.q0()) {
                    zza(sb, 1, "dev_cert_hash", Long.valueOf(z3Var.C1()));
                }
                zza(sb, 1, "app_store", z3Var.D());
                if (z3Var.G0()) {
                    zza(sb, 1, "upload_timestamp_millis", Long.valueOf(z3Var.X1()));
                }
                if (z3Var.D0()) {
                    zza(sb, 1, "start_timestamp_millis", Long.valueOf(z3Var.T1()));
                }
                if (z3Var.t0()) {
                    zza(sb, 1, "end_timestamp_millis", Long.valueOf(z3Var.K1()));
                }
                if (z3Var.y0()) {
                    zza(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(z3Var.R1()));
                }
                if (z3Var.x0()) {
                    zza(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(z3Var.P1()));
                }
                zza(sb, 1, "app_instance_id", z3Var.C());
                zza(sb, 1, "resettable_device_id", z3Var.P());
                zza(sb, 1, "ds_id", z3Var.J());
                if (z3Var.w0()) {
                    zza(sb, 1, "limited_ad_tracking", Boolean.valueOf(z3Var.X()));
                }
                zza(sb, 1, "os_version", z3Var.N());
                zza(sb, 1, "device_model", z3Var.I());
                zza(sb, 1, "user_default_language", z3Var.R());
                if (z3Var.F0()) {
                    zza(sb, 1, "time_zone_offset_minutes", Integer.valueOf(z3Var.o1()));
                }
                if (z3Var.k0()) {
                    zza(sb, 1, "bundle_sequential_index", Integer.valueOf(z3Var.I0()));
                }
                ea.a();
                zzq();
                if (zzos.zzf(z3Var.e2()) && zze().zza(zzbh.zzbx) && z3Var.p0()) {
                    zza(sb, 1, "delivery_index", Integer.valueOf(z3Var.R0()));
                }
                if (z3Var.B0()) {
                    zza(sb, 1, "service_upload", Boolean.valueOf(z3Var.Y()));
                }
                zza(sb, 1, "health_monitor", z3Var.M());
                if (z3Var.A0()) {
                    zza(sb, 1, "retry_counter", Integer.valueOf(z3Var.j1()));
                }
                if (z3Var.n0()) {
                    zza(sb, 1, "consent_signals", z3Var.G());
                }
                if (z3Var.v0()) {
                    zza(sb, 1, "is_dma_region", Boolean.valueOf(z3Var.W()));
                }
                if (z3Var.o0()) {
                    zza(sb, 1, "core_platform_services", z3Var.H());
                }
                if (z3Var.m0()) {
                    zza(sb, 1, "consent_diagnostics", z3Var.F());
                }
                if (z3Var.E0()) {
                    zza(sb, 1, "target_os_version", Long.valueOf(z3Var.V1()));
                }
                x9.a();
                if (zze().zze(z3Var.e2(), zzbh.zzch)) {
                    zza(sb, 1, "ad_services_version", Integer.valueOf(z3Var.n()));
                    if (z3Var.b0() && (k3VarB2 = z3Var.b2()) != null) {
                        zza(sb, 2);
                        sb.append("attribution_eligibility_status {\n");
                        zza(sb, 2, "eligible", Boolean.valueOf(k3VarB2.x()));
                        zza(sb, 2, "no_access_adservices_attribution_permission", Boolean.valueOf(k3VarB2.A()));
                        zza(sb, 2, "pre_r", Boolean.valueOf(k3VarB2.B()));
                        zza(sb, 2, "r_extensions_too_old", Boolean.valueOf(k3VarB2.C()));
                        zza(sb, 2, "adservices_extension_too_old", Boolean.valueOf(k3VarB2.v()));
                        zza(sb, 2, "ad_storage_not_allowed", Boolean.valueOf(k3VarB2.t()));
                        zza(sb, 2, "measurement_manager_disabled", Boolean.valueOf(k3VarB2.z()));
                        zza(sb, 2);
                        sb.append("}\n");
                    }
                }
                f9.a();
                if (zze().zza(zzbh.zzcu) && z3Var.Z()) {
                    h3 h3VarA2 = z3Var.a2();
                    zza(sb, 2);
                    sb.append("ad_campaign_info {\n");
                    if (h3VarA2.N()) {
                        zza(sb, 2, "deep_link_gclid", h3VarA2.H());
                    }
                    if (h3VarA2.M()) {
                        zza(sb, 2, "deep_link_gbraid", h3VarA2.G());
                    }
                    if (h3VarA2.L()) {
                        zza(sb, 2, "deep_link_gad_source", h3VarA2.D());
                    }
                    if (h3VarA2.O()) {
                        zza(sb, 2, "deep_link_session_millis", Long.valueOf(h3VarA2.n()));
                    }
                    if (h3VarA2.S()) {
                        zza(sb, 2, "market_referrer_gclid", h3VarA2.K());
                    }
                    if (h3VarA2.R()) {
                        zza(sb, 2, "market_referrer_gbraid", h3VarA2.J());
                    }
                    if (h3VarA2.Q()) {
                        zza(sb, 2, "market_referrer_gad_source", h3VarA2.I());
                    }
                    if (h3VarA2.P()) {
                        zza(sb, 2, "market_referrer_click_millis", Long.valueOf(h3VarA2.r()));
                    }
                    zza(sb, 2);
                    sb.append("}\n");
                }
                j6<h4> j6VarU = z3Var.U();
                if (j6VarU != null) {
                    for (h4 h4Var : j6VarU) {
                        if (h4Var != null) {
                            zza(sb, 2);
                            sb.append("user_property {\n");
                            zza(sb, 2, "set_timestamp_millis", h4Var.F() ? Long.valueOf(h4Var.y()) : null);
                            zza(sb, 2, "name", zzi().zzc(h4Var.A()));
                            zza(sb, 2, "string_value", h4Var.B());
                            zza(sb, 2, "int_value", h4Var.E() ? Long.valueOf(h4Var.w()) : null);
                            zza(sb, 2, "double_value", h4Var.C() ? Double.valueOf(h4Var.n()) : null);
                            zza(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                j6<m3> j6VarS = z3Var.S();
                if (j6VarS != null) {
                    for (m3 m3Var : j6VarS) {
                        if (m3Var != null) {
                            zza(sb, 2);
                            sb.append("audience_membership {\n");
                            if (m3Var.w()) {
                                zza(sb, 2, "audience_id", Integer.valueOf(m3Var.n()));
                            }
                            if (m3Var.x()) {
                                zza(sb, 2, "new_audience", Boolean.valueOf(m3Var.v()));
                            }
                            zza(sb, 2, "current_data", m3Var.t());
                            if (m3Var.y()) {
                                zza(sb, 2, "previous_data", m3Var.u());
                            }
                            zza(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                j6<q3> j6VarT = z3Var.T();
                if (j6VarT != null) {
                    for (q3 q3Var : j6VarT) {
                        if (q3Var != null) {
                            zza(sb, 2);
                            sb.append("event {\n");
                            zza(sb, 2, "name", zzi().zza(q3Var.B()));
                            if (q3Var.F()) {
                                zza(sb, 2, "timestamp_millis", Long.valueOf(q3Var.z()));
                            }
                            if (q3Var.E()) {
                                zza(sb, 2, "previous_timestamp_millis", Long.valueOf(q3Var.y()));
                            }
                            if (q3Var.D()) {
                                zza(sb, 2, MTPushConstants.Geofence.KEY_COUNT, Integer.valueOf(q3Var.n()));
                            }
                            if (q3Var.w() != 0) {
                                zza(sb, 2, q3Var.C());
                            }
                            zza(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                zza(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("} // End-of-batch\n");
        return sb.toString();
    }

    public final String zza(f2 f2Var) {
        if (f2Var == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (f2Var.A()) {
            zza(sb, 0, "filter_id", Integer.valueOf(f2Var.r()));
        }
        zza(sb, 0, "event_name", zzi().zza(f2Var.u()));
        String strZza = zza(f2Var.w(), f2Var.x(), f2Var.y());
        if (!strZza.isEmpty()) {
            zza(sb, 0, "filter_type", strZza);
        }
        if (f2Var.z()) {
            zza(sb, 1, "event_count_filter", f2Var.t());
        }
        if (f2Var.n() > 0) {
            sb.append("  filters {\n");
            Iterator it = f2Var.v().iterator();
            while (it.hasNext()) {
                zza(sb, 2, (h2) it.next());
            }
        }
        zza(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    private static String zza(boolean z5, boolean z8, boolean z9) {
        StringBuilder sb = new StringBuilder();
        if (z5) {
            sb.append("Dynamic ");
        }
        if (z8) {
            sb.append("Sequence ");
        }
        if (z9) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    public final String zza(l2 l2Var) {
        if (l2Var == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (l2Var.v()) {
            zza(sb, 0, "filter_id", Integer.valueOf(l2Var.n()));
        }
        zza(sb, 0, "property_name", zzi().zzc(l2Var.r()));
        String strZza = zza(l2Var.s(), l2Var.t(), l2Var.u());
        if (!strZza.isEmpty()) {
            zza(sb, 0, "filter_type", strZza);
        }
        zza(sb, 1, l2Var.p());
        sb.append("}\n");
        return sb.toString();
    }

    public final List<Long> zza(List<Long> list, List<Integer> list2) {
        int i6;
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                zzj().zzu().zza("Ignoring negative bit index to be cleared", num);
            } else {
                int iIntValue = num.intValue() / 64;
                if (iIntValue >= arrayList.size()) {
                    zzj().zzu().zza("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(iIntValue, Long.valueOf(((Long) arrayList.get(iIntValue)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i9 = size2;
            i6 = size;
            size = i9;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i6);
    }

    public static List<Long> zza(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i6 = 0; i6 < length; i6++) {
            long j3 = 0;
            for (int i9 = 0; i9 < 64; i9++) {
                int i10 = (i6 << 6) + i9;
                if (i10 < bitSet.length()) {
                    if (bitSet.get(i10)) {
                        j3 |= 1 << i9;
                    }
                }
            }
            arrayList.add(Long.valueOf(j3));
        }
        return arrayList;
    }

    public final Map<String, Object> zza(Bundle bundle, boolean z5) {
        HashMap map = new HashMap();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            boolean z8 = obj instanceof Parcelable[];
            if (z8 || (obj instanceof ArrayList) || (obj instanceof Bundle)) {
                if (z5) {
                    ArrayList arrayList = new ArrayList();
                    if (z8) {
                        for (Parcelable parcelable : (Parcelable[]) obj) {
                            if (parcelable instanceof Bundle) {
                                arrayList.add(zza((Bundle) parcelable, false));
                            }
                        }
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList2 = (ArrayList) obj;
                        int size = arrayList2.size();
                        int i6 = 0;
                        while (i6 < size) {
                            Object obj2 = arrayList2.get(i6);
                            i6++;
                            if (obj2 instanceof Bundle) {
                                arrayList.add(zza((Bundle) obj2, false));
                            }
                        }
                    } else if (obj instanceof Bundle) {
                        arrayList.add(zza((Bundle) obj, false));
                    }
                    map.put(str, arrayList);
                }
            } else if (obj != null) {
                map.put(str, obj);
            }
        }
        return map;
    }

    public static void zza(p3 p3Var, String str, Object obj) {
        List listO = p3Var.o();
        int i6 = 0;
        while (true) {
            if (i6 >= listO.size()) {
                i6 = -1;
                break;
            } else if (str.equals(((u3) listO.get(i6)).C())) {
                break;
            } else {
                i6++;
            }
        }
        t3 t3VarB = u3.B();
        t3VarB.i(str);
        if (obj instanceof Long) {
            t3VarB.h(((Long) obj).longValue());
        } else if (obj instanceof String) {
            t3VarB.j((String) obj);
        } else if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            t3VarB.e();
            u3.o((u3) t3VarB.f1993b, dDoubleValue);
        }
        if (i6 >= 0) {
            p3Var.e();
            q3.s((q3) p3Var.f1993b, i6, (u3) t3VarB.c());
        } else {
            p3Var.h(t3VarB);
        }
    }

    private static void zza(Uri.Builder builder, String[] strArr, Bundle bundle, Set<String> set) {
        for (String str : strArr) {
            String[] strArrSplit = str.split(",");
            String str2 = strArrSplit[0];
            String str3 = strArrSplit[strArrSplit.length - 1];
            String string = bundle.getString(str2);
            if (string != null) {
                zza(builder, str3, string, set);
            }
        }
    }

    private static void zza(StringBuilder sb, int i6, String str, d4 d4Var) {
        if (d4Var == null) {
            return;
        }
        zza(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (d4Var.q() != 0) {
            zza(sb, 4);
            sb.append("results: ");
            int i9 = 0;
            for (Long l4 : d4Var.C()) {
                int i10 = i9 + 1;
                if (i9 != 0) {
                    sb.append(", ");
                }
                sb.append(l4);
                i9 = i10;
            }
            sb.append('\n');
        }
        if (d4Var.w() != 0) {
            zza(sb, 4);
            sb.append("status: ");
            int i11 = 0;
            for (Long l8 : d4Var.E()) {
                int i12 = i11 + 1;
                if (i11 != 0) {
                    sb.append(", ");
                }
                sb.append(l8);
                i11 = i12;
            }
            sb.append('\n');
        }
        if (d4Var.n() != 0) {
            zza(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i13 = 0;
            for (o3 o3Var : d4Var.B()) {
                int i14 = i13 + 1;
                if (i13 != 0) {
                    sb.append(", ");
                }
                sb.append(o3Var.t() ? Integer.valueOf(o3Var.n()) : null);
                sb.append(":");
                sb.append(o3Var.s() ? Long.valueOf(o3Var.q()) : null);
                i13 = i14;
            }
            sb.append("}\n");
        }
        if (d4Var.t() != 0) {
            zza(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i15 = 0;
            for (f4 f4Var : d4Var.D()) {
                int i16 = i15 + 1;
                if (i15 != 0) {
                    sb.append(", ");
                }
                sb.append(f4Var.u() ? Integer.valueOf(f4Var.r()) : null);
                sb.append(": [");
                Iterator it = f4Var.t().iterator();
                int i17 = 0;
                while (it.hasNext()) {
                    long jLongValue = ((Long) it.next()).longValue();
                    int i18 = i17 + 1;
                    if (i17 != 0) {
                        sb.append(", ");
                    }
                    sb.append(jLongValue);
                    i17 = i18;
                }
                sb.append("]");
                i15 = i16;
            }
            sb.append("}\n");
        }
        zza(sb, 3);
        sb.append("}\n");
    }

    private final void zza(StringBuilder sb, int i6, List<u3> list) {
        if (list == null) {
            return;
        }
        int i9 = i6 + 1;
        for (u3 u3Var : list) {
            if (u3Var != null) {
                zza(sb, i9);
                sb.append("param {\n");
                zza(sb, i9, "name", u3Var.I() ? zzi().zzb(u3Var.C()) : null);
                zza(sb, i9, "string_value", u3Var.J() ? u3Var.D() : null);
                zza(sb, i9, "int_value", u3Var.H() ? Long.valueOf(u3Var.z()) : null);
                zza(sb, i9, "double_value", u3Var.F() ? Double.valueOf(u3Var.n()) : null);
                if (u3Var.x() > 0) {
                    zza(sb, i9, (List<u3>) u3Var.E());
                }
                zza(sb, i9);
                sb.append("}\n");
            }
        }
    }

    private final void zza(StringBuilder sb, int i6, h2 h2Var) {
        if (h2Var == null) {
            return;
        }
        zza(sb, i6);
        sb.append("filter {\n");
        if (h2Var.t()) {
            zza(sb, i6, "complement", Boolean.valueOf(h2Var.s()));
        }
        if (h2Var.v()) {
            zza(sb, i6, "param_name", zzi().zzb(h2Var.r()));
        }
        if (h2Var.w()) {
            int i9 = i6 + 1;
            n2 n2VarQ = h2Var.q();
            if (n2VarQ != null) {
                zza(sb, i9);
                sb.append("string_filter");
                sb.append(" {\n");
                if (n2VarQ.v()) {
                    zza(sb, i9, "match_type", n2VarQ.o().name());
                }
                if (n2VarQ.u()) {
                    zza(sb, i9, "expression", n2VarQ.q());
                }
                if (n2VarQ.t()) {
                    zza(sb, i9, "case_sensitive", Boolean.valueOf(n2VarQ.s()));
                }
                if (n2VarQ.n() > 0) {
                    zza(sb, i6 + 2);
                    sb.append("expression_list {\n");
                    for (String str : n2VarQ.r()) {
                        zza(sb, i6 + 3);
                        sb.append(str);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                zza(sb, i9);
                sb.append("}\n");
            }
        }
        if (h2Var.u()) {
            zza(sb, i6 + 1, "number_filter", h2Var.p());
        }
        zza(sb, i6);
        sb.append("}\n");
    }

    private static void zza(StringBuilder sb, int i6) {
        for (int i9 = 0; i9 < i6; i9++) {
            sb.append("  ");
        }
    }

    private static void zza(StringBuilder sb, int i6, String str, j2 j2Var) {
        String str2;
        if (j2Var == null) {
            return;
        }
        zza(sb, i6);
        sb.append(str);
        sb.append(" {\n");
        if (j2Var.t()) {
            int iN = j2Var.n();
            if (iN == 1) {
                str2 = "UNKNOWN_COMPARISON_TYPE";
            } else if (iN == 2) {
                str2 = "LESS_THAN";
            } else if (iN == 3) {
                str2 = "GREATER_THAN";
            } else if (iN == 4) {
                str2 = "EQUAL";
            } else {
                if (iN != 5) {
                    throw null;
                }
                str2 = "BETWEEN";
            }
            zza(sb, i6, "comparison_type", str2);
        }
        if (j2Var.v()) {
            zza(sb, i6, "match_as_float", Boolean.valueOf(j2Var.s()));
        }
        if (j2Var.u()) {
            zza(sb, i6, "comparison_value", j2Var.p());
        }
        if (j2Var.x()) {
            zza(sb, i6, "min_comparison_value", j2Var.r());
        }
        if (j2Var.w()) {
            zza(sb, i6, "max_comparison_value", j2Var.q());
        }
        zza(sb, i6);
        sb.append("}\n");
    }

    private static void zza(Uri.Builder builder, String str, String str2, Set<String> set) {
        if (set.contains(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }

    private static void zza(StringBuilder sb, int i6, String str, Object obj) {
        if (obj == null) {
            return;
        }
        zza(sb, i6 + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    public final void zza(t3 t3Var, Object obj) {
        d0.h(obj);
        t3Var.e();
        u3.A((u3) t3Var.f1993b);
        t3Var.e();
        u3.v((u3) t3Var.f1993b);
        t3Var.e();
        u3.t((u3) t3Var.f1993b);
        t3Var.e();
        u3.y((u3) t3Var.f1993b);
        if (obj instanceof String) {
            t3Var.j((String) obj);
            return;
        }
        if (obj instanceof Long) {
            t3Var.h(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            t3Var.e();
            u3.o((u3) t3Var.f1993b, dDoubleValue);
            return;
        }
        if (obj instanceof Bundle[]) {
            ArrayList arrayList = new ArrayList();
            for (Bundle bundle : (Bundle[]) obj) {
                if (bundle != null) {
                    t3 t3VarB = u3.B();
                    for (String str : bundle.keySet()) {
                        t3 t3VarB2 = u3.B();
                        t3VarB2.i(str);
                        Object obj2 = bundle.get(str);
                        if (obj2 instanceof Long) {
                            t3VarB2.h(((Long) obj2).longValue());
                        } else if (obj2 instanceof String) {
                            t3VarB2.j((String) obj2);
                        } else if (obj2 instanceof Double) {
                            double dDoubleValue2 = ((Double) obj2).doubleValue();
                            t3VarB2.e();
                            u3.o((u3) t3VarB2.f1993b, dDoubleValue2);
                        }
                        t3VarB.e();
                        u3.q((u3) t3VarB.f1993b, (u3) t3VarB2.c());
                    }
                    if (((u3) t3VarB.f1993b).x() > 0) {
                        arrayList.add((u3) t3VarB.c());
                    }
                }
            }
            t3Var.e();
            u3.s((u3) t3Var.f1993b, arrayList);
            return;
        }
        zzj().zzg().zza("Ignoring invalid (type) event param value", obj);
    }

    public final void zza(g4 g4Var, Object obj) {
        d0.h(obj);
        g4Var.e();
        h4.x((h4) g4Var.f1993b);
        g4Var.e();
        h4.t((h4) g4Var.f1993b);
        g4Var.e();
        h4.r((h4) g4Var.f1993b);
        if (obj instanceof String) {
            g4Var.e();
            h4.v((h4) g4Var.f1993b, (String) obj);
        } else if (obj instanceof Long) {
            long jLongValue = ((Long) obj).longValue();
            g4Var.e();
            h4.p((h4) g4Var.f1993b, jLongValue);
        } else {
            if (obj instanceof Double) {
                double dDoubleValue = ((Double) obj).doubleValue();
                g4Var.e();
                h4.o((h4) g4Var.f1993b, dDoubleValue);
                return;
            }
            zzj().zzg().zza("Ignoring invalid (type) user attribute value", obj);
        }
    }

    public static boolean zza(zzbf zzbfVar, zzo zzoVar) {
        d0.h(zzbfVar);
        d0.h(zzoVar);
        return (TextUtils.isEmpty(zzoVar.zzb) && TextUtils.isEmpty(zzoVar.zzp)) ? false : true;
    }

    public static boolean zza(List<Long> list, int i6) {
        if (i6 < (list.size() << 6)) {
            return ((1 << (i6 % 64)) & list.get(i6 / 64).longValue()) != 0;
        }
        return false;
    }

    public final boolean zza(long j3, long j8) {
        if (j3 == 0 || j8 <= 0) {
            return true;
        }
        ((b4.b) zzb()).getClass();
        return Math.abs(System.currentTimeMillis() - j3) > j8;
    }
}
