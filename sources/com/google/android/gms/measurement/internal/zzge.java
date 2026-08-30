package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.engagelab.privates.core.api.WakeMessage;
import com.google.android.gms.internal.measurement.g0;
import com.google.android.gms.internal.measurement.h0;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzge extends h0 implements zzgb {
    public zzge() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.h0
    public final boolean zza(int i6, Parcel parcel, Parcel parcel2, int i9) {
        boolean z5;
        switch (i6) {
            case 1:
                zzbf zzbfVar = (zzbf) g0.a(parcel, zzbf.CREATOR);
                zzo zzoVar = (zzo) g0.a(parcel, zzo.CREATOR);
                g0.d(parcel);
                zza(zzbfVar, zzoVar);
                parcel2.writeNoException();
                return true;
            case 2:
                zzon zzonVar = (zzon) g0.a(parcel, zzon.CREATOR);
                zzo zzoVar2 = (zzo) g0.a(parcel, zzo.CREATOR);
                g0.d(parcel);
                zza(zzonVar, zzoVar2);
                parcel2.writeNoException();
                return true;
            case 3:
            case WakeMessage.ACTIVITY /* 8 */:
            case 22:
            case 23:
            default:
                return false;
            case 4:
                zzo zzoVar3 = (zzo) g0.a(parcel, zzo.CREATOR);
                g0.d(parcel);
                zzd(zzoVar3);
                parcel2.writeNoException();
                return true;
            case 5:
                zzbf zzbfVar2 = (zzbf) g0.a(parcel, zzbf.CREATOR);
                String string = parcel.readString();
                String string2 = parcel.readString();
                g0.d(parcel);
                zza(zzbfVar2, string, string2);
                parcel2.writeNoException();
                return true;
            case 6:
                zzo zzoVar4 = (zzo) g0.a(parcel, zzo.CREATOR);
                g0.d(parcel);
                zzh(zzoVar4);
                parcel2.writeNoException();
                return true;
            case 7:
                zzo zzoVar5 = (zzo) g0.a(parcel, zzo.CREATOR);
                z5 = parcel.readInt() != 0;
                g0.d(parcel);
                List<zzon> listZza = zza(zzoVar5, z5);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza);
                return true;
            case 9:
                zzbf zzbfVar3 = (zzbf) g0.a(parcel, zzbf.CREATOR);
                String string3 = parcel.readString();
                g0.d(parcel);
                byte[] bArrZza = zza(zzbfVar3, string3);
                parcel2.writeNoException();
                parcel2.writeByteArray(bArrZza);
                return true;
            case 10:
                long j3 = parcel.readLong();
                String string4 = parcel.readString();
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                g0.d(parcel);
                zza(j3, string4, string5, string6);
                parcel2.writeNoException();
                return true;
            case 11:
                zzo zzoVar6 = (zzo) g0.a(parcel, zzo.CREATOR);
                g0.d(parcel);
                String strZzb = zzb(zzoVar6);
                parcel2.writeNoException();
                parcel2.writeString(strZzb);
                return true;
            case 12:
                zzae zzaeVar = (zzae) g0.a(parcel, zzae.CREATOR);
                zzo zzoVar7 = (zzo) g0.a(parcel, zzo.CREATOR);
                g0.d(parcel);
                zza(zzaeVar, zzoVar7);
                parcel2.writeNoException();
                return true;
            case 13:
                zzae zzaeVar2 = (zzae) g0.a(parcel, zzae.CREATOR);
                g0.d(parcel);
                zza(zzaeVar2);
                parcel2.writeNoException();
                return true;
            case 14:
                String string7 = parcel.readString();
                String string8 = parcel.readString();
                ClassLoader classLoader = g0.f1648a;
                z5 = parcel.readInt() != 0;
                zzo zzoVar8 = (zzo) g0.a(parcel, zzo.CREATOR);
                g0.d(parcel);
                List<zzon> listZza2 = zza(string7, string8, z5, zzoVar8);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza2);
                return true;
            case 15:
                String string9 = parcel.readString();
                String string10 = parcel.readString();
                String string11 = parcel.readString();
                ClassLoader classLoader2 = g0.f1648a;
                z5 = parcel.readInt() != 0;
                g0.d(parcel);
                List<zzon> listZza3 = zza(string9, string10, string11, z5);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza3);
                return true;
            case 16:
                String string12 = parcel.readString();
                String string13 = parcel.readString();
                zzo zzoVar9 = (zzo) g0.a(parcel, zzo.CREATOR);
                g0.d(parcel);
                List<zzae> listZza4 = zza(string12, string13, zzoVar9);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza4);
                return true;
            case 17:
                String string14 = parcel.readString();
                String string15 = parcel.readString();
                String string16 = parcel.readString();
                g0.d(parcel);
                List<zzae> listZza5 = zza(string14, string15, string16);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza5);
                return true;
            case 18:
                zzo zzoVar10 = (zzo) g0.a(parcel, zzo.CREATOR);
                g0.d(parcel);
                zze(zzoVar10);
                parcel2.writeNoException();
                return true;
            case 19:
                Bundle bundle = (Bundle) g0.a(parcel, Bundle.CREATOR);
                zzo zzoVar11 = (zzo) g0.a(parcel, zzo.CREATOR);
                g0.d(parcel);
                zza(bundle, zzoVar11);
                parcel2.writeNoException();
                return true;
            case 20:
                zzo zzoVar12 = (zzo) g0.a(parcel, zzo.CREATOR);
                g0.d(parcel);
                zzf(zzoVar12);
                parcel2.writeNoException();
                return true;
            case 21:
                zzo zzoVar13 = (zzo) g0.a(parcel, zzo.CREATOR);
                g0.d(parcel);
                zzaj zzajVarZza = zza(zzoVar13);
                parcel2.writeNoException();
                if (zzajVarZza == null) {
                    parcel2.writeInt(0);
                } else {
                    parcel2.writeInt(1);
                    zzajVarZza.writeToParcel(parcel2, 1);
                }
                return true;
            case 24:
                zzo zzoVar14 = (zzo) g0.a(parcel, zzo.CREATOR);
                Bundle bundle2 = (Bundle) g0.a(parcel, Bundle.CREATOR);
                g0.d(parcel);
                List<zzno> listZza6 = zza(zzoVar14, bundle2);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza6);
                return true;
            case 25:
                zzo zzoVar15 = (zzo) g0.a(parcel, zzo.CREATOR);
                g0.d(parcel);
                zzi(zzoVar15);
                parcel2.writeNoException();
                return true;
            case 26:
                zzo zzoVar16 = (zzo) g0.a(parcel, zzo.CREATOR);
                g0.d(parcel);
                zzg(zzoVar16);
                parcel2.writeNoException();
                return true;
            case 27:
                zzo zzoVar17 = (zzo) g0.a(parcel, zzo.CREATOR);
                g0.d(parcel);
                zzc(zzoVar17);
                parcel2.writeNoException();
                return true;
            case 28:
                Bundle bundle3 = (Bundle) g0.a(parcel, Bundle.CREATOR);
                zzo zzoVar18 = (zzo) g0.a(parcel, zzo.CREATOR);
                g0.d(parcel);
                zzb(bundle3, zzoVar18);
                parcel2.writeNoException();
                return true;
        }
    }
}
