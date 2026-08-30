package com.engagelab.privates.core.api;

import android.os.Parcel;
import android.os.Parcelable;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class WakeMessage implements Parcelable {
    public static final int ACTIVITY = 8;
    public static final int BIND_SERVICE = 2;
    public static final int CONTENT_PROVIDER = 4;
    public static final Parcelable.Creator<WakeMessage> CREATOR = new a();
    public static final int START_SERVICE = 1;
    private String packageName;
    private int type;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class a implements Parcelable.Creator<WakeMessage> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public WakeMessage createFromParcel(Parcel parcel) {
            return new WakeMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public WakeMessage[] newArray(int i6) {
            return new WakeMessage[i6];
        }
    }

    public WakeMessage() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public int getType() {
        return this.type;
    }

    public WakeMessage setPackageName(String str) {
        this.packageName = str;
        return this;
    }

    public WakeMessage setType(int i6) {
        this.type = i6;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("\n{\n  type=");
        sb.append(this.type);
        sb.append(",\n  packageName=");
        return x.h(sb, this.packageName, "\n}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i6) {
        parcel.writeInt(this.type);
        parcel.writeString(this.packageName);
    }

    public WakeMessage(Parcel parcel) {
        this.type = parcel.readInt();
        this.packageName = parcel.readString();
    }
}
