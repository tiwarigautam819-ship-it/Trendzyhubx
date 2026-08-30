package com.engagelab.privates.push.api;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class PlatformTokenMessage implements Parcelable {
    public static final Parcelable.Creator<PlatformTokenMessage> CREATOR = new a();
    private int isUserSettings;
    private byte platform;
    private String region;
    private String token;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class a implements Parcelable.Creator<PlatformTokenMessage> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlatformTokenMessage createFromParcel(Parcel parcel) {
            return new PlatformTokenMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlatformTokenMessage[] newArray(int i6) {
            return new PlatformTokenMessage[i6];
        }
    }

    public PlatformTokenMessage() {
        this.isUserSettings = 0;
        this.region = "NULL";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean getIsUserSettings() {
        return this.isUserSettings != 0;
    }

    public byte getPlatform() {
        return this.platform;
    }

    public String getRegion() {
        return this.region;
    }

    public String getToken() {
        return this.token;
    }

    public PlatformTokenMessage setIsUserSettings(boolean z5) {
        if (z5) {
            this.isUserSettings = 1;
            return this;
        }
        this.isUserSettings = 0;
        return this;
    }

    public PlatformTokenMessage setPlatform(byte b3) {
        this.platform = b3;
        return this;
    }

    public PlatformTokenMessage setRegion(String str) {
        this.region = str;
        return this;
    }

    public PlatformTokenMessage setToken(String str) {
        this.token = str;
        return this;
    }

    public String toString() {
        return "\n{\n  platform=" + ((int) this.platform) + ",\n  token=" + this.token + "\n  region=" + this.region + "\n  isUserSettings=" + getIsUserSettings() + "\n}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i6) {
        parcel.writeByte(this.platform);
        parcel.writeString(this.token);
        parcel.writeString(this.region);
        parcel.writeInt(this.isUserSettings);
    }

    public PlatformTokenMessage(Parcel parcel) {
        this.isUserSettings = 0;
        this.region = "NULL";
        this.platform = parcel.readByte();
        this.token = parcel.readString();
        this.region = parcel.readString();
        this.isUserSettings = parcel.readInt();
    }
}
