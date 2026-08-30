package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import b4.b;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.a4;
import com.google.android.gms.internal.measurement.b4;
import com.google.android.gms.internal.measurement.f9;
import com.google.android.gms.internal.measurement.g4;
import com.google.android.gms.internal.measurement.h4;
import com.google.android.gms.internal.measurement.m3;
import com.google.android.gms.internal.measurement.p3;
import com.google.android.gms.internal.measurement.q3;
import com.google.android.gms.internal.measurement.r3;
import com.google.android.gms.internal.measurement.s3;
import com.google.android.gms.internal.measurement.t3;
import com.google.android.gms.internal.measurement.u3;
import com.google.android.gms.internal.measurement.w3;
import com.google.android.gms.internal.measurement.x3;
import com.google.android.gms.internal.measurement.y3;
import com.google.android.gms.internal.measurement.y9;
import com.google.android.gms.internal.measurement.z3;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzli extends zznr {
    public zzli(zznv zznvVar) {
        super(zznvVar);
    }

    private static String zza(String str, String str2) {
        throw new SecurityException("This implementation should not be used.");
    }

    @Override // com.google.android.gms.measurement.internal.zznr
    public final boolean zzc() {
        return false;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final byte[] zza(zzbf zzbfVar, String str) {
        zzop next;
        Bundle bundle;
        w3 w3Var;
        zzg zzgVar;
        y3 y3Var;
        byte[] bArr;
        zzbb zzbbVarZza;
        long j3;
        zzt();
        this.zzu.zzy();
        d0.h(zzbfVar);
        d0.d(str);
        if (!zze().zze(str, zzbh.zzbl)) {
            zzj().zzc().zza("Generating ScionPayload disabled. packageName", str);
            return new byte[0];
        }
        if (!"_iap".equals(zzbfVar.zza) && !"_iapx".equals(zzbfVar.zza)) {
            zzj().zzc().zza("Generating a payload for this event is not available. package_name, event_name", str, zzbfVar.zza);
            return null;
        }
        w3 w3VarV = x3.v();
        zzh().zzp();
        try {
            zzg zzgVarZze = zzh().zze(str);
            if (zzgVarZze == null) {
                zzj().zzc().zza("Log and bundle not available. package_name", str);
                return new byte[0];
            }
            if (!zzgVarZze.zzar()) {
                zzj().zzc().zza("Log and bundle disabled. package_name", str);
                return new byte[0];
            }
            y3 y3VarC2 = z3.c2();
            y3VarC2.e();
            z3.n1((z3) y3VarC2.f1993b);
            y3VarC2.e();
            z3.S1((z3) y3VarC2.f1993b);
            if (!TextUtils.isEmpty(zzgVarZze.zzac())) {
                String strZzac = zzgVarZze.zzac();
                y3VarC2.e();
                z3.h0((z3) y3VarC2.f1993b, strZzac);
            }
            if (!TextUtils.isEmpty(zzgVarZze.zzae())) {
                String strZzae = zzgVarZze.zzae();
                d0.h(strZzae);
                y3VarC2.e();
                z3.V0((z3) y3VarC2.f1993b, strZzae);
            }
            if (!TextUtils.isEmpty(zzgVarZze.zzaf())) {
                String strZzaf = zzgVarZze.zzaf();
                d0.h(strZzaf);
                y3VarC2.e();
                z3.c1((z3) y3VarC2.f1993b, strZzaf);
            }
            if (zzgVarZze.zze() != -2147483648L) {
                int iZze = (int) zzgVarZze.zze();
                y3VarC2.e();
                z3.T0((z3) y3VarC2.f1993b, iZze);
            }
            long jZzq = zzgVarZze.zzq();
            y3VarC2.e();
            z3.h1((z3) y3VarC2.f1993b, jZzq);
            long jZzo = zzgVarZze.zzo();
            y3VarC2.e();
            z3.U0((z3) y3VarC2.f1993b, jZzo);
            String strZzah = zzgVarZze.zzah();
            String strZzaa = zzgVarZze.zzaa();
            if (!TextUtils.isEmpty(strZzah)) {
                y3VarC2.e();
                z3.M1((z3) y3VarC2.f1993b, strZzah);
            } else if (!TextUtils.isEmpty(strZzaa)) {
                y3VarC2.e();
                z3.A((z3) y3VarC2.f1993b, strZzaa);
            }
            long jZzw = zzgVarZze.zzw();
            y3VarC2.e();
            z3.A1((z3) y3VarC2.f1993b, jZzw);
            zzje zzjeVarZzb = this.zzg.zzb(str);
            long jZzn = zzgVarZze.zzn();
            y3VarC2.e();
            z3.L0((z3) y3VarC2.f1993b, jZzn);
            if (this.zzu.zzac() && zze().zzj(y3VarC2.x()) && zzjeVarZzb.zzg() && !TextUtils.isEmpty(null)) {
                y3VarC2.e();
                z3.B1((z3) y3VarC2.f1993b, null);
                throw null;
            }
            String strZze = zzjeVarZzb.zze();
            y3VarC2.e();
            z3.m1((z3) y3VarC2.f1993b, strZze);
            if (zzjeVarZzb.zzg() && zzgVarZze.zzaq()) {
                Pair<String, Boolean> pairZza = zzn().zza(zzgVarZze.zzac(), zzjeVarZzb);
                if (zzgVarZze.zzaq() && pairZza != null && !TextUtils.isEmpty((CharSequence) pairZza.first)) {
                    String strZza = zza((String) pairZza.first, Long.toString(zzbfVar.zzd));
                    y3VarC2.e();
                    z3.U1((z3) y3VarC2.f1993b, strZza);
                    Object obj = pairZza.second;
                    if (obj != null) {
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        y3VarC2.e();
                        z3.O0((z3) y3VarC2.f1993b, zBooleanValue);
                    }
                }
            }
            zzf().zzac();
            String str2 = Build.MODEL;
            y3VarC2.e();
            z3.x1((z3) y3VarC2.f1993b);
            zzf().zzac();
            String str3 = Build.VERSION.RELEASE;
            y3VarC2.e();
            z3.Q1((z3) y3VarC2.f1993b, str3);
            int iZzc = (int) zzf().zzc();
            y3VarC2.e();
            z3.v1((z3) y3VarC2.f1993b, iZzc);
            String strZzg = zzf().zzg();
            y3VarC2.e();
            z3.Y1((z3) y3VarC2.f1993b, strZzg);
            if (zzjeVarZzb.zzh() && zzgVarZze.zzad() != null) {
                String strZzad = zzgVarZze.zzad();
                d0.h(strZzad);
                String strZza2 = zza(strZzad, Long.toString(zzbfVar.zzd));
                y3VarC2.e();
                z3.M0((z3) y3VarC2.f1993b, strZza2);
            }
            if (!TextUtils.isEmpty(zzgVarZze.zzag())) {
                String strZzag = zzgVarZze.zzag();
                d0.h(strZzag);
                y3VarC2.e();
                z3.I1((z3) y3VarC2.f1993b, strZzag);
            }
            String strZzac2 = zzgVarZze.zzac();
            List<zzop> listZzl = zzh().zzl(strZzac2);
            Iterator<zzop> it = listZzl.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if ("_lte".equals(next.zzc)) {
                    break;
                }
            }
            if (next == null || next.zze == null) {
                ((b) zzb()).getClass();
                zzop zzopVar = new zzop(strZzac2, "auto", "_lte", System.currentTimeMillis(), 0L);
                listZzl.add(zzopVar);
                zzh().zza(zzopVar);
            }
            h4[] h4VarArr = new h4[listZzl.size()];
            for (int i6 = 0; i6 < listZzl.size(); i6++) {
                g4 g4VarZ = h4.z();
                String str4 = listZzl.get(i6).zzc;
                g4VarZ.e();
                h4.q((h4) g4VarZ.f1993b, str4);
                long j8 = listZzl.get(i6).zzd;
                g4VarZ.e();
                h4.u((h4) g4VarZ.f1993b, j8);
                g_().zza(g4VarZ, listZzl.get(i6).zze);
                h4VarArr[i6] = (h4) g4VarZ.c();
            }
            List listAsList = Arrays.asList(h4VarArr);
            y3VarC2.e();
            z3.d1((z3) y3VarC2.f1993b, listAsList);
            this.zzg.zza(zzgVarZze, y3VarC2);
            f9.a();
            if (zze().zza(zzbh.zzcu)) {
                this.zzg.zzb(zzgVarZze, y3VarC2);
            }
            zzgs zzgsVarZza = zzgs.zza(zzbfVar);
            zzq().zza(zzgsVarZza.zzc, zzh().zzd(str));
            zzq().zza(zzgsVarZza, zze().zzb(str));
            Bundle bundle2 = zzgsVarZza.zzc;
            bundle2.putLong("_c", 1L);
            zzj().zzc().zza("Marking in-app purchase as real-time");
            bundle2.putLong("_r", 1L);
            bundle2.putString("_o", zzbfVar.zzc);
            if (zzq().zzd(y3VarC2.x(), zzgVarZze.zzam())) {
                zzq().zza(bundle2, "_dbg", (Object) 1L);
                zzq().zza(bundle2, "_r", (Object) 1L);
            }
            zzbb zzbbVarZzd = zzh().zzd(str, zzbfVar.zza);
            if (zzbbVarZzd == null) {
                y3Var = y3VarC2;
                bundle = bundle2;
                zzgVar = zzgVarZze;
                w3Var = w3VarV;
                bArr = null;
                zzbbVarZza = new zzbb(str, zzbfVar.zza, 0L, 0L, zzbfVar.zzd, 0L, null, null, null, null);
                j3 = 0;
            } else {
                bundle = bundle2;
                w3Var = w3VarV;
                zzgVar = zzgVarZze;
                y3Var = y3VarC2;
                bArr = null;
                long j9 = zzbbVarZzd.zzf;
                zzbbVarZza = zzbbVarZzd.zza(zzbfVar.zzd);
                j3 = j9;
            }
            zzbb zzbbVar = zzbbVarZza;
            zzh().zza(zzbbVar);
            zzbc zzbcVar = new zzbc(this.zzu, zzbfVar.zzc, str, zzbfVar.zza, zzbfVar.zzd, j3, bundle);
            p3 p3VarA = q3.A();
            long j10 = zzbcVar.zzd;
            p3VarA.e();
            q3.x(j10, (q3) p3VarA.f1993b);
            p3VarA.j(zzbcVar.zzb);
            long j11 = zzbcVar.zze;
            p3VarA.e();
            q3.q(j11, (q3) p3VarA.f1993b);
            for (String str5 : zzbcVar.zzf) {
                t3 t3VarB = u3.B();
                t3VarB.i(str5);
                Object objZzc = zzbcVar.zzf.zzc(str5);
                if (objZzc != null) {
                    g_().zza(t3VarB, objZzc);
                    p3VarA.h(t3VarB);
                }
            }
            y3Var.e();
            y3 y3Var2 = y3Var;
            z3.w((z3) y3Var2.f1993b, (q3) p3VarA.c());
            a4 a4VarO = b4.o();
            r3 r3VarP = s3.p();
            long j12 = zzbbVar.zzc;
            r3VarP.e();
            s3.n((s3) r3VarP.f1993b, j12);
            String str6 = zzbfVar.zza;
            r3VarP.e();
            s3.o((s3) r3VarP.f1993b, str6);
            a4VarO.e();
            b4.n((b4) a4VarO.f1993b, (s3) r3VarP.c());
            y3Var2.e();
            z3.x((z3) y3Var2.f1993b, (b4) a4VarO.c());
            List<m3> listZza = zzg().zza(zzgVar.zzac(), Collections.EMPTY_LIST, y3Var2.n(), Long.valueOf(p3VarA.m()), Long.valueOf(p3VarA.m()));
            y3Var2.e();
            z3.z((z3) y3Var2.f1993b, listZza);
            if (((q3) p3VarA.f1993b).F()) {
                long jM = p3VarA.m();
                y3Var2.e();
                z3.w1((z3) y3Var2.f1993b, jM);
                long jM2 = p3VarA.m();
                y3Var2.e();
                z3.b1((z3) y3Var2.f1993b, jM2);
            }
            long jZzs = zzgVar.zzs();
            if (jZzs != 0) {
                y3Var2.e();
                z3.l1((z3) y3Var2.f1993b, jZzs);
            }
            long jZzu = zzgVar.zzu();
            if (jZzu != 0) {
                y3Var2.e();
                z3.r1((z3) y3Var2.f1993b, jZzu);
            } else if (jZzs != 0) {
                y3Var2.e();
                z3.r1((z3) y3Var2.f1993b, jZzs);
            }
            String strZzal = zzgVar.zzal();
            y9.f1998b.get();
            if (zze().zze(str, zzbh.zzbw) && strZzal != null) {
                y3Var2.e();
                z3.W1((z3) y3Var2.f1993b, strZzal);
            }
            zzgVar.zzap();
            int iZzt = (int) zzgVar.zzt();
            y3Var2.e();
            z3.a1((z3) y3Var2.f1993b, iZzt);
            y3Var2.e();
            z3.J1((z3) y3Var2.f1993b);
            ((b) zzb()).getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            y3Var2.e();
            z3.E1((z3) y3Var2.f1993b, jCurrentTimeMillis);
            y3Var2.e();
            z3.X0((z3) y3Var2.f1993b, true);
            this.zzg.zza(y3Var2.x(), y3Var2);
            w3 w3Var2 = w3Var;
            w3Var2.h(y3Var2);
            zzg zzgVar2 = zzgVar;
            zzgVar2.zzr(((z3) y3Var2.f1993b).T1());
            zzgVar2.zzp(((z3) y3Var2.f1993b).K1());
            zzh().zza(zzgVar2, false, false);
            zzh().zzw();
            try {
                return g_().zzb(((x3) w3Var2.c()).c());
            } catch (IOException e9) {
                zzj().zzg().zza("Data loss. Failed to bundle and serialize. appId", zzgo.zza(str), e9);
                return bArr;
            }
        } catch (SecurityException e10) {
            zzj().zzc().zza("Resettable device id encryption failed", e10.getMessage());
            return new byte[0];
        } catch (SecurityException e11) {
            zzj().zzc().zza("app instance id encryption failed", e11.getMessage());
            return new byte[0];
        } finally {
            zzh().zzu();
        }
    }
}
