package android.support.v4.media;

import a.c;
import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new c(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CharSequence f121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CharSequence f122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CharSequence f123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Bitmap f124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Uri f125f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Bundle f126g;
    public final Uri h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f127i;

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f120a = str;
        this.f121b = charSequence;
        this.f122c = charSequence2;
        this.f123d = charSequence3;
        this.f124e = bitmap;
        this.f125f = uri;
        this.f126g = bundle;
        this.h = uri2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return ((Object) this.f121b) + ", " + ((Object) this.f122c) + ", " + ((Object) this.f123d);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        Object objBuild = this.f127i;
        if (objBuild == null) {
            MediaDescription.Builder builder = new MediaDescription.Builder();
            builder.setMediaId(this.f120a);
            builder.setTitle(this.f121b);
            builder.setSubtitle(this.f122c);
            builder.setDescription(this.f123d);
            builder.setIconBitmap(this.f124e);
            builder.setIconUri(this.f125f);
            builder.setExtras(this.f126g);
            builder.setMediaUri(this.h);
            objBuild = builder.build();
            this.f127i = objBuild;
        }
        ((MediaDescription) objBuild).writeToParcel(parcel, i6);
    }
}
