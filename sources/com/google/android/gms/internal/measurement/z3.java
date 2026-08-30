package com.google.android.gms.internal.measurement;

import android.os.Build;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class z3 extends z5 {
    private static final z3 zzc;
    private static volatile w6 zzd;
    private String zzaa;
    private long zzab;
    private int zzac;
    private String zzad;
    private String zzae;
    private boolean zzaf;
    private j6 zzag;
    private String zzah;
    private int zzai;
    private int zzaj;
    private int zzak;
    private String zzal;
    private long zzam;
    private long zzan;
    private String zzao;
    private String zzap;
    private int zzaq;
    private String zzar;
    private b4 zzas;
    private h6 zzat;
    private long zzau;
    private long zzav;
    private String zzaw;
    private String zzax;
    private int zzay;
    private boolean zzaz;
    private String zzba;
    private boolean zzbb;
    private v3 zzbc;
    private String zzbd;
    private j6 zzbe;
    private String zzbf;
    private long zzbg;
    private boolean zzbh;
    private String zzbi;
    private boolean zzbj;
    private String zzbk;
    private int zzbl;
    private String zzbm;
    private k3 zzbn;
    private int zzbo;
    private h3 zzbp;
    private String zzbq;
    private int zze;
    private int zzf;
    private int zzg;
    private j6 zzh;
    private j6 zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private String zzo;
    private String zzp;
    private String zzq;
    private String zzr;
    private int zzs;
    private String zzt;
    private String zzu;
    private String zzv;
    private long zzw;
    private long zzx;
    private String zzy;
    private boolean zzz;

    static {
        z3 z3Var = new z3();
        zzc = z3Var;
        z5.g(z3.class, z3Var);
    }

    public z3() {
        y6 y6Var = y6.f1995e;
        this.zzh = y6Var;
        this.zzi = y6Var;
        this.zzo = "";
        this.zzp = "";
        this.zzq = "";
        this.zzr = "";
        this.zzt = "";
        this.zzu = "";
        this.zzv = "";
        this.zzy = "";
        this.zzaa = "";
        this.zzad = "";
        this.zzae = "";
        this.zzag = y6Var;
        this.zzah = "";
        this.zzal = "";
        this.zzao = "";
        this.zzap = "";
        this.zzar = "";
        this.zzat = c6.f1546e;
        this.zzaw = "";
        this.zzax = "";
        this.zzba = "";
        this.zzbd = "";
        this.zzbe = y6Var;
        this.zzbf = "";
        this.zzbi = "";
        this.zzbk = "";
        this.zzbm = "";
        this.zzbq = "";
    }

    public static /* synthetic */ void A(z3 z3Var, String str) {
        str.getClass();
        z3Var.zzf |= 4;
        z3Var.zzar = str;
    }

    public static /* synthetic */ void A1(z3 z3Var, long j3) {
        z3Var.zzf |= 32768;
        z3Var.zzbg = j3;
    }

    public static /* synthetic */ void B(z3 z3Var, boolean z5) {
        z3Var.zzf |= 65536;
        z3Var.zzbh = z5;
    }

    public static /* synthetic */ void B1(z3 z3Var, String str) {
        str.getClass();
        z3Var.zze |= Integer.MIN_VALUE;
        z3Var.zzao = str;
    }

    public static /* synthetic */ void D1(z3 z3Var) {
        z3Var.zze &= -65537;
        z3Var.zzy = zzc.zzy;
    }

    public static /* synthetic */ void E1(z3 z3Var, long j3) {
        z3Var.zze |= 2;
        z3Var.zzj = j3;
    }

    public static /* synthetic */ void F1(z3 z3Var, String str) {
        str.getClass();
        z3Var.zzf |= 16384;
        z3Var.zzbf = str;
    }

    public static /* synthetic */ void H1(z3 z3Var) {
        z3Var.zzf &= -8193;
        z3Var.zzbd = zzc.zzbd;
    }

    public static /* synthetic */ void I1(z3 z3Var, String str) {
        z3Var.zze |= 16777216;
        z3Var.zzah = str;
    }

    public static void J0(z3 z3Var) {
        z3Var.zzag = y6.f1995e;
    }

    public static /* synthetic */ void J1(z3 z3Var) {
        z3Var.zze |= 32768;
        z3Var.zzx = 106000L;
    }

    public static /* synthetic */ void K0(z3 z3Var, int i6) {
        z3Var.zzf |= 1048576;
        z3Var.zzbl = i6;
    }

    public static /* synthetic */ void L0(z3 z3Var, long j3) {
        z3Var.zze |= 524288;
        z3Var.zzab = j3;
    }

    public static /* synthetic */ void L1(z3 z3Var) {
        z3Var.zze &= -268435457;
        z3Var.zzal = zzc.zzal;
    }

    public static /* synthetic */ void M0(z3 z3Var, String str) {
        str.getClass();
        z3Var.zze |= 262144;
        z3Var.zzaa = str;
    }

    public static /* synthetic */ void M1(z3 z3Var, String str) {
        str.getClass();
        z3Var.zze |= 4194304;
        z3Var.zzae = str;
    }

    public static void N0(z3 z3Var, List list) {
        List list2 = z3Var.zzat;
        if (!((j5) list2).f1685a) {
            z3Var.zzat = ((c6) list2).zza(list2.size() << 1);
        }
        i5.b(list, z3Var.zzat);
    }

    public static /* synthetic */ void O0(z3 z3Var, boolean z5) {
        z3Var.zze |= 131072;
        z3Var.zzz = z5;
    }

    public static /* synthetic */ void O1(z3 z3Var, String str) {
        z3Var.zze |= 2097152;
        z3Var.zzad = str;
    }

    public static /* synthetic */ void Q1(z3 z3Var, String str) {
        str.getClass();
        z3Var.zze |= 128;
        z3Var.zzp = str;
    }

    public static /* synthetic */ void S0(z3 z3Var) {
        z3Var.zze &= -257;
        z3Var.zzq = zzc.zzq;
    }

    public static /* synthetic */ void S1(z3 z3Var) {
        z3Var.zze |= 64;
        z3Var.zzo = "android";
    }

    public static /* synthetic */ void T0(z3 z3Var, int i6) {
        z3Var.zze |= 33554432;
        z3Var.zzai = i6;
    }

    public static /* synthetic */ void U0(z3 z3Var, long j3) {
        z3Var.zzf |= 16;
        z3Var.zzau = j3;
    }

    public static /* synthetic */ void U1(z3 z3Var, String str) {
        str.getClass();
        z3Var.zze |= 65536;
        z3Var.zzy = str;
    }

    public static /* synthetic */ void V0(z3 z3Var, String str) {
        str.getClass();
        z3Var.zze |= 2048;
        z3Var.zzt = str;
    }

    public static void W0(z3 z3Var, Set set) {
        j6 j6Var = z3Var.zzbe;
        if (!((j5) j6Var).f1685a) {
            z3Var.zzbe = j6Var.zza(j6Var.size() << 1);
        }
        i5.b(set, z3Var.zzbe);
    }

    public static /* synthetic */ void W1(z3 z3Var, String str) {
        str.getClass();
        z3Var.zzf |= 8192;
        z3Var.zzbd = str;
    }

    public static /* synthetic */ void X0(z3 z3Var, boolean z5) {
        z3Var.zze |= 8388608;
        z3Var.zzaf = z5;
    }

    public static /* synthetic */ void Y1(z3 z3Var, String str) {
        str.getClass();
        z3Var.zze |= 512;
        z3Var.zzr = str;
    }

    public static /* synthetic */ void Z0(z3 z3Var) {
        z3Var.zze &= Integer.MAX_VALUE;
        z3Var.zzao = zzc.zzao;
    }

    public static /* synthetic */ void a1(z3 z3Var, int i6) {
        z3Var.zze |= 1048576;
        z3Var.zzac = i6;
    }

    public static /* synthetic */ void b1(z3 z3Var, long j3) {
        z3Var.zze |= 8;
        z3Var.zzl = j3;
    }

    public static /* synthetic */ void c1(z3 z3Var, String str) {
        str.getClass();
        z3Var.zze |= 8192;
        z3Var.zzv = str;
    }

    public static y3 c2() {
        return (y3) zzc.j();
    }

    public static /* synthetic */ void d1(z3 z3Var, List list) {
        z3Var.Q0();
        i5.b(list, z3Var.zzi);
    }

    public static /* synthetic */ void e0(z3 z3Var) {
        z3Var.zze &= -262145;
        z3Var.zzaa = zzc.zzaa;
    }

    public static /* synthetic */ void f0(z3 z3Var, int i6) {
        z3Var.Q0();
        z3Var.zzi.remove(i6);
    }

    public static void f1(z3 z3Var) {
        z3Var.zzh = y6.f1995e;
    }

    public static /* synthetic */ void g0(z3 z3Var, long j3) {
        z3Var.zze |= 536870912;
        z3Var.zzam = j3;
    }

    public static /* synthetic */ void g1(z3 z3Var, int i6) {
        z3Var.zzf |= 8388608;
        z3Var.zzbo = i6;
    }

    public static /* synthetic */ void h0(z3 z3Var, String str) {
        str.getClass();
        z3Var.zze |= 4096;
        z3Var.zzu = str;
    }

    public static /* synthetic */ void h1(z3 z3Var, long j3) {
        z3Var.zze |= 16384;
        z3Var.zzw = j3;
    }

    public static /* synthetic */ void i0(z3 z3Var, ArrayList arrayList) {
        z3Var.P0();
        i5.b(arrayList, z3Var.zzh);
    }

    public static /* synthetic */ void i1(z3 z3Var, String str) {
        str.getClass();
        z3Var.zzf |= 131072;
        z3Var.zzbi = str;
    }

    public static /* synthetic */ void j0(z3 z3Var, boolean z5) {
        z3Var.zzf |= 262144;
        z3Var.zzbj = z5;
    }

    public static /* synthetic */ void k1(z3 z3Var) {
        z3Var.zze &= -2097153;
        z3Var.zzad = zzc.zzad;
    }

    public static /* synthetic */ void l1(z3 z3Var, long j3) {
        z3Var.zze |= 32;
        z3Var.zzn = j3;
    }

    public static /* synthetic */ void m1(z3 z3Var, String str) {
        str.getClass();
        z3Var.zzf |= 128;
        z3Var.zzax = str;
    }

    public static /* synthetic */ void n1(z3 z3Var) {
        z3Var.zze |= 1;
        z3Var.zzg = 1;
    }

    public static y3 p(z3 z3Var) {
        y5 y5VarJ = zzc.j();
        if (!y5VarJ.f1992a.equals(z3Var)) {
            if (!y5VarJ.f1993b.m()) {
                y5VarJ.f();
            }
            y5.a(y5VarJ.f1993b, z3Var);
        }
        return (y3) y5VarJ;
    }

    public static /* synthetic */ void p1(z3 z3Var) {
        z3Var.zze &= -131073;
        z3Var.zzz = false;
    }

    public static /* synthetic */ void q(z3 z3Var, int i6) {
        z3Var.P0();
        z3Var.zzh.remove(i6);
    }

    public static /* synthetic */ void q1(z3 z3Var, int i6) {
        z3Var.zzf |= 2;
        z3Var.zzaq = i6;
    }

    public static /* synthetic */ void r(z3 z3Var, int i6, q3 q3Var) {
        z3Var.P0();
        z3Var.zzh.set(i6, q3Var);
    }

    public static /* synthetic */ void r1(z3 z3Var, long j3) {
        z3Var.zze |= 16;
        z3Var.zzm = j3;
    }

    public static /* synthetic */ void s(z3 z3Var, int i6, h4 h4Var) {
        z3Var.Q0();
        z3Var.zzi.set(i6, h4Var);
    }

    public static /* synthetic */ void s1(z3 z3Var, String str) {
        str.getClass();
        z3Var.zzf |= 524288;
        z3Var.zzbk = str;
    }

    public static /* synthetic */ void t(z3 z3Var, long j3) {
        z3Var.zzf |= 32;
        z3Var.zzav = j3;
    }

    public static /* synthetic */ void u(z3 z3Var, h3 h3Var) {
        z3Var.zzbp = h3Var;
        z3Var.zzf |= 16777216;
    }

    public static /* synthetic */ void u1(z3 z3Var) {
        z3Var.zze &= -33;
        z3Var.zzn = 0L;
    }

    public static /* synthetic */ void v(z3 z3Var, k3 k3Var) {
        z3Var.zzbn = k3Var;
        z3Var.zzf |= 4194304;
    }

    public static /* synthetic */ void v1(z3 z3Var, int i6) {
        z3Var.zze |= 1024;
        z3Var.zzs = i6;
    }

    public static /* synthetic */ void w(z3 z3Var, q3 q3Var) {
        z3Var.P0();
        z3Var.zzh.add(q3Var);
    }

    public static /* synthetic */ void w1(z3 z3Var, long j3) {
        z3Var.zze |= 4;
        z3Var.zzk = j3;
    }

    public static /* synthetic */ void x(z3 z3Var, b4 b4Var) {
        z3Var.zzas = b4Var;
        z3Var.zzf |= 8;
    }

    public static /* synthetic */ void x1(z3 z3Var) {
        String str = Build.MODEL;
        str.getClass();
        z3Var.zze |= 256;
        z3Var.zzq = str;
    }

    public static /* synthetic */ void y(z3 z3Var, h4 h4Var) {
        z3Var.Q0();
        z3Var.zzi.add(h4Var);
    }

    public static void z(z3 z3Var, Iterable iterable) {
        j6 j6Var = z3Var.zzag;
        if (!((j5) j6Var).f1685a) {
            z3Var.zzag = j6Var.zza(j6Var.size() << 1);
        }
        i5.b(iterable, z3Var.zzag);
    }

    public static /* synthetic */ void z1(z3 z3Var) {
        z3Var.zze &= -17;
        z3Var.zzm = 0L;
    }

    public final boolean A0() {
        return (this.zzf & 2) != 0;
    }

    public final boolean B0() {
        return (this.zze & 8388608) != 0;
    }

    public final String C() {
        return this.zzaa;
    }

    public final boolean C0() {
        return (this.zzf & 8192) != 0;
    }

    public final long C1() {
        return this.zzab;
    }

    public final String D() {
        return this.zzt;
    }

    public final boolean D0() {
        return (this.zze & 4) != 0;
    }

    public final String E() {
        return this.zzv;
    }

    public final boolean E0() {
        return (this.zzf & 32768) != 0;
    }

    public final String F() {
        return this.zzbi;
    }

    public final boolean F0() {
        return (this.zze & 1024) != 0;
    }

    public final String G() {
        return this.zzax;
    }

    public final boolean G0() {
        return (this.zze & 2) != 0;
    }

    public final long G1() {
        return this.zzau;
    }

    public final String H() {
        return this.zzbk;
    }

    public final boolean H0() {
        return (this.zze & 32768) != 0;
    }

    public final String I() {
        return this.zzq;
    }

    public final int I0() {
        return this.zzac;
    }

    public final String J() {
        return this.zzao;
    }

    public final String K() {
        return this.zzah;
    }

    public final long K1() {
        return this.zzl;
    }

    public final String L() {
        return this.zzae;
    }

    public final String M() {
        return this.zzad;
    }

    public final String N() {
        return this.zzp;
    }

    public final long N1() {
        return this.zzw;
    }

    public final String O() {
        return this.zzo;
    }

    public final String P() {
        return this.zzy;
    }

    public final void P0() {
        j6 j6Var = this.zzh;
        if (((j5) j6Var).f1685a) {
            return;
        }
        this.zzh = j6Var.zza(j6Var.size() << 1);
    }

    public final long P1() {
        return this.zzn;
    }

    public final String Q() {
        return this.zzbd;
    }

    public final void Q0() {
        j6 j6Var = this.zzi;
        if (((j5) j6Var).f1685a) {
            return;
        }
        this.zzi = j6Var.zza(j6Var.size() << 1);
    }

    public final String R() {
        return this.zzr;
    }

    public final int R0() {
        return this.zzbo;
    }

    public final long R1() {
        return this.zzm;
    }

    public final j6 S() {
        return this.zzag;
    }

    public final j6 T() {
        return this.zzh;
    }

    public final long T1() {
        return this.zzk;
    }

    public final j6 U() {
        return this.zzi;
    }

    public final boolean V() {
        return this.zzbh;
    }

    public final long V1() {
        return this.zzbg;
    }

    public final boolean W() {
        return this.zzbj;
    }

    public final boolean X() {
        return this.zzz;
    }

    public final long X1() {
        return this.zzj;
    }

    public final boolean Y() {
        return this.zzaf;
    }

    public final int Y0() {
        return this.zzh.size();
    }

    public final boolean Z() {
        return (this.zzf & 16777216) != 0;
    }

    public final long Z1() {
        return this.zzx;
    }

    public final boolean a0() {
        return (this.zze & 33554432) != 0;
    }

    public final h3 a2() {
        h3 h3Var = this.zzbp;
        return h3Var == null ? h3.A() : h3Var;
    }

    public final boolean b0() {
        return (this.zzf & 4194304) != 0;
    }

    public final k3 b2() {
        k3 k3Var = this.zzbn;
        return k3Var == null ? k3.q() : k3Var;
    }

    public final int c0() {
        return this.zzai;
    }

    public final h4 d0(int i6) {
        return (h4) this.zzi.get(i6);
    }

    public final String d2() {
        return this.zzar;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (f3.f1631a[i6 - 1]) {
            case 1:
                return new z3();
            case 2:
                return new y3(zzc);
            case 3:
                return new a7(zzc, "\u0004?\u0000\u0002\u0001P?\u0000\u0005\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5᠌(7ဇ)9ဈ*:ဇ+;ဉ,?ဈ-@\u001aAဈ.Cဂ/Dဇ0Gဈ1Hဇ2Iဈ3Jင4Kဈ5Lဉ6Mင7Oဉ8Pဈ9", new Object[]{"zze", "zzf", "zzg", "zzh", q3.class, "zzi", h4.class, "zzj", "zzk", "zzl", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzaa", "zzab", "zzac", "zzad", "zzae", "zzm", "zzaf", "zzag", m3.class, "zzah", "zzai", "zzaj", "zzak", "zzal", "zzam", "zzan", "zzao", "zzap", "zzaq", "zzar", "zzas", "zzat", "zzau", "zzav", "zzaw", "zzax", "zzay", o2.f1784f, "zzaz", "zzba", "zzbb", "zzbc", "zzbd", "zzbe", "zzbf", "zzbg", "zzbh", "zzbi", "zzbj", "zzbk", "zzbl", "zzbm", "zzbn", "zzbo", "zzbp", "zzbq"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (z3.class) {
                    try {
                        a6Var = zzd;
                        if (a6Var == null) {
                            a6Var = new a6(6);
                            zzd = a6Var;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return a6Var;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final int e1() {
        return this.zzg;
    }

    public final String e2() {
        return this.zzu;
    }

    public final int j1() {
        return this.zzaq;
    }

    public final boolean k0() {
        return (this.zze & 1048576) != 0;
    }

    public final boolean l0() {
        return (this.zze & 536870912) != 0;
    }

    public final boolean m0() {
        return (this.zzf & 131072) != 0;
    }

    public final int n() {
        return this.zzbl;
    }

    public final boolean n0() {
        return (this.zzf & 128) != 0;
    }

    public final q3 o(int i6) {
        return (q3) this.zzh.get(i6);
    }

    public final boolean o0() {
        return (this.zzf & 524288) != 0;
    }

    public final int o1() {
        return this.zzs;
    }

    public final boolean p0() {
        return (this.zzf & 8388608) != 0;
    }

    public final boolean q0() {
        return (this.zze & 524288) != 0;
    }

    public final boolean r0() {
        return (this.zze & Integer.MIN_VALUE) != 0;
    }

    public final boolean s0() {
        return (this.zzf & 16) != 0;
    }

    public final boolean t0() {
        return (this.zze & 8) != 0;
    }

    public final int t1() {
        return this.zzi.size();
    }

    public final boolean u0() {
        return (this.zze & 16384) != 0;
    }

    public final boolean v0() {
        return (this.zzf & 262144) != 0;
    }

    public final boolean w0() {
        return (this.zze & 131072) != 0;
    }

    public final boolean x0() {
        return (this.zze & 32) != 0;
    }

    public final boolean y0() {
        return (this.zze & 16) != 0;
    }

    public final long y1() {
        return this.zzam;
    }

    public final boolean z0() {
        return (this.zze & 1) != 0;
    }
}
