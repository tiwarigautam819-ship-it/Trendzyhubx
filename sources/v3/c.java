package v3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.measurement.y4;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends y3.a {
    public static final Parcelable.Creator<c> CREATOR = new n4.e(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f5540c;

    public c() {
        this.f5538a = "CLIENT_TELEMETRY";
        this.f5540c = 1L;
        this.f5539b = -1;
    }

    public final long a() {
        long j3 = this.f5540c;
        return j3 == -1 ? this.f5539b : j3;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            String str = cVar.f5538a;
            String str2 = this.f5538a;
            if (((str2 != null && str2.equals(str)) || (str2 == null && str == null)) && a() == cVar.a()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5538a, Long.valueOf(a())});
    }

    public final String toString() {
        y4 y4Var = new y4(this);
        y4Var.f("name", this.f5538a);
        y4Var.f("version", Long.valueOf(a()));
        return y4Var.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = z7.d.p(20293, parcel);
        z7.d.m(parcel, 1, this.f5538a);
        z7.d.r(parcel, 2, 4);
        parcel.writeInt(this.f5539b);
        long jA = a();
        z7.d.r(parcel, 3, 8);
        parcel.writeLong(jA);
        z7.d.q(iP, parcel);
    }

    public c(String str, long j3, int i6) {
        this.f5538a = str;
        this.f5539b = i6;
        this.f5540c = j3;
    }
}
