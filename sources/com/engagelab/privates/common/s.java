package com.engagelab.privates.common;

import android.content.Context;
import android.os.Build;
import com.engagelab.privates.common.cache.MTCommonConfig;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.observer.MTObservable;
import com.engagelab.privates.common.observer.MTObserver;
import com.engagelab.privates.common.utils.DeviceUtil;
import com.engagelab.privates.common.utils.StringUtil;
import com.engagelab.privates.common.utils.SystemUtil;
import com.engagelab.privates.core.api.Outputer;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class s {
    public static int a(Context context, byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        short s3 = byteBufferWrap.getShort();
        r.b(context, (int) s3);
        if (s3 == 0) {
            int i6 = byteBufferWrap.getInt();
            byteBufferWrap.getShort();
            StringUtil.getTlv2(byteBufferWrap);
            int i9 = byteBufferWrap.getInt();
            byteBufferWrap.get();
            r.d(context, i6);
            r.a(context, i9);
            MTCommonLog.d("MTCoreProtocol", "onLoginSuccess seedId:" + i6 + ", serverTime:" + i9);
            return s3;
        }
        if (s3 != 108) {
            MTCommonLog.e("MTCoreProtocol", "login failed code:" + ((int) s3) + ", message:" + StringUtil.getTlv2(byteBufferWrap));
            return s3;
        }
        r.b(context, 0L);
        r.c(context, "");
        r.b(context, "");
        r.d(context, 0);
        r.a(context, 0L);
        MTCommonLog.e("MTCoreProtocol", "onLoginFailed, will re-register");
        return s3;
    }

    public static int b(Context context, byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        short s3 = byteBufferWrap.getShort();
        r.c(context, s3);
        if (s3 != 0) {
            MTCommonLog.e("MTCoreProtocol", "onRegisterFailed code:" + ((int) s3) + ", message:" + StringUtil.getTlv2(byteBufferWrap));
            return s3;
        }
        long j3 = byteBufferWrap.getLong();
        String tlv2 = StringUtil.getTlv2(byteBufferWrap);
        String tlv22 = StringUtil.getTlv2(byteBufferWrap);
        r.b(context, j3);
        r.c(context, tlv22);
        r.b(context, tlv2);
        MTCommonLog.d("MTCoreProtocol", "onRegisterSuccess uid:" + j3 + ", registrationId:" + tlv22 + ", password:" + tlv2);
        return s3;
    }

    public static byte[] c(Context context) {
        Outputer outputer = new Outputer(1);
        outputer.writeU8(c());
        return outputer.toByteArray();
    }

    public static byte[] d(Context context) {
        String md5 = StringUtil.toMD5(r.g(context));
        String strA = a();
        String appKey = MTGlobal.getAppKey(context);
        short sC = c();
        byte bH = r.h(context);
        int networkType = MTGlobal.getNetworkType();
        String deviceId = MTCommonConfig.getDeviceId(context);
        String countryCode = MTGlobal.getCountryCode(context);
        MTCommonLog.e("MTCoreProtocol", "login with uid:" + r.r(context) + ", registrationId:" + r.j(context) + ", platform:" + ((int) bH));
        byte[] bytes = md5.getBytes();
        byte[] bytes2 = strA.getBytes();
        byte[] bytes3 = appKey.getBytes();
        byte[] bytes4 = deviceId.getBytes();
        byte[] bytes5 = "".getBytes();
        byte[] bytes6 = countryCode.getBytes();
        byte[] bytes7 = "".getBytes();
        Outputer outputer = new Outputer(bytes.length + 4 + bytes2.length + bytes3.length + 7 + bytes4.length + bytes5.length + bytes6.length + bytes7.length);
        outputer.writeU8(97);
        outputer.writeU8(0);
        outputer.writeU16(0);
        outputer.writeByteArrayIncludeLength(bytes);
        outputer.writeByteArrayIncludeLength(bytes2);
        outputer.writeByteArrayIncludeLength(bytes3);
        outputer.writeU8(0);
        outputer.writeU32(sC);
        outputer.writeU8(bH);
        outputer.writeU8(networkType);
        outputer.writeByteArrayIncludeLength(bytes4);
        outputer.writeByteArrayIncludeLength(bytes5);
        outputer.writeByteArrayIncludeLength(bytes6);
        outputer.writeByteArrayIncludeLength(bytes7);
        return outputer.toByteArray();
    }

    public static byte[] e(Context context) {
        r.b(context, 0L);
        r.c(context, "");
        r.b(context, "");
        r.d(context, 0);
        r.a(context, 0L);
        String str = " $$ $$" + context.getPackageName() + "$$" + MTGlobal.getAppKey(context);
        String appVersionName = MTGlobal.getAppVersionName(context);
        String strA = a(context);
        String strB = b(context);
        short sC = c();
        MTCommonLog.d("MTCoreProtocol", "register with clientInfo:" + strA + ", deviceInfo:" + strB);
        byte[] bytes = str.getBytes();
        byte[] bytes2 = appVersionName.getBytes();
        byte[] bytes3 = strA.getBytes();
        byte[] bytes4 = strB.getBytes();
        byte[] bytes5 = "".getBytes();
        Outputer outputer = new Outputer(bytes.length + bytes2.length + bytes3.length + 1 + bytes4.length + 4 + bytes5.length);
        outputer.writeByteArrayIncludeLength(bytes);
        outputer.writeByteArrayIncludeLength(bytes2);
        outputer.writeByteArrayIncludeLength(bytes3);
        outputer.writeU8(0);
        outputer.writeByteArrayIncludeLength(bytes4);
        outputer.writeU32(sC);
        outputer.writeByteArrayIncludeLength(bytes5);
        return outputer.toByteArray();
    }

    public static short c() {
        int sdkPriority;
        int i6 = 0;
        for (MTObserver mTObserver : MTObservable.getInstance().observeQueue) {
            if (mTObserver.isSdk() && i6 < (sdkPriority = mTObserver.getSdkPriority())) {
                i6 = sdkPriority;
            }
        }
        short sdkFlag = 0;
        for (int i9 = 0; i9 <= i6; i9++) {
            for (MTObserver mTObserver2 : MTObservable.getInstance().observeQueue) {
                if (mTObserver2.isSdk() && mTObserver2.getSdkPriority() == i9) {
                    sdkFlag = (short) (sdkFlag | mTObserver2.getSdkFlag());
                }
            }
        }
        return sdkFlag;
    }

    public static String b(Context context) {
        return q2.x.g("0$$", MTGlobal.getDeviceId(context), "$$ $$ $$ $$ ");
    }

    public static String a(Context context) {
        return Build.VERSION.RELEASE.toLowerCase() + "," + Build.VERSION.SDK_INT + "$$" + Build.MODEL.toLowerCase() + "$$$$" + Build.DEVICE.toLowerCase() + "$$" + MTGlobal.getAppChannel(context) + "$$" + b() + "$$" + SystemUtil.isSystemApp(context) + "$$" + DeviceUtil.getResolution(context) + "$$" + Build.MANUFACTURER.toLowerCase();
    }

    public static String b() {
        int sdkPriority;
        int i6 = 0;
        for (MTObserver mTObserver : MTObservable.getInstance().observeQueue) {
            if (mTObserver.isSdk() && i6 < (sdkPriority = mTObserver.getSdkPriority())) {
                i6 = sdkPriority;
            }
        }
        StringBuilder sb = new StringBuilder();
        for (int i9 = 0; i9 <= i6; i9++) {
            for (MTObserver mTObserver2 : MTObservable.getInstance().observeQueue) {
                if (mTObserver2.isSdk() && mTObserver2.getSdkPriority() == i9) {
                    sb.append(mTObserver2.getSdkVersion());
                    sb.append("|");
                }
            }
        }
        return sb.substring(0, sb.length() - 1);
    }

    public static String a() {
        int sdkPriority;
        int i6 = 0;
        for (MTObserver mTObserver : MTObservable.getInstance().observeQueue) {
            if (mTObserver.isSdk() && i6 < (sdkPriority = mTObserver.getSdkPriority())) {
                i6 = sdkPriority;
            }
        }
        StringBuilder sb = new StringBuilder();
        for (int i9 = 1; i9 <= i6; i9++) {
            for (MTObserver mTObserver2 : MTObservable.getInstance().observeQueue) {
                if (mTObserver2.isSdk() && mTObserver2.getSdkPriority() == i9) {
                    String[] strArrSplit = mTObserver2.getSdkVersion().split("\\.");
                    sb.append(Integer.parseInt(strArrSplit[2]) + (Integer.parseInt(strArrSplit[0]) << 16) + (Integer.parseInt(strArrSplit[1]) << 8));
                }
            }
        }
        return sb.toString();
    }
}
