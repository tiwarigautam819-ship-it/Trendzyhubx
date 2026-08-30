package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a.c(10);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f445c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f447e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f448f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f449g;
    public final int h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CharSequence f450i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f451j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CharSequence f452k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ArrayList f453l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ArrayList f454m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final boolean f455v;

    public b(a aVar) {
        int size = aVar.f418a.size();
        this.f443a = new int[size * 6];
        if (!aVar.f424g) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f444b = new ArrayList(size);
        this.f445c = new int[size];
        this.f446d = new int[size];
        int i6 = 0;
        for (int i9 = 0; i9 < size; i9++) {
            h1 h1Var = (h1) aVar.f418a.get(i9);
            int i10 = i6 + 1;
            this.f443a[i6] = h1Var.f534a;
            ArrayList arrayList = this.f444b;
            c0 c0Var = h1Var.f535b;
            arrayList.add(c0Var != null ? c0Var.f469e : null);
            int[] iArr = this.f443a;
            iArr[i10] = h1Var.f536c ? 1 : 0;
            iArr[i6 + 2] = h1Var.f537d;
            iArr[i6 + 3] = h1Var.f538e;
            int i11 = i6 + 5;
            iArr[i6 + 4] = h1Var.f539f;
            i6 += 6;
            iArr[i11] = h1Var.f540g;
            this.f445c[i9] = h1Var.h.ordinal();
            this.f446d[i9] = h1Var.f541i.ordinal();
        }
        this.f447e = aVar.f423f;
        this.f448f = aVar.h;
        this.f449g = aVar.f435s;
        this.h = aVar.f425i;
        this.f450i = aVar.f426j;
        this.f451j = aVar.f427k;
        this.f452k = aVar.f428l;
        this.f453l = aVar.f429m;
        this.f454m = aVar.f430n;
        this.f455v = aVar.f431o;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeIntArray(this.f443a);
        parcel.writeStringList(this.f444b);
        parcel.writeIntArray(this.f445c);
        parcel.writeIntArray(this.f446d);
        parcel.writeInt(this.f447e);
        parcel.writeString(this.f448f);
        parcel.writeInt(this.f449g);
        parcel.writeInt(this.h);
        TextUtils.writeToParcel(this.f450i, parcel, 0);
        parcel.writeInt(this.f451j);
        TextUtils.writeToParcel(this.f452k, parcel, 0);
        parcel.writeStringList(this.f453l);
        parcel.writeStringList(this.f454m);
        parcel.writeInt(this.f455v ? 1 : 0);
    }

    public b(Parcel parcel) {
        this.f443a = parcel.createIntArray();
        this.f444b = parcel.createStringArrayList();
        this.f445c = parcel.createIntArray();
        this.f446d = parcel.createIntArray();
        this.f447e = parcel.readInt();
        this.f448f = parcel.readString();
        this.f449g = parcel.readInt();
        this.h = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.f450i = (CharSequence) creator.createFromParcel(parcel);
        this.f451j = parcel.readInt();
        this.f452k = (CharSequence) creator.createFromParcel(parcel);
        this.f453l = parcel.createStringArrayList();
        this.f454m = parcel.createStringArrayList();
        this.f455v = parcel.readInt() != 0;
    }
}
