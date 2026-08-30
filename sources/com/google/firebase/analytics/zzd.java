package com.google.firebase.analytics;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.k1;
import com.google.android.gms.internal.measurement.l1;
import com.google.android.gms.internal.measurement.o1;
import com.google.android.gms.internal.measurement.p1;
import com.google.android.gms.internal.measurement.t0;
import com.google.android.gms.internal.measurement.u1;
import com.google.android.gms.internal.measurement.x1;
import com.google.android.gms.internal.measurement.z1;
import com.google.android.gms.measurement.internal.zzjl;
import com.google.android.gms.measurement.internal.zzjm;
import com.google.android.gms.measurement.internal.zzlb;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzd implements zzlb {
    private final /* synthetic */ k1 zza;

    public zzd(k1 k1Var) {
        this.zza = k1Var;
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final int zza(String str) {
        return this.zza.a(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzb(String str) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new p1(k1Var, str, 2));
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzc(String str) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new p1(k1Var, str, 1));
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final long zzf() {
        return this.zza.b();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzg() {
        k1 k1Var = this.zza;
        k1Var.getClass();
        t0 t0Var = new t0();
        k1Var.f(new u1(k1Var, t0Var, 0));
        return t0Var.d(50L);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzh() {
        k1 k1Var = this.zza;
        k1Var.getClass();
        t0 t0Var = new t0();
        k1Var.f(new u1(k1Var, t0Var, 4));
        return t0Var.d(500L);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzi() {
        k1 k1Var = this.zza;
        k1Var.getClass();
        t0 t0Var = new t0();
        k1Var.f(new u1(k1Var, t0Var, 2));
        return t0Var.d(500L);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzj() {
        k1 k1Var = this.zza;
        k1Var.getClass();
        t0 t0Var = new t0();
        k1Var.f(new u1(k1Var, t0Var, 1));
        return t0Var.d(500L);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final Object zza(int i6) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        t0 t0Var = new t0();
        k1Var.f(new x1(k1Var, t0Var, i6));
        return t0.c(t0Var.b(15000L), Object.class);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzb(String str, String str2, Bundle bundle) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new z1(k1Var, null, str, str2, bundle, true, true));
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzb(zzjl zzjlVar) {
        this.zza.j(zzjlVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final List<Bundle> zza(String str, String str2) {
        return this.zza.d(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final Map<String, Object> zza(String str, String str2, boolean z5) {
        return this.zza.e(str, str2, z5);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(String str, String str2, Bundle bundle) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new o1(k1Var, str, str2, bundle, 1));
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(String str, String str2, Bundle bundle, long j3) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new z1(k1Var, Long.valueOf(j3), str, str2, bundle, true, false));
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(zzjl zzjlVar) {
        this.zza.g(zzjlVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(Bundle bundle) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new l1(k1Var, bundle, 0));
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(zzjm zzjmVar) {
        this.zza.h(zzjmVar);
    }
}
