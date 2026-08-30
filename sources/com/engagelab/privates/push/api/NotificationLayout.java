package com.engagelab.privates.push.api;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class NotificationLayout implements Parcelable {
    public static final Parcelable.Creator<NotificationLayout> CREATOR = new a();
    private int contentViewId;
    private int iconResourceId;
    private int iconViewId;
    private int layoutId;
    private int timeViewId;
    private int titleViewId;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class a implements Parcelable.Creator<NotificationLayout> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NotificationLayout createFromParcel(Parcel parcel) {
            return new NotificationLayout(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NotificationLayout[] newArray(int i6) {
            return new NotificationLayout[i6];
        }
    }

    public NotificationLayout() {
        this.layoutId = 0;
        this.iconViewId = 0;
        this.iconResourceId = 0;
        this.titleViewId = 0;
        this.contentViewId = 0;
        this.timeViewId = 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getContentViewId() {
        return this.contentViewId;
    }

    public int getIconResourceId() {
        return this.iconResourceId;
    }

    public int getIconViewId() {
        return this.iconViewId;
    }

    public int getLayoutId() {
        return this.layoutId;
    }

    public int getTimeViewId() {
        return this.timeViewId;
    }

    public int getTitleViewId() {
        return this.titleViewId;
    }

    public NotificationLayout setContentViewId(int i6) {
        this.contentViewId = i6;
        return this;
    }

    public NotificationLayout setIconResourceId(int i6) {
        this.iconResourceId = i6;
        return this;
    }

    public NotificationLayout setIconViewId(int i6) {
        this.iconViewId = i6;
        return this;
    }

    public NotificationLayout setLayoutId(int i6) {
        this.layoutId = i6;
        return this;
    }

    public NotificationLayout setTimeViewId(int i6) {
        this.timeViewId = i6;
        return this;
    }

    public NotificationLayout setTitleViewId(int i6) {
        this.titleViewId = i6;
        return this;
    }

    public String toString() {
        return "\n{\n  layoutId=" + this.layoutId + ",\n  iconViewId=" + this.iconViewId + ",\n  titleViewId=" + this.titleViewId + ",\n  contentViewId=" + this.contentViewId + ",\n  timeViewId=" + this.timeViewId + "\n}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i6) {
        parcel.writeInt(this.layoutId);
        parcel.writeInt(this.iconViewId);
        parcel.writeInt(this.iconResourceId);
        parcel.writeInt(this.titleViewId);
        parcel.writeInt(this.contentViewId);
        parcel.writeInt(this.timeViewId);
    }

    public NotificationLayout(Parcel parcel) {
        this.layoutId = 0;
        this.iconViewId = 0;
        this.iconResourceId = 0;
        this.titleViewId = 0;
        this.contentViewId = 0;
        this.timeViewId = 0;
        this.layoutId = parcel.readInt();
        this.iconViewId = parcel.readInt();
        this.iconResourceId = parcel.readInt();
        this.titleViewId = parcel.readInt();
        this.contentViewId = parcel.readInt();
        this.timeViewId = parcel.readInt();
    }
}
