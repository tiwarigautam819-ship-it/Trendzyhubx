package android.support.v4.media.session;

import a.c;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new c(9);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f140a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f142c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f143d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f144e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f145f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final CharSequence f146g;
    public final long h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f147i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f148j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Bundle f149k;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new b();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f150a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CharSequence f151b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f152c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Bundle f153d;

        public CustomAction(Parcel parcel) {
            this.f150a = parcel.readString();
            this.f151b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f152c = parcel.readInt();
            this.f153d = parcel.readBundle(a.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Action:mName='" + ((Object) this.f151b) + ", mIcon=" + this.f152c + ", mExtras=" + this.f153d;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            parcel.writeString(this.f150a);
            TextUtils.writeToParcel(this.f151b, parcel, i6);
            parcel.writeInt(this.f152c);
            parcel.writeBundle(this.f153d);
        }
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.f140a = parcel.readInt();
        this.f141b = parcel.readLong();
        this.f143d = parcel.readFloat();
        this.h = parcel.readLong();
        this.f142c = parcel.readLong();
        this.f144e = parcel.readLong();
        this.f146g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f147i = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f148j = parcel.readLong();
        this.f149k = parcel.readBundle(a.class.getClassLoader());
        this.f145f = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "PlaybackState {state=" + this.f140a + ", position=" + this.f141b + ", buffered position=" + this.f142c + ", speed=" + this.f143d + ", updated=" + this.h + ", actions=" + this.f144e + ", error code=" + this.f145f + ", error message=" + this.f146g + ", custom actions=" + this.f147i + ", active item id=" + this.f148j + "}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeInt(this.f140a);
        parcel.writeLong(this.f141b);
        parcel.writeFloat(this.f143d);
        parcel.writeLong(this.h);
        parcel.writeLong(this.f142c);
        parcel.writeLong(this.f144e);
        TextUtils.writeToParcel(this.f146g, parcel, i6);
        parcel.writeTypedList(this.f147i);
        parcel.writeLong(this.f148j);
        parcel.writeBundle(this.f149k);
        parcel.writeInt(this.f145f);
    }
}
