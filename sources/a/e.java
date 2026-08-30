package a;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class e implements Parcelable {
    public static final Parcelable.Creator<e> CREATOR = new c(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b f5a;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        synchronized (this) {
            try {
                if (this.f5a == null) {
                    this.f5a = new d(this);
                }
                parcel.writeStrongBinder(this.f5a.asBinder());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(int i6, Bundle bundle) {
    }
}
