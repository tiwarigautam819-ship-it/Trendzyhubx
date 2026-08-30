package com.engagelab.privates.common;

import android.content.Context;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.core.global.MTCoreGlobal;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile b f1091c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f1092a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f1093b = 0;

    public static b a() {
        if (f1091c == null) {
            synchronized (b.class) {
                f1091c = new b();
            }
        }
        return f1091c;
    }

    public void b(Context context) {
        if (r.c(context)) {
            if (!d.a().b()) {
                MTCommonLog.d("MTActiveBusiness", "re connect toForeground");
                MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.START_CONNECT, null);
            } else {
                if (this.f1093b == 0) {
                    return;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                this.f1092a = jCurrentTimeMillis;
                if (jCurrentTimeMillis - this.f1093b < MTCoreGlobal.getHeartbeatInterval() / 2) {
                    return;
                }
                MTCommonLog.d("MTActiveBusiness", "re heartbeat");
                d.a().g(context);
                d.a().e(context);
            }
        }
    }

    public void a(Context context) {
        if (r.c(context)) {
            this.f1093b = System.currentTimeMillis();
        }
    }
}
