package m;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j0 extends View.BaseSavedState {
    public static final Parcelable.Creator<j0> CREATOR = new a.c(27);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f4002a;

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        super.writeToParcel(parcel, i6);
        parcel.writeByte(this.f4002a ? (byte) 1 : (byte) 0);
    }
}
