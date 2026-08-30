package com.engagelab.privates.common.log;

import android.os.Process;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTLogEntry {
    private final String level;
    private final String message;
    private final int processId;
    private final String processType;
    private final String tag;
    private final long threadId;
    private final long timestamp;

    public MTLogEntry(String str, String str2, String str3) {
        this.timestamp = System.currentTimeMillis();
        this.processId = Process.myPid();
        this.threadId = Thread.currentThread().getId();
        this.level = str == null ? "UNKNOWN" : str;
        this.tag = str2 == null ? "DEFAULT" : str2;
        this.message = str3 == null ? "" : str3;
        this.processType = "UNKNOWN";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            MTLogEntry mTLogEntry = (MTLogEntry) obj;
            if (this.timestamp == mTLogEntry.timestamp && this.processId == mTLogEntry.processId && this.threadId == mTLogEntry.threadId && this.level.equals(mTLogEntry.level) && this.tag.equals(mTLogEntry.tag) && this.message.equals(mTLogEntry.message) && this.processType.equals(mTLogEntry.processType)) {
                return true;
            }
        }
        return false;
    }

    public String getLevel() {
        return this.level;
    }

    public String getMessage() {
        return this.message;
    }

    public int getProcessId() {
        return this.processId;
    }

    public String getProcessType() {
        return this.processType;
    }

    public String getTag() {
        return this.tag;
    }

    public long getThreadId() {
        return this.threadId;
    }

    public String getThreadName() {
        return Thread.currentThread().getName();
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public int hashCode() {
        long j3 = this.timestamp;
        int i6 = ((((int) (j3 ^ (j3 >>> 32))) * 31) + this.processId) * 31;
        long j8 = this.threadId;
        return this.processType.hashCode() + x.d(x.d(x.d((i6 + ((int) (j8 ^ (j8 >>> 32)))) * 31, this.level, 31), this.tag, 31), this.message, 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("MTLogEntry{timestamp=");
        sb.append(this.timestamp);
        sb.append(", processId=");
        sb.append(this.processId);
        sb.append(", threadId=");
        sb.append(this.threadId);
        sb.append(", level='");
        sb.append(this.level);
        sb.append("', tag='");
        sb.append(this.tag);
        sb.append("', message='");
        sb.append(this.message);
        sb.append("', processType='");
        return x.h(sb, this.processType, "'}");
    }

    public MTLogEntry(String str, String str2, String str3, String str4) {
        this.timestamp = System.currentTimeMillis();
        this.processId = Process.myPid();
        this.threadId = Thread.currentThread().getId();
        this.level = str == null ? "UNKNOWN" : str;
        this.tag = str2 == null ? "DEFAULT" : str2;
        this.message = str3 == null ? "" : str3;
        this.processType = str4 == null ? "UNKNOWN" : str4;
    }

    public MTLogEntry(long j3, int i6, long j8, String str, String str2, String str3) {
        this.timestamp = j3;
        this.processId = i6;
        this.threadId = j8;
        this.level = str == null ? "UNKNOWN" : str;
        this.tag = str2 == null ? "DEFAULT" : str2;
        this.message = str3 == null ? "" : str3;
        this.processType = "UNKNOWN";
    }

    public MTLogEntry(long j3, int i6, long j8, String str, String str2, String str3, String str4) {
        this.timestamp = j3;
        this.processId = i6;
        this.threadId = j8;
        this.level = str == null ? "UNKNOWN" : str;
        this.tag = str2 == null ? "DEFAULT" : str2;
        this.message = str3 == null ? "" : str3;
        this.processType = str4 == null ? "UNKNOWN" : str4;
    }
}
