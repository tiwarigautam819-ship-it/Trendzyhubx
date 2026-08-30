package com.engagelab.privates.common;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.DateUtil;
import com.engagelab.privates.common.utils.StringUtil;
import com.engagelab.privates.core.api.MTReporter;
import com.engagelab.privates.core.constants.MTCoreConstants;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class l0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile l0 f1208d = new l0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f1209a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f1210b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1211c = false;

    public static l0 a() {
        return f1208d;
    }

    public synchronized void b(Context context) {
        try {
            this.f1211c = true;
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.f1210b == 0) {
                this.f1210b = a1.c(context);
            }
            if (0 == this.f1209a) {
                this.f1209a = a1.d(context);
            }
            if (jCurrentTimeMillis - this.f1210b < 30000) {
                return;
            }
            this.f1209a = jCurrentTimeMillis;
            a1.b(context, jCurrentTimeMillis);
            b(context, jCurrentTimeMillis);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void a(Context context) {
        this.f1211c = false;
        if (0 == this.f1209a) {
            MTCommonLog.w("MTActiveBusiness", "toBackground lastToForegroundTime is 0 ");
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        a(context, jCurrentTimeMillis, this.f1209a);
        this.f1210b = jCurrentTimeMillis;
        a1.a(context, jCurrentTimeMillis);
    }

    public static synchronized void a(Context context, long j3, long j8) {
        String strA;
        synchronized (l0.class) {
            try {
                strA = a1.a(context);
            } finally {
            }
            if (TextUtils.isEmpty(strA)) {
                MTCommonLog.d("MTActiveBusiness", "session is null");
                return;
            }
            long j9 = (j3 - j8) / 1000;
            if (j9 < 0) {
                j9 = 0;
            }
            String todayDateTimeForReport = DateUtil.getTodayDateTimeForReport();
            String str = todayDateTimeForReport.split("_")[0];
            String str2 = todayDateTimeForReport.split("_")[1];
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("session_id", strA);
            jSONObject.put("date", str);
            jSONObject.put("time", str2);
            jSONObject.put("duration", j9);
            a1.b(context, jSONObject.toString());
        }
    }

    public static synchronized void b(Context context, long j3) {
        String strA;
        synchronized (l0.class) {
            try {
                String strB = a1.b(context);
                if (!TextUtils.isEmpty(strB)) {
                    MTReporter content = new MTReporter().setType("active_terminate").setContent(new JSONObject(strB).toString());
                    Bundle bundle = new Bundle();
                    bundle.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, content);
                    MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.REPORT, bundle);
                }
                strA = a(context, j3);
            } finally {
            }
            if (TextUtils.isEmpty(strA)) {
                MTCommonLog.d("MTActiveBusiness", "session is null");
                return;
            }
            a1.a(context, strA);
            String todayDateTimeForReport = DateUtil.getTodayDateTimeForReport();
            String str = todayDateTimeForReport.split("_")[0];
            String str2 = todayDateTimeForReport.split("_")[1];
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("session_id", strA);
            jSONObject.put("date", str);
            jSONObject.put("time", str2);
            MTReporter content2 = new MTReporter().setType("active_launch").setContent(jSONObject.toString());
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, content2);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.REPORT, bundle2);
        }
    }

    public static String a(Context context, long j3) {
        StringBuilder sb = new StringBuilder();
        String appKey = MTGlobal.getAppKey(context);
        if (!TextUtils.isEmpty(appKey)) {
            sb.append(appKey);
        }
        String deviceId = MTGlobal.getDeviceId(context);
        if (!TextUtils.isEmpty(deviceId)) {
            sb.append(deviceId);
        }
        sb.append(j3);
        return StringUtil.get32MD5String(sb.toString());
    }

    public boolean b() {
        return this.f1211c;
    }
}
