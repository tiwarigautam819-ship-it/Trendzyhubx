package com.engagelab.privates.common;

import android.content.Context;
import android.os.Bundle;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.component.MTCommonReceiver;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.core.MTCore;
import com.engagelab.privates.core.api.MTProtocol;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.core.global.MTCoreGlobal;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile d f1124e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f1125a = k.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f f1126b = h.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1127c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1128d = true;

    public static d a() {
        if (f1124e == null) {
            synchronized (d.class) {
                try {
                    if (f1124e == null) {
                        f1124e = new d();
                    }
                } finally {
                }
            }
        }
        return f1124e;
    }

    public void b(Context context, Bundle bundle) {
        this.f1126b.a(context, bundle);
    }

    public void c(Context context, Bundle bundle) {
        if (bundle != null && bundle.containsKey("retry")) {
            this.f1128d = bundle.getBoolean("retry");
        }
        f(context);
    }

    public void d(Context context) {
        if (!r.c(context)) {
            MTCommonLog.w("MTConnectBusiness", "connect state is false, can't startConnect");
            return;
        }
        if (!this.f1128d) {
            MTCommonLog.w("MTConnectBusiness", "canReconnect is false, can't startConnect");
            return;
        }
        q.f(context);
        MTCommonLog.d("MTConnectBusiness", "startConnect");
        this.f1125a.e(context);
        this.f1126b.g(context);
    }

    public void e(Context context) {
        MTCommonLog.d("MTConnectBusiness", "startHeartbeat");
        String str = MTCore.f1309a;
        MTCommonPrivatesApi.sendMessageDelayed(context, str, MTCoreConstants.RemoteWhat.START_HEARTBEAT, null, MTCoreGlobal.getHeartbeatInterval());
        MTProtocol threadName = new MTProtocol().setCommand(2).setVersion(4).setBody(s.c(context)).setThreadName(str);
        Bundle bundle = new Bundle();
        bundle.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, threadName);
        b(context, bundle);
    }

    public void f(Context context) {
        MTCommonLog.d("MTConnectBusiness", "stopConnect");
        this.f1125a.g(context);
        this.f1126b.h(context);
    }

    public void g(Context context) {
        MTCommonLog.d("MTConnectBusiness", "stopHeartbeat");
        MTCommonPrivatesApi.removeMessages(context, MTCore.f1309a, MTCoreConstants.RemoteWhat.START_HEARTBEAT);
    }

    public void h(Context context) {
        MTCommonLog.d("MTConnectBusiness", "turnOffConnect");
        r.a(context, false);
        MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.STOP_CONNECT, null);
    }

    public void i(Context context) {
        MTCommonLog.d("MTConnectBusiness", "turnOnConnect");
        r.a(context, true);
        MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.START_CONNECT, null);
    }

    public void b(Context context) {
        MTCommonReceiver commonReceiver = MTGlobal.getCommonReceiver(context);
        if (commonReceiver == null) {
            return;
        }
        commonReceiver.onConnectStatus(context, true);
    }

    public boolean b() {
        return this.f1126b.b();
    }

    public void c(Context context) {
        MTCommonReceiver commonReceiver = MTGlobal.getCommonReceiver(context);
        if (commonReceiver == null) {
            return;
        }
        commonReceiver.onConnectStatus(context, false);
    }

    public void a(Context context, Bundle bundle) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(((MTProtocol) bundle.getParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL)).getBody());
        byte b3 = byteBufferWrap.get();
        byte b7 = byteBufferWrap.get();
        byte b9 = byteBufferWrap.get();
        MTCommonLog.d("MTConnectBusiness", "onAckSuccess command:" + ((int) b3) + ", result:" + ((int) b7) + ", code:" + ((int) b9) + ", serverTime:" + byteBufferWrap.getLong());
        if (b3 == 2) {
            MTCommonLog.i("MTConnectBusiness", "onHeartbeatSuccess");
            this.f1127c = 0;
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.MainWhat.ON_HEARTBEAT, null);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.ON_HEARTBEAT, null);
        }
    }

    public void a(Context context) {
        this.f1127c++;
        MTCommonLog.d("MTConnectBusiness", "onAckFailed :" + this.f1127c);
        if (this.f1127c < 5) {
            g(context);
            e(context);
        } else {
            this.f1127c = 0;
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.STOP_CONNECT, null);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.START_CONNECT, null);
        }
    }
}
