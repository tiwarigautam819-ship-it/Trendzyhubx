package com.engagelab.privates.common.observer;

import android.content.Context;
import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class MTObserver {
    public abstract void dispatchMessage(Context context, int i6, Bundle bundle);

    public short getSdkFlag() {
        return (short) 0;
    }

    public String getSdkName() {
        return null;
    }

    public int getSdkPriority() {
        return 0;
    }

    public String getSdkVersion() {
        return null;
    }

    public String[] getThreadName() {
        return new String[0];
    }

    public boolean isSdk() {
        return false;
    }

    public abstract boolean isSupport(int i6);

    public void handleDelayMessage(Context context, int i6, Bundle bundle) {
    }

    public void handleMessage(Context context, int i6, Bundle bundle) {
    }
}
