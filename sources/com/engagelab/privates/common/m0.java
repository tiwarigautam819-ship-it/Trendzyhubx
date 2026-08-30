package com.engagelab.privates.common;

import android.content.Context;
import android.os.Bundle;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.observer.MTObserver;
import com.engagelab.privates.inapp.MTInApp;
import com.engagelab.privates.push.constants.MTPushConstants;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class m0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile m0 f1229b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1230a;

    public synchronized void a(Context context) {
        MTCommonLog.d("MTInAppBusiness", " init:" + this.f1230a);
        if (this.f1230a) {
            return;
        }
        b(context);
        this.f1230a = true;
    }

    public final void b(Context context) {
        try {
            String str = MTInApp.f1312a;
            MTCommonPrivatesApi.observer(context, (MTObserver) MTInApp.class.newInstance());
        } catch (Throwable unused) {
            MTCommonLog.d("MTInAppBusiness", "not integrated OTHSound.aar");
        }
    }

    public static m0 a() {
        if (f1229b == null) {
            synchronized (m0.class) {
                f1229b = new m0();
            }
        }
        return f1229b;
    }

    public synchronized void a(Context context, Bundle bundle) {
        MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTPushConstants.RemoteWhat.INAPP_MESSAGE, bundle);
    }
}
