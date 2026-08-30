package com.engagelab.privates.common.binder;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.engagelab.privates.common.observer.MTObservable;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MainMessengerHandler extends Handler {
    private static final String TAG = "MainMessengerHandler";
    private final Context context;

    public MainMessengerHandler(Context context, Looper looper) {
        super(looper);
        this.context = context;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            MTObservable.getInstance().dispatchMessage(this.context, message.what, message.getData());
        } catch (Throwable th) {
            x.j(th, new StringBuilder("handleMessage failed "), TAG);
        }
    }
}
