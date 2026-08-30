package com.engagelab.privates.common;

import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.push.api.MTPushPrivatesApi;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ConcurrentLinkedQueue<Long> f1281a = new ConcurrentLinkedQueue<>();

    public int a() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (f1281a.size() < 10) {
            f1281a.offer(Long.valueOf(jCurrentTimeMillis));
            return 0;
        }
        long jLongValue = jCurrentTimeMillis - f1281a.element().longValue();
        if (jLongValue < 0) {
            f1281a.clear();
            MTCommonLog.w("MTOperationBusiness", "set tags/alias failed, time shaft error，please try again");
            return MTPushPrivatesApi.Code.INVOKE_TOO_SOON;
        }
        if (jLongValue <= 10000) {
            MTCommonLog.w("MTOperationBusiness", "set tags/alias too soon, over 10 times in 10s");
            return MTPushPrivatesApi.Code.INVOKE_TOO_SOON;
        }
        while (f1281a.size() >= 10) {
            f1281a.poll();
        }
        f1281a.offer(Long.valueOf(jCurrentTimeMillis));
        return 0;
    }
}
