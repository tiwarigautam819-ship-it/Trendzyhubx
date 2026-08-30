package com.engagelab.privates.common.handler;

import android.os.HandlerThread;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class CommonHandlerThread extends HandlerThread {
    private static final String TAG = "CommonHandlerThread";

    public CommonHandlerThread(String str) {
        super(str);
    }

    @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            super.run();
        } catch (Throwable th) {
            x.j(th, new StringBuilder("run failed "), TAG);
        }
    }
}
