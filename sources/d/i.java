package d;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Parcelable {
    public static final Parcelable.Creator<i> CREATOR = new a.c(25);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IntentSender f2211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Intent f2212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2213c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2214d;

    public i(IntentSender intentSender, Intent intent, int i6, int i9) {
        this.f2211a = intentSender;
        this.f2212b = intent;
        this.f2213c = i6;
        this.f2214d = i9;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        d7.g.f("dest", parcel);
        parcel.writeParcelable(this.f2211a, i6);
        parcel.writeParcelable(this.f2212b, i6);
        parcel.writeInt(this.f2213c);
        parcel.writeInt(this.f2214d);
    }
}
