package com.engagelab.privates.common;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.observer.MTObservable;
import com.engagelab.privates.common.observer.MTObserver;
import com.engagelab.privates.common.utils.AESUtil;
import com.engagelab.privates.common.utils.SM4Util;
import com.engagelab.privates.common.utils.SystemUtil;
import com.engagelab.privates.core.MTCore;
import com.engagelab.privates.core.api.MTProtocol;
import com.engagelab.privates.core.api.Outputer;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.core.global.MTCoreGlobal;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.NotYetConnectedException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentMap<MTProtocol, String> f1146a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1148c;

    public abstract String a();

    public abstract void a(Context context);

    public final boolean a(Context context, String str, int i6) {
        try {
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("tcp connect failed "), a());
            a(context, false);
        }
        if (!SystemUtil.isNetworkConnecting(context)) {
            MTCommonLog.e(a(), "can't connect, network is disConnected");
            return false;
        }
        MTCommonLog.d(a(), "tcp connect " + str + ":" + i6);
        if (b(context, str, i6)) {
            MTCommonLog.d(a(), "tcp connect success");
            this.f1147b = true;
            return true;
        }
        return false;
    }

    public final boolean b(Context context) {
        MTProtocol threadName = new MTProtocol().setRid(MTCoreGlobal.getRid()).setCommand(1).setVersion(23).setBody(s.d(context)).setThreadName(MTCore.f1311c);
        if (threadName == null) {
            MTCommonLog.w(a(), "login failed, send request failed");
            return false;
        }
        MTCommonLog.d(a(), "send " + threadName.toString());
        b(context, a(context, threadName));
        MTProtocol mTProtocolA = a(context, d(context));
        if (mTProtocolA == null) {
            MTCommonLog.w(a(), "login failed, receive response failed");
            return false;
        }
        MTCommonLog.d(a(), "receive " + mTProtocolA.toString());
        int iA = s.a(context, mTProtocolA.getBody());
        if (iA == 0) {
            a.a().a(context);
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("get_http_address", (ArrayList) MTCoreGlobal.getHttpAddress(context));
            MTCommonPrivatesApi.sendMessageToMainProcess(context, MTCoreConstants.MainWhat.ON_TCP_CONNECTED, bundle);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.ON_TCP_CONNECTED, null);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.REPORT, null);
            return true;
        }
        if (iA == 102) {
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("retry", false);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.STOP_CONNECT, bundle2);
        }
        MTCommonPrivatesApi.sendMessageToMainProcess(context, MTCoreConstants.MainWhat.ON_TCP_DISCONNECTED, null);
        MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.ON_TCP_DISCONNECTED, null);
        return false;
    }

    public abstract boolean b(Context context, String str, int i6);

    public abstract List<String> c(Context context);

    public abstract boolean c(Context context, byte[] bArr);

    public abstract byte[] d(Context context);

    public final void e(Context context) {
        byte[] bArrD;
        MTCommonLog.d(a(), "receiving......");
        while (this.f1147b && (bArrD = d(context)) != null) {
            MTProtocol mTProtocolA = a(context, bArrD);
            if (mTProtocolA == null) {
                MTCommonLog.d(a(), "parseResponse failed");
            } else {
                b(context, mTProtocolA);
            }
        }
    }

    public final boolean f(Context context) {
        try {
            o.a().a(context);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("device migration check failed: "), a());
        }
        long jR = r.r(context);
        String strJ = r.j(context);
        String strG = r.g(context);
        MTCommonLog.d(a(), "register uid:" + jR + ",rid:" + strJ + ",password:" + strG);
        if (jR > 0 && !TextUtils.isEmpty(strJ) && !TextUtils.isEmpty(strG)) {
            a.a().b(context);
            return true;
        }
        MTProtocol threadName = new MTProtocol().setRid(MTCoreGlobal.getRid()).setCommand(0).setVersion(19).setBody(s.e(context)).setThreadName(MTCore.f1311c);
        if (threadName == null) {
            MTCommonLog.w(a(), "register failed, send request failed");
            return false;
        }
        MTCommonLog.d(a(), "send " + threadName.toString());
        b(context, a(context, threadName));
        MTProtocol mTProtocolA = a(context, d(context));
        if (mTProtocolA == null) {
            MTCommonLog.w(a(), "register failed, receive response failed");
            return false;
        }
        MTCommonLog.d(a(), "receive " + mTProtocolA.toString());
        if (s.b(context, mTProtocolA.getBody()) == 0) {
            a.a().b(context);
            return true;
        }
        MTCommonPrivatesApi.sendMessageToMainProcess(context, MTCoreConstants.MainWhat.ON_TCP_DISCONNECTED, null);
        MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.ON_TCP_DISCONNECTED, null);
        return false;
    }

    public void g(Context context) {
        boolean z5 = true;
        this.f1148c = true;
        if (this.f1147b) {
            MTCommonLog.d(a(), "can't connect, isTcpConnecting");
            return;
        }
        this.f1147b = true;
        List<String> listC = c(context);
        if (listC.isEmpty()) {
            MTCommonLog.w(a(), "there are no tcp connect address");
            a(context, false);
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(listC);
            int connectRetryCount = MTCoreGlobal.getConnectRetryCount();
            boolean z8 = false;
            for (int i6 = 0; i6 < connectRetryCount; i6++) {
                MTCommonLog.d(a(), "connect retry count is " + i6);
                int size = arrayList.size();
                int i9 = 0;
                while (i9 < size) {
                    Object obj = arrayList.get(i9);
                    i9++;
                    String str = (String) obj;
                    if (!r.c(context)) {
                        MTCommonLog.d(a(), "can't connect ,connect state is false");
                        return;
                    }
                    if (!this.f1148c) {
                        MTCommonLog.d(a(), "can't connect ,tcp state is false");
                        return;
                    }
                    String[] strArrSplit = str.split(":");
                    String str2 = strArrSplit[strArrSplit.length - 1];
                    if (a(context, str.substring(0, (str.length() - str2.length()) - 1), Integer.parseInt(str2))) {
                        if (f(context) && b(context)) {
                            e(context);
                        } else {
                            a(context, false);
                        }
                        z8 = false;
                    } else {
                        a(context, false);
                        z8 = true;
                    }
                }
            }
            z5 = z8;
        }
        if (z5) {
            MTCommonPrivatesApi.sendMessageToMainProcess(context, MTCoreConstants.MainWhat.ON_TCP_DISCONNECTED, null);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.ON_TCP_DISCONNECTED, null);
        }
    }

    public void h(Context context) {
        this.f1148c = false;
        a(context, false);
        MTCommonPrivatesApi.sendMessageToMainProcess(context, MTCoreConstants.MainWhat.ON_TCP_DISCONNECTED, null);
        MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.ON_TCP_DISCONNECTED, null);
    }

    public void a(Context context, Bundle bundle) {
        try {
            if (bundle == null) {
                MTCommonLog.d(a(), "can't send, bundle is null");
                return;
            }
            if (bundle.containsKey(MTCoreConstants.Protocol.KEY_DATA)) {
                if (this.f1147b && SystemUtil.isNetworkConnecting(context)) {
                    b(context, bundle.getByteArray(MTCoreConstants.Protocol.KEY_DATA));
                    return;
                }
                MTCommonLog.d(a(), "can't send data, tcp is not connected");
                a(context, false);
                return;
            }
            bundle.setClassLoader(MTProtocol.class.getClassLoader());
            MTProtocol mTProtocol = (MTProtocol) bundle.getParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL);
            if (!SystemUtil.isNetworkConnecting(context)) {
                MTCommonLog.d(a(), "can't send command:" + mTProtocol.getCommand() + ", network is disConnected");
                a(context, false);
                MTCommonPrivatesApi.sendMessageDelayed(context, mTProtocol.getThreadName(), mTProtocol.getCommand(), bundle, 0L);
                return;
            }
            if (!this.f1147b) {
                MTCommonLog.d(a(), "can't send command:" + mTProtocol.getCommand() + ", tcp is disConnected");
                a(context, false);
                MTCommonPrivatesApi.sendMessageDelayed(context, mTProtocol.getThreadName(), mTProtocol.getCommand(), bundle, 0L);
                return;
            }
            if (mTProtocol.getRid() == 0) {
                mTProtocol.setRid(MTCoreGlobal.getRid());
            }
            MTCommonLog.d(a(), "send " + mTProtocol.toString());
            String threadName = mTProtocol.getThreadName();
            byte[] bArrA = a(context, mTProtocol);
            if (bArrA == null) {
                return;
            }
            b(context, bArrA);
            if (TextUtils.isEmpty(threadName)) {
                return;
            }
            this.f1146a.put(mTProtocol, threadName);
            MTCommonPrivatesApi.sendMessageDelayed(context, threadName, mTProtocol.getCommand(), bundle, 10000L);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("send failed "), a());
            a(context, true);
        }
    }

    public final void b(Context context, byte[] bArr) {
        try {
            if (!this.f1147b) {
                MTCommonLog.d(a(), "can't send, tcp is not connected");
                return;
            }
            boolean zC = c(context, bArr);
            MTCommonLog.d(a(), "sendImp :" + zC);
        } catch (IOException e9) {
            String message = e9.getMessage();
            MTCommonLog.w(a(), "send IOException " + message);
            if (message != null && message.startsWith("MyCertificateException:")) {
                r.a(context, -1);
            }
            a(context, true);
        } catch (NotYetConnectedException e10) {
            MTCommonLog.w(a(), "send NotYetConnectedException " + e10.getMessage());
            a(context, true);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("send throwable "), a());
            a(context, true);
        }
    }

    public final void b(Context context, MTProtocol mTProtocol) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, mTProtocol);
        Iterator<MTProtocol> it = this.f1146a.keySet().iterator();
        while (it.hasNext()) {
            MTProtocol next = it.next();
            if (next.getRid() == mTProtocol.getRid()) {
                String str = this.f1146a.get(next);
                mTProtocol.setThreadName(str);
                MTCommonLog.d(a(), "receive " + mTProtocol.toString());
                it.remove();
                MTCommonPrivatesApi.removeMessages(context, str, next.getCommand());
                MTCommonPrivatesApi.sendMessage(context, str, mTProtocol.getCommand(), bundle);
                return;
            }
        }
        for (MTObserver mTObserver : MTObservable.getInstance().observeQueue) {
            if (mTObserver.isSupport(mTProtocol.getCommand())) {
                String str2 = mTObserver.getThreadName()[0];
                mTProtocol.setThreadName(str2);
                MTCommonLog.d(a(), "receive " + mTProtocol.toString());
                MTCommonPrivatesApi.sendMessage(context, str2, mTProtocol.getCommand(), bundle);
            }
        }
    }

    public void a(Context context, boolean z5) {
        MTCommonLog.d(a(), "tcp disconnect");
        this.f1147b = false;
        MTCommonPrivatesApi.removeMessages(context, MTCore.f1309a, MTCoreConstants.RemoteWhat.START_HEARTBEAT);
        try {
            a(context);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("disconnect failed "), a());
        }
        if (z5) {
            MTCommonLog.d(a(), "tcp retry connect");
            if (!SystemUtil.isNetworkConnecting(context)) {
                MTCommonLog.d(a(), "tcp retry connect not has net");
                return;
            }
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.STOP_CONNECT, null);
            String str = MTCore.f1309a;
            MTCommonPrivatesApi.removeMessages(context, str, MTCoreConstants.RemoteWhat.RETRY_CONNECT);
            MTCommonPrivatesApi.sendMessageDelayed(context, str, MTCoreConstants.RemoteWhat.RETRY_CONNECT, null, 2000L);
        }
    }

    public final byte[] a(Context context, MTProtocol mTProtocol) {
        char c8;
        try {
            int command = mTProtocol.getCommand();
            int version = mTProtocol.getVersion();
            long jR = r.r(context);
            int iK = r.k(context);
            long rid = mTProtocol.getRid();
            int encryptType = MTGlobal.getEncryptType();
            Outputer outputer = new Outputer(27);
            outputer.writeU8(27);
            outputer.writeU8(1);
            outputer.writeU8(command ^ 90);
            outputer.writeU8(version ^ 90);
            outputer.writeU64(jR ^ 6510615555426900570L);
            outputer.writeU32(iK);
            outputer.writeU64(rid ^ 6510615555426900570L);
            outputer.writeU16(0);
            outputer.writeU8(encryptType);
            byte[] byteArray = outputer.toByteArray();
            byte[] body = mTProtocol.getBody();
            String md5AesKey = AESUtil.getMd5AesKey(r.r(context));
            if (encryptType != 2) {
                c8 = 1;
            } else {
                c8 = 1;
                body = SM4Util.encryptBytes(body, md5AesKey, md5AesKey.substring(0, 16));
            }
            int length = body.length;
            int i6 = length + 29;
            byte[] bArr = new byte[2];
            byte b3 = (byte) ((i6 >>> 8) & 255);
            bArr[0] = b3;
            bArr[c8] = (byte) (i6 & 255);
            byte b7 = (byte) (b3 | 128);
            bArr[0] = b7;
            bArr[0] = (byte) (b7 | 64);
            MTCommonLog.d(a(), "send ahead length:2, encryption:1, expand:1, totalLength:" + i6);
            MTCommonLog.d(a(), "send head  length:27, headVersion:1, command:" + command + ", version:" + version + ", uid:" + jR + ", rid:" + rid + ", crc16:0, encrypt:" + encryptType);
            String strA = a();
            StringBuilder sb = new StringBuilder("send body  length:");
            sb.append(length);
            MTCommonLog.d(strA, sb.toString());
            byte[] bArr2 = new byte[i6];
            System.arraycopy(bArr, 0, bArr2, 0, 2);
            System.arraycopy(byteArray, 0, bArr2, 2, 27);
            System.arraycopy(body, 0, bArr2, 29, length);
            return bArr2;
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean b() {
        return this.f1147b;
    }

    public final MTProtocol a(Context context, byte[] bArr) {
        byte b3;
        byte b7;
        if (bArr == null) {
            return null;
        }
        try {
            MTProtocol mTProtocol = new MTProtocol();
            byte[] bArr2 = new byte[2];
            System.arraycopy(bArr, 0, bArr2, 0, 2);
            short s3 = ByteBuffer.wrap(bArr2).getShort();
            int i6 = (s3 >>> 15) & 1;
            int i9 = (s3 >>> 14) & 1;
            int i10 = s3 & 16383;
            MTCommonLog.d(a(), "receive ahead length:2, encryption:" + i6 + ", expand:" + i9 + ", totalLength:" + i10);
            int i11 = i10 + (-2);
            byte[] bArr3 = new byte[i11];
            System.arraycopy(bArr, 2, bArr3, 0, i11);
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr3);
            if (i9 == 1) {
                b3 = byteBufferWrap.get();
                b7 = byteBufferWrap.get();
            } else {
                b3 = 20;
                b7 = 0;
            }
            int i12 = byteBufferWrap.get() ^ 90;
            int i13 = byteBufferWrap.get() ^ 90;
            long j3 = byteBufferWrap.getLong() ^ 6510615555426900570L;
            long j8 = byteBufferWrap.getLong() ^ 6510615555426900570L;
            short s8 = byteBufferWrap.getShort();
            byte b9 = (i9 == 1 && b7 == 1) ? byteBufferWrap.get() : (byte) 2;
            mTProtocol.setCommand(i12);
            mTProtocol.setVersion(i13);
            mTProtocol.setRid(j8);
            MTCommonLog.d(a(), "receive head  length:" + ((int) b3) + ", headVersion:" + ((int) b7) + ", command:" + i12 + ", version:" + i13 + ", uid:" + j3 + ", rid:" + j8 + ", crc16:" + ((int) s8) + ", encrypt:" + ((int) b9));
            int i14 = (i10 - b3) + (-2);
            byte[] bArrDecryptBytes = new byte[i14];
            System.arraycopy(bArr3, b3, bArrDecryptBytes, 0, i14);
            String md5AesKey = AESUtil.getMd5AesKey(r.r(context));
            if (b9 == 2) {
                bArrDecryptBytes = SM4Util.decryptBytes(bArrDecryptBytes, md5AesKey);
            }
            mTProtocol.setBody(bArrDecryptBytes);
            MTCommonLog.d(a(), "receive body  length:" + i14 + ", decryptBodyLength:" + bArrDecryptBytes.length);
            return mTProtocol;
        } catch (Throwable unused) {
            return null;
        }
    }
}
