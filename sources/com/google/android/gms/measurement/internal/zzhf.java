package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.g0;
import com.google.android.gms.internal.measurement.j0;
import com.google.android.gms.internal.measurement.l0;
import d4.b;
import d4.c;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzhf {
    final zzhy zza;

    public zzhf(zznv zznvVar) {
        this.zza = zznvVar.zzk();
    }

    public final Bundle zza(String str, j0 j0Var) {
        this.zza.zzl().zzt();
        if (j0Var == null) {
            this.zza.zzj().zzu().zza("Attempting to use Install Referrer Service while it is not initialized");
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        try {
            l0 l0Var = (l0) j0Var;
            Parcel parcelA_ = l0Var.a_();
            g0.c(parcelA_, bundle);
            Parcel parcelZza = l0Var.zza(1, parcelA_);
            Bundle bundle2 = (Bundle) g0.a(parcelZza, Bundle.CREATOR);
            parcelZza.recycle();
            if (bundle2 != null) {
                return bundle2;
            }
            this.zza.zzj().zzg().zza("Install Referrer Service returned a null response");
            return null;
        } catch (Exception e9) {
            this.zza.zzj().zzg().zza("Exception occurred while retrieving the Install Referrer", e9.getMessage());
            return null;
        }
    }

    public final boolean zza() {
        try {
            b bVarA = c.a(this.zza.zza());
            if (bVarA != null) {
                return bVarA.c(128, "com.android.vending").versionCode >= 80837300;
            }
            this.zza.zzj().zzp().zza("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e9) {
            this.zza.zzj().zzp().zza("Failed to retrieve Play Store version for Install Referrer", e9);
            return false;
        }
    }
}
