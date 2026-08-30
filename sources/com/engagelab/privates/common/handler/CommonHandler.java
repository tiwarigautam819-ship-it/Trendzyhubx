package com.engagelab.privates.common.handler;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.engagelab.privates.common.observer.MTObservable;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class CommonHandler extends Handler {
    private static final String TAG = "CommonHandler";
    private static final int WHAT_RELEASE = -1000;
    private final Context context;
    private final int releaseInterval;

    public CommonHandler(Looper looper, Context context, int i6) {
        super(looper);
        this.context = context;
        this.releaseInterval = i6;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            int i6 = message.arg1;
            String strValueOf = String.valueOf(message.obj);
            int i9 = message.what;
            Bundle data = message.getData();
            if (i9 == WHAT_RELEASE) {
                MTHandler.getInstance().releaseHandler(this.context, getLooper().getThread().getName());
                return;
            }
            removeMessages(WHAT_RELEASE);
            sendEmptyMessageDelayed(WHAT_RELEASE, this.releaseInterval);
            MTObservable.getInstance().handleMessage(this.context, i6, strValueOf, i9, data);
        } catch (Throwable th) {
            x.j(th, new StringBuilder("handleMessage failed "), TAG);
        }
    }
}
