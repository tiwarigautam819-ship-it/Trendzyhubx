package x1;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.IOException;
import java.security.spec.InvalidKeySpecException;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements Parcelable {
    public static final Parcelable.Creator<g> CREATOR = new n4.e(9);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final i f5862c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h f5863d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f5864e;

    public g(String str, String str2) {
        d7.g.f("expectedNonce", str2);
        q2.g.h(str, "token");
        q2.g.h(str2, "expectedNonce");
        boolean zQ = false;
        List listJ = k7.g.J(str, new String[]{"."}, 0, 6);
        if (listJ.size() != 3) {
            throw new IllegalArgumentException("Invalid IdToken string");
        }
        String str3 = (String) listJ.get(0);
        String str4 = (String) listJ.get(1);
        String str5 = (String) listJ.get(2);
        this.f5860a = str;
        this.f5861b = str2;
        i iVar = new i(str3);
        this.f5862c = iVar;
        this.f5863d = new h(str4, str2);
        try {
            String strI = x2.a.i(iVar.f5890c);
            if (strI != null) {
                zQ = x2.a.q(x2.a.h(strI), str3 + '.' + str4, str5);
            }
        } catch (IOException | InvalidKeySpecException unused) {
        }
        if (!zQ) {
            throw new IllegalArgumentException("Invalid Signature");
        }
        this.f5864e = str5;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return d7.g.a(this.f5860a, gVar.f5860a) && d7.g.a(this.f5861b, gVar.f5861b) && d7.g.a(this.f5862c, gVar.f5862c) && d7.g.a(this.f5863d, gVar.f5863d) && d7.g.a(this.f5864e, gVar.f5864e);
    }

    public final int hashCode() {
        return this.f5864e.hashCode() + ((this.f5863d.hashCode() + ((this.f5862c.hashCode() + q2.x.d(q2.x.d(527, this.f5860a, 31), this.f5861b, 31)) * 31)) * 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        d7.g.f("dest", parcel);
        parcel.writeString(this.f5860a);
        parcel.writeString(this.f5861b);
        parcel.writeParcelable(this.f5862c, i6);
        parcel.writeParcelable(this.f5863d, i6);
        parcel.writeString(this.f5864e);
    }

    public g(Parcel parcel) {
        String string = parcel.readString();
        q2.g.j(string, "token");
        this.f5860a = string;
        String string2 = parcel.readString();
        q2.g.j(string2, "expectedNonce");
        this.f5861b = string2;
        Parcelable parcelable = parcel.readParcelable(i.class.getClassLoader());
        if (parcelable != null) {
            this.f5862c = (i) parcelable;
            Parcelable parcelable2 = parcel.readParcelable(h.class.getClassLoader());
            if (parcelable2 != null) {
                this.f5863d = (h) parcelable2;
                String string3 = parcel.readString();
                q2.g.j(string3, "signature");
                this.f5864e = string3;
                return;
            }
            throw new IllegalStateException("Required value was null.");
        }
        throw new IllegalStateException("Required value was null.");
    }
}
