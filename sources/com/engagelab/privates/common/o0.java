package com.engagelab.privates.common;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.StringUtil;
import com.engagelab.privates.core.api.MTProtocol;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.MTPush;
import com.engagelab.privates.push.constants.MTPushConstants;
import java.io.LineNumberReader;
import java.io.StringReader;
import java.nio.ByteBuffer;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile o0 f1234a;

    public static o0 a() {
        if (f1234a == null) {
            synchronized (o0.class) {
                f1234a = new o0();
            }
        }
        return f1234a;
    }

    public void a(Context context, Bundle bundle) {
        JSONObject jSONObjectOptJSONObject;
        try {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(((MTProtocol) bundle.getParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL)).getBody());
            byte b3 = byteBufferWrap.get();
            long j3 = byteBufferWrap.getLong();
            long jIntValue = Long.valueOf(j3).intValue();
            LineNumberReader lineNumberReader = new LineNumberReader(new StringReader(StringUtil.getTlv2(byteBufferWrap)));
            String line = lineNumberReader.readLine();
            String line2 = lineNumberReader.readLine();
            String line3 = lineNumberReader.readLine();
            if (!TextUtils.equals(line, context.getPackageName())) {
                MTCommonLog.w("MTMessageBusiness", "the message applicationId is [" + line + "]");
                return;
            }
            if (!TextUtils.equals(line2, MTGlobal.getAppKey(context))) {
                MTCommonLog.w("MTMessageBusiness", "the message applicationKey is [" + line2 + "]");
                MTCommonLog.w("MTMessageBusiness", "Local applicationKey is [" + MTGlobal.getAppKey(context) + "]");
                return;
            }
            if (TextUtils.isEmpty(line3)) {
                MTCommonLog.w("MTMessageBusiness", "the message is empty");
                return;
            }
            JSONObject jSONObject = new JSONObject(line3);
            int iOptInt = jSONObject.optInt("n_only");
            int iOptInt2 = jSONObject.optInt("show_type");
            try {
                a(context, b3, j3);
                if (u0.a(context, s0.a(jSONObject, jIntValue))) {
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString(MTPushConstants.Message.KEY_MESSAGE, jSONObject.toString());
                MTCommonLog.debugOnly("MTMessageBusiness", "onMessage:" + MTCommonLog.toLogString(jSONObject));
                MTCommonLog.d("MTMessageBusiness", "onMessage:" + jIntValue);
                if (jSONObject.has("geofence") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("geofence")) != null && !TextUtils.isEmpty(jSONObjectOptJSONObject.optString("geofenceid"))) {
                    MTCommonLog.d("MTMessageBusiness", "is geofence notification");
                    MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTPushConstants.RemoteWhat.ADD_GEOFENCE, bundle2);
                    return;
                }
                MTCommonLog.w("MTMessageBusiness", "onMessage type=" + iOptInt2 + " flag=" + iOptInt + " messageType=" + ((int) b3));
                bundle2.putLong(MTPushConstants.Message.KEY_MESSAGE_ID, jIntValue);
                if (b3 == 105) {
                    m0.a().a(context, bundle2);
                    return;
                }
                z0.a().b(context, bundle2);
                bundle2.putInt(MTPushConstants.Message.KEY_MESSAGE_TYPE, b3);
                if (iOptInt2 == 4) {
                    q0.b().a(context, bundle2);
                    p0.b().a(context, bundle2);
                } else if (iOptInt == 1) {
                    q0.b().a(context, bundle2);
                } else if (iOptInt == 0) {
                    p0.b().a(context, bundle2);
                }
            } catch (Throwable th) {
                th = th;
                q2.x.j(th, new StringBuilder("onMessage failed "), "MTMessageBusiness");
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void a(Context context, int i6, long j3) {
        MTProtocol threadName = new MTProtocol().setCommand(4).setVersion(2).setBody(c1.a(i6, j3)).setThreadName(MTPush.f1313a);
        Bundle bundle = new Bundle();
        bundle.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, threadName);
        MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.UPLOAD, bundle);
    }
}
