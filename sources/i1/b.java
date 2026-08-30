package i1;

import android.os.Parcel;
import android.util.SparseIntArray;
import q2.x;
import s.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SparseIntArray f3082d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Parcel f3083e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f3084f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f3085g;
    public final String h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3086i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3087j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3088k;

    public b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new e(0), new e(0), new e(0));
    }

    @Override // i1.a
    public final b a() {
        Parcel parcel = this.f3083e;
        int iDataPosition = parcel.dataPosition();
        int i6 = this.f3087j;
        if (i6 == this.f3084f) {
            i6 = this.f3085g;
        }
        return new b(parcel, iDataPosition, i6, x.h(new StringBuilder(), this.h, "  "), this.f3079a, this.f3080b, this.f3081c);
    }

    @Override // i1.a
    public final boolean e(int i6) {
        while (this.f3087j < this.f3085g) {
            int i9 = this.f3088k;
            if (i9 == i6) {
                return true;
            }
            if (String.valueOf(i9).compareTo(String.valueOf(i6)) > 0) {
                return false;
            }
            int i10 = this.f3087j;
            Parcel parcel = this.f3083e;
            parcel.setDataPosition(i10);
            int i11 = parcel.readInt();
            this.f3088k = parcel.readInt();
            this.f3087j += i11;
        }
        return this.f3088k == i6;
    }

    @Override // i1.a
    public final void i(int i6) {
        int i9 = this.f3086i;
        SparseIntArray sparseIntArray = this.f3082d;
        Parcel parcel = this.f3083e;
        if (i9 >= 0) {
            int i10 = sparseIntArray.get(i9);
            int iDataPosition = parcel.dataPosition();
            parcel.setDataPosition(i10);
            parcel.writeInt(iDataPosition - i10);
            parcel.setDataPosition(iDataPosition);
        }
        this.f3086i = i6;
        sparseIntArray.put(i6, parcel.dataPosition());
        parcel.writeInt(0);
        parcel.writeInt(i6);
    }

    public b(Parcel parcel, int i6, int i9, String str, e eVar, e eVar2, e eVar3) {
        super(eVar, eVar2, eVar3);
        this.f3082d = new SparseIntArray();
        this.f3086i = -1;
        this.f3088k = -1;
        this.f3083e = parcel;
        this.f3084f = i6;
        this.f3085g = i9;
        this.f3087j = i6;
        this.h = str;
    }
}
