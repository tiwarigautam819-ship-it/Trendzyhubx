package com.engagelab.privates.push.api;

import android.os.Parcel;
import android.os.Parcelable;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MobileNumberMessage implements Parcelable {
    public static final Parcelable.Creator<MobileNumberMessage> CREATOR = new a();
    private int code;
    private String mobileNumber;
    private int sequence;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class a implements Parcelable.Creator<MobileNumberMessage> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MobileNumberMessage createFromParcel(Parcel parcel) {
            return new MobileNumberMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MobileNumberMessage[] newArray(int i6) {
            return new MobileNumberMessage[i6];
        }
    }

    public MobileNumberMessage() {
        this.sequence = 0;
        this.code = -1;
        this.mobileNumber = "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCode() {
        return this.code;
    }

    public String getMobileNumber() {
        return this.mobileNumber;
    }

    public int getSequence() {
        return this.sequence;
    }

    public MobileNumberMessage setCode(int i6) {
        this.code = i6;
        return this;
    }

    public MobileNumberMessage setMobileNumber(String str) {
        this.mobileNumber = str;
        return this;
    }

    public MobileNumberMessage setSequence(int i6) {
        this.sequence = i6;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("\n{\n  sequence=");
        sb.append(this.sequence);
        sb.append(",\n  code=");
        sb.append(this.code);
        sb.append(",\n  mobileNumber=");
        return x.h(sb, this.mobileNumber, "\n}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i6) {
        parcel.writeInt(this.sequence);
        parcel.writeInt(this.code);
        parcel.writeString(this.mobileNumber);
    }

    public MobileNumberMessage(Parcel parcel) {
        this.sequence = 0;
        this.code = -1;
        this.mobileNumber = "";
        this.sequence = parcel.readInt();
        this.code = parcel.readInt();
        this.mobileNumber = parcel.readString();
    }
}
