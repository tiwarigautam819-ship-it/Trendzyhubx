package com.engagelab.privates.common.binder;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.engagelab.privates.common.observer.MTObservable;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class RemoteMessengerHandler extends Handler {
    private static final String TAG = "RemoteMessengerHandler";
    private final Context context;

    public RemoteMessengerHandler(Context context, Looper looper) {
        super(looper);
        this.context = context;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            MTMessenger.getInstance().initMainMessenger(message.replyTo);
            int i6 = message.what;
            Bundle data = message.getData();
            if (i6 == 101) {
                MTObservable.getInstance().observerOnRemoteProcess(this.context, data);
            } else {
                MTObservable.getInstance().dispatchMessage(this.context, i6, data);
            }
        } catch (Throwable th) {
            x.j(th, new StringBuilder("handleMessage failed "), TAG);
        }
    }
}
