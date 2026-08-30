package f4;

import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l extends h4.a {
    public final e4.a d(e4.b bVar, String str, int i6, e4.b bVar2) {
        Parcel parcelC = c();
        j4.b.c(parcelC, bVar);
        parcelC.writeString(str);
        parcelC.writeInt(i6);
        j4.b.c(parcelC, bVar2);
        Parcel parcelB = b(2, parcelC);
        e4.a aVarD = e4.b.d(parcelB.readStrongBinder());
        parcelB.recycle();
        return aVarD;
    }

    public final e4.a e(e4.b bVar, String str, int i6, e4.b bVar2) {
        Parcel parcelC = c();
        j4.b.c(parcelC, bVar);
        parcelC.writeString(str);
        parcelC.writeInt(i6);
        j4.b.c(parcelC, bVar2);
        Parcel parcelB = b(3, parcelC);
        e4.a aVarD = e4.b.d(parcelB.readStrongBinder());
        parcelB.recycle();
        return aVarD;
    }
}
