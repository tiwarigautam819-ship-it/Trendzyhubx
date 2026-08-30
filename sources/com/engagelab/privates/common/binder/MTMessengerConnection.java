package com.engagelab.privates.common.binder;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTMessengerConnection implements ServiceConnection {
    private final Context context;

    public MTMessengerConnection(Context context) {
        this.context = context;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        MTMessenger.getInstance().onServiceConnected(this.context, iBinder);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        MTMessenger.getInstance().onServiceDisconnected(this.context);
    }
}
