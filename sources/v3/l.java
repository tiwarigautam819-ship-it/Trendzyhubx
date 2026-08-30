package v3;

import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.common.internal.y;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class l extends j4.a implements y {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5564c;

    public l(byte[] bArr) {
        super("com.google.android.gms.common.internal.ICertData");
        d0.a(bArr.length == 25);
        this.f5564c = Arrays.hashCode(bArr);
    }

    public static byte[] d(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e9) {
            throw new AssertionError(e9);
        }
    }

    @Override // com.google.android.gms.common.internal.y
    public final int a() {
        return this.f5564c;
    }

    @Override // j4.a
    public final boolean c(int i6, Parcel parcel, Parcel parcel2) {
        if (i6 == 1) {
            e4.a aVarZzd = zzd();
            parcel2.writeNoException();
            j4.b.c(parcel2, aVarZzd);
            return true;
        }
        if (i6 != 2) {
            return false;
        }
        parcel2.writeNoException();
        parcel2.writeInt(this.f5564c);
        return true;
    }

    public abstract byte[] e();

    public final boolean equals(Object obj) {
        e4.a aVarZzd;
        if (obj != null && (obj instanceof y)) {
            try {
                y yVar = (y) obj;
                if (yVar.a() == this.f5564c && (aVarZzd = yVar.zzd()) != null) {
                    return Arrays.equals(e(), (byte[]) e4.b.e(aVarZzd));
                }
            } catch (RemoteException e9) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e9);
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f5564c;
    }

    @Override // com.google.android.gms.common.internal.y
    public final e4.a zzd() {
        return new e4.b(e());
    }
}
