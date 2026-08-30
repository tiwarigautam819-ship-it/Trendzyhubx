package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e1 implements Parcelable {
    public static final Parcelable.Creator<e1> CREATOR = new a.c(14);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f499a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f500b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f501c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f502d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f503e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f504f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f505g;
    public final boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f506i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f507j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f508k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f509l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f510m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f511v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final boolean f512w;

    public e1(c0 c0Var) {
        this.f499a = c0Var.getClass().getName();
        this.f500b = c0Var.f469e;
        this.f501c = c0Var.f477v;
        this.f502d = c0Var.f479x;
        this.f503e = c0Var.F;
        this.f504f = c0Var.G;
        this.f505g = c0Var.H;
        this.h = c0Var.K;
        this.f506i = c0Var.f475l;
        this.f507j = c0Var.J;
        this.f508k = c0Var.I;
        this.f509l = c0Var.W.ordinal();
        this.f510m = c0Var.h;
        this.f511v = c0Var.f472i;
        this.f512w = c0Var.R;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f499a);
        sb.append(" (");
        sb.append(this.f500b);
        sb.append(")}:");
        if (this.f501c) {
            sb.append(" fromLayout");
        }
        if (this.f502d) {
            sb.append(" dynamicContainer");
        }
        int i6 = this.f504f;
        if (i6 != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(i6));
        }
        String str = this.f505g;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(str);
        }
        if (this.h) {
            sb.append(" retainInstance");
        }
        if (this.f506i) {
            sb.append(" removing");
        }
        if (this.f507j) {
            sb.append(" detached");
        }
        if (this.f508k) {
            sb.append(" hidden");
        }
        String str2 = this.f510m;
        if (str2 != null) {
            sb.append(" targetWho=");
            sb.append(str2);
            sb.append(" targetRequestCode=");
            sb.append(this.f511v);
        }
        if (this.f512w) {
            sb.append(" userVisibleHint");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeString(this.f499a);
        parcel.writeString(this.f500b);
        parcel.writeInt(this.f501c ? 1 : 0);
        parcel.writeInt(this.f502d ? 1 : 0);
        parcel.writeInt(this.f503e);
        parcel.writeInt(this.f504f);
        parcel.writeString(this.f505g);
        parcel.writeInt(this.h ? 1 : 0);
        parcel.writeInt(this.f506i ? 1 : 0);
        parcel.writeInt(this.f507j ? 1 : 0);
        parcel.writeInt(this.f508k ? 1 : 0);
        parcel.writeInt(this.f509l);
        parcel.writeString(this.f510m);
        parcel.writeInt(this.f511v);
        parcel.writeInt(this.f512w ? 1 : 0);
    }

    public e1(Parcel parcel) {
        this.f499a = parcel.readString();
        this.f500b = parcel.readString();
        this.f501c = parcel.readInt() != 0;
        this.f502d = parcel.readInt() != 0;
        this.f503e = parcel.readInt();
        this.f504f = parcel.readInt();
        this.f505g = parcel.readString();
        this.h = parcel.readInt() != 0;
        this.f506i = parcel.readInt() != 0;
        this.f507j = parcel.readInt() != 0;
        this.f508k = parcel.readInt() != 0;
        this.f509l = parcel.readInt();
        this.f510m = parcel.readString();
        this.f511v = parcel.readInt();
        this.f512w = parcel.readInt() != 0;
    }
}
