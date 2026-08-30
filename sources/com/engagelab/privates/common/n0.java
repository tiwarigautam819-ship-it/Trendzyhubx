package com.engagelab.privates.common;

import android.content.Context;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.observer.MTObserver;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class n0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile n0 f1231b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1232a = false;

    public static n0 a() {
        if (f1231b == null) {
            synchronized (n0.class) {
                f1231b = new n0();
            }
        }
        return f1231b;
    }

    public final void b(Context context) {
        try {
            MTCommonPrivatesApi.observer(context, (MTObserver) Class.forName("com.engagelab.privates.push.oth.ma.OTHMa").newInstance());
        } catch (Throwable unused) {
            MTCommonLog.d("MTMABusiness", "not integrated OTHMa.aar");
        }
    }

    public synchronized void a(Context context) {
        MTCommonLog.d("MTMABusiness", "addObserver:" + this.f1232a);
        if (this.f1232a) {
            return;
        }
        b(context);
        this.f1232a = true;
    }
}
