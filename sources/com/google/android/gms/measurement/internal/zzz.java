package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.h2;
import com.google.android.gms.internal.measurement.h4;
import com.google.android.gms.internal.measurement.l2;
import com.google.android.gms.internal.measurement.o8;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzz extends zzaa {
    private l2 zzg;
    private final /* synthetic */ zzt zzh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzz(zzt zztVar, String str, int i6, l2 l2Var) {
        super(str, i6);
        this.zzh = zztVar;
        this.zzg = l2Var;
    }

    @Override // com.google.android.gms.measurement.internal.zzaa
    public final int zza() {
        return this.zzg.n();
    }

    @Override // com.google.android.gms.measurement.internal.zzaa
    public final boolean zzb() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzaa
    public final boolean zzc() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean zza(Long l4, Long l8, h4 h4Var, boolean z5) {
        o8.a();
        boolean zZzf = this.zzh.zze().zzf(this.zza, zzbh.zzbn);
        boolean zS = this.zzg.s();
        boolean zT = this.zzg.t();
        boolean zU = this.zzg.u();
        Object[] objArr = zS || zT || zU;
        Boolean boolZza = null;
        boolZza = null;
        boolZza = null;
        boolZza = null;
        boolZza = null;
        if (z5 && objArr != true) {
            this.zzh.zzj().zzp().zza("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.zzb), this.zzg.v() ? Integer.valueOf(this.zzg.n()) : null);
            return true;
        }
        h2 h2VarP = this.zzg.p();
        boolean zS2 = h2VarP.s();
        if (h4Var.E()) {
            if (h2VarP.u()) {
                boolZza = zzaa.zza(zzaa.zza(h4Var.w(), h2VarP.p()), zS2);
            } else {
                this.zzh.zzj().zzu().zza("No number filter for long property. property", this.zzh.zzi().zzc(h4Var.A()));
            }
        } else if (h4Var.C()) {
            if (h2VarP.u()) {
                boolZza = zzaa.zza(zzaa.zza(h4Var.n(), h2VarP.p()), zS2);
            } else {
                this.zzh.zzj().zzu().zza("No number filter for double property. property", this.zzh.zzi().zzc(h4Var.A()));
            }
        } else if (!h4Var.G()) {
            this.zzh.zzj().zzu().zza("User property has no value, property", this.zzh.zzi().zzc(h4Var.A()));
        } else if (h2VarP.w()) {
            boolZza = zzaa.zza(zzaa.zza(h4Var.B(), h2VarP.q(), this.zzh.zzj()), zS2);
        } else if (!h2VarP.u()) {
            this.zzh.zzj().zzu().zza("No string or number filter defined. property", this.zzh.zzi().zzc(h4Var.A()));
        } else if (zzoo.zzb(h4Var.B())) {
            boolZza = zzaa.zza(zzaa.zza(h4Var.B(), h2VarP.p()), zS2);
        } else {
            this.zzh.zzj().zzu().zza("Invalid user property value for Numeric number filter. property, value", this.zzh.zzi().zzc(h4Var.A()), h4Var.B());
        }
        this.zzh.zzj().zzp().zza("Property filter result", boolZza == null ? "null" : boolZza);
        if (boolZza == null) {
            return false;
        }
        this.zzc = Boolean.TRUE;
        if (!zU || boolZza.booleanValue()) {
            if (!z5 || this.zzg.s()) {
                this.zzd = boolZza;
            }
            if (boolZza.booleanValue() && objArr != false && h4Var.F()) {
                long jY = h4Var.y();
                if (l4 != null) {
                    jY = l4.longValue();
                }
                if (zZzf && this.zzg.s() && !this.zzg.t() && l8 != null) {
                    jY = l8.longValue();
                }
                if (this.zzg.t()) {
                    this.zzf = Long.valueOf(jY);
                    return true;
                }
                this.zze = Long.valueOf(jY);
            }
        }
        return true;
    }
}
