package w;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import m.q2;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends o0.b {
    public static final Parcelable.Creator<c> CREATOR = new q2(3);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SparseArray f5710c;

    public c(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int i6 = parcel.readInt();
        int[] iArr = new int[i6];
        parcel.readIntArray(iArr);
        Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
        this.f5710c = new SparseArray(i6);
        for (int i9 = 0; i9 < i6; i9++) {
            this.f5710c.append(iArr[i9], parcelableArray[i9]);
        }
    }

    @Override // o0.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        super.writeToParcel(parcel, i6);
        SparseArray sparseArray = this.f5710c;
        int size = sparseArray != null ? sparseArray.size() : 0;
        parcel.writeInt(size);
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i9 = 0; i9 < size; i9++) {
            iArr[i9] = this.f5710c.keyAt(i9);
            parcelableArr[i9] = (Parcelable) this.f5710c.valueAt(i9);
        }
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i6);
    }
}
