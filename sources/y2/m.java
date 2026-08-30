package y2;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m implements Parcelable {
    public static final Parcelable.Creator<m> CREATOR = new n4.e(22);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6200a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public HashSet f6201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6202c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f6203d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f6204e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f6205f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f6206g;
    public final String h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f6207i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f6208j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f6209k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f6210l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f6211m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final boolean f6212v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final String f6213w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final String f6214x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final String f6215y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f6216z;

    public m(Parcel parcel) {
        int i6;
        int i9;
        int i10;
        int i11;
        String string = parcel.readString();
        q2.g.j(string, "loginBehavior");
        if (string == null) {
            throw new NullPointerException("Name is null");
        }
        if (string.equals("NATIVE_WITH_FALLBACK")) {
            i6 = 1;
        } else if (string.equals("NATIVE_ONLY")) {
            i6 = 2;
        } else if (string.equals("KATANA_ONLY")) {
            i6 = 3;
        } else if (string.equals("WEB_ONLY")) {
            i6 = 4;
        } else if (string.equals("DIALOG_ONLY")) {
            i6 = 5;
        } else {
            if (!string.equals("DEVICE_AUTH")) {
                throw new IllegalArgumentException("No enum constant com.facebook.login.LoginBehavior.".concat(string));
            }
            i6 = 6;
        }
        this.f6200a = i6;
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        this.f6201b = new HashSet(arrayList);
        String string2 = parcel.readString();
        if (string2 == null) {
            i9 = 1;
        } else {
            if (string2 == null) {
                throw new NullPointerException("Name is null");
            }
            if (string2.equals("NONE")) {
                i9 = 1;
            } else if (string2.equals("ONLY_ME")) {
                i9 = 2;
            } else if (string2.equals("FRIENDS")) {
                i9 = 3;
            } else {
                if (!string2.equals("EVERYONE")) {
                    throw new IllegalArgumentException("No enum constant com.facebook.login.DefaultAudience.".concat(string2));
                }
                i9 = 4;
            }
        }
        this.f6202c = i9;
        String string3 = parcel.readString();
        q2.g.j(string3, "applicationId");
        this.f6203d = string3;
        String string4 = parcel.readString();
        q2.g.j(string4, "authId");
        this.f6204e = string4;
        int i12 = 0;
        this.f6205f = parcel.readByte() != 0;
        this.f6206g = parcel.readString();
        String string5 = parcel.readString();
        q2.g.j(string5, "authType");
        this.h = string5;
        this.f6207i = parcel.readString();
        this.f6208j = parcel.readString();
        this.f6209k = parcel.readByte() != 0;
        String string6 = parcel.readString();
        if (string6 == null) {
            i10 = 1;
        } else {
            if (string6 == null) {
                throw new NullPointerException("Name is null");
            }
            if (string6.equals("FACEBOOK")) {
                i10 = 1;
            } else {
                if (!string6.equals("INSTAGRAM")) {
                    throw new IllegalArgumentException("No enum constant com.facebook.login.LoginTargetApp.".concat(string6));
                }
                i10 = 2;
            }
        }
        this.f6210l = i10;
        this.f6211m = parcel.readByte() != 0;
        this.f6212v = parcel.readByte() != 0;
        String string7 = parcel.readString();
        q2.g.j(string7, "nonce");
        this.f6213w = string7;
        this.f6214x = parcel.readString();
        this.f6215y = parcel.readString();
        String string8 = parcel.readString();
        if (string8 != null) {
            if (string8 == null) {
                throw new NullPointerException("Name is null");
            }
            if (string8.equals("S256")) {
                i11 = 1;
            } else {
                if (!string8.equals("PLAIN")) {
                    throw new IllegalArgumentException("No enum constant com.facebook.login.CodeChallengeMethod.".concat(string8));
                }
                i11 = 2;
            }
            i12 = i11;
        }
        this.f6216z = i12;
    }

    public final boolean a() {
        for (String str : this.f6201b) {
            Set set = s.f6244a;
            if (str != null && (k7.o.v(str, "publish", false) || k7.o.v(str, "manage", false) || s.f6244a.contains(str))) {
                return true;
            }
        }
        return false;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        String str;
        String str2;
        d7.g.f("dest", parcel);
        parcel.writeString(x.m(this.f6200a));
        parcel.writeStringList(new ArrayList(this.f6201b));
        int i9 = this.f6202c;
        if (i9 == 1) {
            str = "NONE";
        } else if (i9 == 2) {
            str = "ONLY_ME";
        } else if (i9 == 3) {
            str = "FRIENDS";
        } else {
            if (i9 != 4) {
                throw null;
            }
            str = "EVERYONE";
        }
        parcel.writeString(str);
        parcel.writeString(this.f6203d);
        parcel.writeString(this.f6204e);
        parcel.writeByte(this.f6205f ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f6206g);
        parcel.writeString(this.h);
        parcel.writeString(this.f6207i);
        parcel.writeString(this.f6208j);
        parcel.writeByte(this.f6209k ? (byte) 1 : (byte) 0);
        int i10 = this.f6210l;
        if (i10 == 1) {
            str2 = "FACEBOOK";
        } else {
            if (i10 != 2) {
                throw null;
            }
            str2 = "INSTAGRAM";
        }
        parcel.writeString(str2);
        parcel.writeByte(this.f6211m ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f6212v ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f6213w);
        parcel.writeString(this.f6214x);
        parcel.writeString(this.f6215y);
        int i11 = this.f6216z;
        parcel.writeString(i11 != 0 ? x.l(i11) : null);
    }
}
