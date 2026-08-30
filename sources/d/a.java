package d;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new a.c(24);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Intent f2191b;

    public a(Intent intent, int i6) {
        this.f2190a = i6;
        this.f2191b = intent;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ActivityResult{resultCode=");
        int i6 = this.f2190a;
        sb.append(i6 != -1 ? i6 != 0 ? String.valueOf(i6) : "RESULT_CANCELED" : "RESULT_OK");
        sb.append(", data=");
        sb.append(this.f2191b);
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        d7.g.f("dest", parcel);
        parcel.writeInt(this.f2190a);
        Intent intent = this.f2191b;
        parcel.writeInt(intent == null ? 0 : 1);
        if (intent != null) {
            intent.writeToParcel(parcel, i6);
        }
    }
}
