package com.engagelab.privates.core.api;

import android.os.Parcel;
import android.os.Parcelable;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTProtocol implements Parcelable {
    public static final Parcelable.Creator<MTProtocol> CREATOR = new a();
    private byte[] body;
    private int command;
    private long rid;
    private String threadName;
    private int version;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class a implements Parcelable.Creator<MTProtocol> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MTProtocol createFromParcel(Parcel parcel) {
            return new MTProtocol(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MTProtocol[] newArray(int i6) {
            return new MTProtocol[i6];
        }
    }

    public MTProtocol() {
        this.rid = 0L;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public byte[] getBody() {
        return this.body;
    }

    public int getCommand() {
        return this.command;
    }

    public long getRid() {
        return this.rid;
    }

    public String getThreadName() {
        return this.threadName;
    }

    public int getVersion() {
        return this.version;
    }

    public MTProtocol setBody(byte[] bArr) {
        this.body = bArr;
        return this;
    }

    public MTProtocol setCommand(int i6) {
        this.command = i6;
        return this;
    }

    public MTProtocol setRid(long j3) {
        this.rid = j3;
        return this;
    }

    public MTProtocol setThreadName(String str) {
        this.threadName = str;
        return this;
    }

    public MTProtocol setVersion(int i6) {
        this.version = i6;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("\n{\n  rid=");
        sb.append(this.rid);
        sb.append(",\n  command=");
        sb.append(this.command);
        sb.append(",\n  version=");
        sb.append(this.version);
        sb.append(",\n  body=");
        sb.append(this.body);
        sb.append(",\n  threadName=");
        return x.h(sb, this.threadName, "\n}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i6) {
        parcel.writeLong(this.rid);
        parcel.writeInt(this.command);
        parcel.writeInt(this.version);
        parcel.writeByteArray(this.body);
        parcel.writeString(this.threadName);
    }

    public MTProtocol(Parcel parcel) {
        this.rid = 0L;
        this.rid = parcel.readInt();
        this.command = parcel.readInt();
        this.version = parcel.readInt();
        this.body = parcel.createByteArray();
        this.threadName = parcel.readString();
    }
}
