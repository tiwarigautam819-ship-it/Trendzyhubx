package com.engagelab.privates.push.api;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class InAppMessage implements Parcelable {
    public static final Parcelable.Creator<InAppMessage> CREATOR = new a();
    private String appkey;
    private String click;
    private String content;
    private long delay;
    private long duration;
    private long expired;
    private String extras;
    private String imageUrl;
    private long interval;
    private boolean isNotification;
    private String localImageUrl;
    private String messageId;
    private long msgTime;
    private int priority;
    private String target;
    private String targetEvent;
    private int type;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class a implements Parcelable.Creator<InAppMessage> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public InAppMessage createFromParcel(Parcel parcel) {
            return new InAppMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public InAppMessage[] newArray(int i6) {
            return new InAppMessage[i6];
        }
    }

    public InAppMessage() {
        this.isNotification = false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAppkey() {
        return this.appkey;
    }

    public String getClick() {
        return this.click;
    }

    public String getContent() {
        return this.content;
    }

    public long getDelay() {
        return this.delay;
    }

    public long getDuration() {
        return this.duration;
    }

    public long getExpired() {
        return this.expired;
    }

    public String getExtras() {
        return this.extras;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public long getInterval() {
        return this.interval;
    }

    public String getLocalImageUrl() {
        return this.localImageUrl;
    }

    public String getMessageId() {
        return this.messageId;
    }

    public long getMsgTime() {
        return this.msgTime;
    }

    public int getPriority() {
        return this.priority;
    }

    public String getTarget() {
        return this.target;
    }

    public String getTargetEvent() {
        return this.targetEvent;
    }

    public int getType() {
        return this.type;
    }

    public boolean isNotification() {
        return this.isNotification;
    }

    public InAppMessage setAppkey(String str) {
        this.appkey = str;
        return this;
    }

    public InAppMessage setClick(String str) {
        this.click = str;
        return this;
    }

    public InAppMessage setContent(String str) {
        this.content = str;
        return this;
    }

    public InAppMessage setDelay(long j3) {
        this.delay = j3;
        return this;
    }

    public InAppMessage setDuration(long j3) {
        this.duration = j3;
        return this;
    }

    public InAppMessage setExpired(long j3) {
        this.expired = j3;
        return this;
    }

    public InAppMessage setExtras(String str) {
        this.extras = str;
        return this;
    }

    public InAppMessage setImageUrl(String str) {
        this.imageUrl = str;
        return this;
    }

    public InAppMessage setInterval(long j3) {
        this.interval = j3;
        return this;
    }

    public InAppMessage setIsNotification(boolean z5) {
        this.isNotification = z5;
        return this;
    }

    public InAppMessage setLocalImageUrl(String str) {
        this.localImageUrl = str;
        return this;
    }

    public InAppMessage setMessageId(String str) {
        this.messageId = str;
        return this;
    }

    public InAppMessage setMsgTime(long j3) {
        this.msgTime = j3;
        return this;
    }

    public InAppMessage setPriority(int i6) {
        this.priority = i6;
        return this;
    }

    public InAppMessage setTarget(String str) {
        this.target = str;
        return this;
    }

    public InAppMessage setTargetEvent(String str) {
        this.targetEvent = str;
        return this;
    }

    public InAppMessage setType(int i6) {
        this.type = i6;
        return this;
    }

    public String toString() {
        return "InAppMessage{messageId='" + this.messageId + "', appkey='" + this.appkey + "', target='" + this.target + "', targetEvent='" + this.targetEvent + "', imageUrl='" + this.imageUrl + "', click='" + this.click + "', extras='" + this.extras + "', content='" + this.content + "', expired=" + this.expired + ", delay=" + this.delay + ", interval=" + this.interval + ", duration=" + this.duration + ", msgTime=" + this.msgTime + ", type=" + this.type + ", priority=" + this.priority + ", isNotification=" + this.isNotification + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i6) {
        parcel.writeString(this.appkey);
        parcel.writeString(this.messageId);
        parcel.writeString(this.target);
        parcel.writeString(this.targetEvent);
        parcel.writeString(this.imageUrl);
        parcel.writeString(this.localImageUrl);
        parcel.writeString(this.click);
        parcel.writeString(this.extras);
        parcel.writeString(this.content);
        parcel.writeLong(this.expired);
        parcel.writeLong(this.delay);
        parcel.writeLong(this.interval);
        parcel.writeLong(this.duration);
        parcel.writeLong(this.msgTime);
        parcel.writeInt(this.type);
        parcel.writeInt(this.priority);
        parcel.writeInt(this.isNotification ? 1 : 0);
    }

    public InAppMessage(Parcel parcel) {
        this.isNotification = false;
        this.appkey = parcel.readString();
        this.messageId = parcel.readString();
        this.target = parcel.readString();
        this.targetEvent = parcel.readString();
        this.imageUrl = parcel.readString();
        this.localImageUrl = parcel.readString();
        this.click = parcel.readString();
        this.extras = parcel.readString();
        this.content = parcel.readString();
        this.expired = parcel.readLong();
        this.delay = parcel.readLong();
        this.interval = parcel.readLong();
        this.duration = parcel.readLong();
        this.msgTime = parcel.readLong();
        this.type = parcel.readInt();
        this.priority = parcel.readInt();
        this.isNotification = parcel.readInt() != 0;
    }
}
