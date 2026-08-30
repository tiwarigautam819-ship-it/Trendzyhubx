package com.engagelab.privates.common.component;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.engagelab.privates.common.binder.MTMessenger;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.log.MTLogConfigHelper;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTCommonService extends Service {
    private static final String TAG = "MTCommonService";

    private void initLog() {
        MTCommonLog.initLogCache(getApplicationContext());
        MTLogConfigHelper.updateLogCtrlConfig(getApplicationContext());
        if (!MTCommonLog.isProcessTypeSet()) {
            MTCommonLog.setProcessType(false);
        }
        MTLogConfigHelper.sendReport(getApplicationContext());
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return MTMessenger.getInstance().getBinder();
    }

    @Override // android.app.Service
    public final void onCreate() {
        MTCommonLog.i(TAG, "onService create");
        MTMessenger.getInstance().initOnRemoteProcess(getApplicationContext());
        initLog();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        MTCommonLog.i(TAG, "onService destroy");
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i6, int i9) {
        return 2;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }
}
