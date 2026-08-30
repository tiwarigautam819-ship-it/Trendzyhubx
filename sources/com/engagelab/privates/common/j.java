package com.engagelab.privates.common;

import android.content.Context;
import android.text.TextUtils;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.AESUtil;
import com.engagelab.privates.common.utils.GZipUtil;
import com.engagelab.privates.common.utils.SM4Util;
import com.engagelab.privates.common.utils.StringUtil;
import com.engagelab.privates.common.utils.SystemUtil;
import com.engagelab.privates.core.api.Outputer;
import com.engagelab.privates.push.constants.MTPushConstants;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1200a;

    public final int a(Context context, String str, int i6) {
        String strA;
        try {
            byte[] bArrB = b(context);
            if (bArrB == null) {
                return 0;
            }
            try {
                byte[] bArrA = a(context, bArrB, 6000, str, i6);
                if (bArrA == null || (strA = a(context, bArrA)) == null) {
                    return 0;
                }
                return a(context, strA);
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                MTCommonLog.d(a(), "sis address connect failed " + th2.getMessage());
                return 0;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public abstract String a();

    public abstract void a(Context context);

    public abstract byte[] a(Context context, byte[] bArr, int i6, String str, int i9);

    public final byte[] b(Context context) {
        int i6;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MTPushConstants.PlatformNode.KEY_PLATFORM, 0);
            jSONObject.put("sdkver", "5.3.0");
            jSONObject.put(MTPushConstants.Message.KEY_APPKEY, MTGlobal.getAppKey(context));
            jSONObject.put("uid", r.r(context));
            jSONObject.put("type", MTGlobal.getNetworkType());
            jSONObject.put("opera", MTGlobal.getNetworkName());
            if (MTGlobal.getTcpSSL()) {
                int iB = r.b(context);
                if (iB == -1) {
                    iB = 1;
                }
                jSONObject.put("cert_ver", iB);
            }
            MTCommonLog.d(a(), "sis send:" + MTCommonLog.toLogString(jSONObject));
            byte[] bArrStringToUtf8Bytes = StringUtil.stringToUtf8Bytes(jSONObject.toString());
            byte[] bArrZip = GZipUtil.zip(bArrStringToUtf8Bytes);
            if (bArrZip == null) {
                i6 = 0;
            } else {
                bArrStringToUtf8Bytes = bArrZip;
                i6 = 1;
            }
            int length = bArrStringToUtf8Bytes.length;
            int iGenerateSeed = AESUtil.generateSeed();
            long j3 = iGenerateSeed;
            String md5AesKey = AESUtil.getMd5AesKey(j3);
            byte b3 = i6 != 0 ? (byte) 1 : (byte) 0;
            int encryptType = MTGlobal.getEncryptType();
            byte[] bArrEncryptBytes = SM4Util.encryptBytes(bArrStringToUtf8Bytes, md5AesKey, md5AesKey.substring(0, 16));
            Outputer outputer = new Outputer(bArrEncryptBytes.length + 10);
            outputer.writeU16(0);
            outputer.writeByteArray("UG".getBytes());
            outputer.writeU32(j3);
            outputer.writeU8At((byte) (b3 | 32), 4);
            outputer.writeU16(length);
            outputer.writeByteArray(bArrEncryptBytes);
            outputer.writeU16At(outputer.current(), 0);
            MTCommonLog.d(a(), "send totalLength:" + outputer.current() + ", encryption:" + encryptType + ", compress:" + i6 + ", sid:" + iGenerateSeed);
            return outputer.toByteArray();
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("packageRequest failed "), a());
            return null;
        }
    }

    public final List<String> c(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(d(context));
        Collections.shuffle(arrayList);
        arrayList.addAll(r.d(context));
        return arrayList;
    }

    public final Set<String> d(Context context) {
        return r.q(context);
    }

    public void e(Context context) {
        if (this.f1200a) {
            MTCommonLog.d(a(), "can't connect, isUdpConnecting");
            return;
        }
        List<String> listC = c(context);
        if (listC.isEmpty()) {
            MTCommonLog.d(a(), "there are no udp connect address");
            return;
        }
        this.f1200a = true;
        ArrayList arrayList = new ArrayList();
        for (int i6 = 0; i6 < 3; i6++) {
            arrayList.addAll(listC);
        }
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            String str = (String) obj;
            if (!r.c(context)) {
                MTCommonLog.d(a(), "can't connect ,connect state is false");
                g(context);
                return;
            }
            if (!SystemUtil.isNetworkConnecting(context)) {
                MTCommonLog.d(a(), "can't connect, network is disConnected");
                g(context);
                return;
            }
            String[] strArrSplit = str.split(":");
            String str2 = strArrSplit[strArrSplit.length - 1];
            int iA = a(context, str.substring(0, (str.length() - str2.length()) - 1), Integer.parseInt(str2));
            if (1 == iA) {
                f(context);
                return;
            }
            if (2002 == iA) {
                MTCommonLog.e(a(), "fail: CODE_NOT_APPKEY");
                q.b(context);
                return;
            }
            if (2003 == iA) {
                MTCommonLog.e(a(), "fail: CODE_RESTRICTED");
                q.c(context);
                return;
            } else if (2001 == iA) {
                MTCommonLog.e(a(), "fail: CODE_INVALID_APPKEY");
                q.a(context);
            } else {
                MTCommonLog.w(a(), "fail result:" + iA);
                g(context);
            }
        }
    }

    public final void f(Context context) {
        if (MTGlobal.getTcpSSL()) {
            int iB = r.b(context);
            int iP = r.p(context);
            if (iB != iP || iB == -1 || iP == -1) {
                MTCommonLog.d(a(), "connectSSL_crt_v：" + iB);
                MTCommonLog.d(a(), "tcpAddressSSL_crt_v：" + iP);
                boolean zB = e.b(context);
                MTCommonLog.d(a(), "get crt：" + zB);
            }
        }
    }

    public void g(Context context) {
        this.f1200a = false;
        a(context);
    }

    public final void d(Context context, JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("sis_ips");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            for (int i6 = 0; i6 < jSONArrayOptJSONArray.length(); i6++) {
                linkedHashSet.add(String.valueOf(jSONArrayOptJSONArray.get(i6)));
            }
        }
        r.c(context, linkedHashSet);
    }

    public byte[] a(int i6, Context context, String str, int i9) {
        try {
            if (TextUtils.isEmpty(str) || i9 <= 0) {
                return null;
            }
            MTCommonLog.d(a(), "udp connect " + str + ":" + i9);
            InetAddress.getByName(str);
            byte[] bArrB = b(context);
            if (bArrB == null) {
                return null;
            }
            return a(context, bArrB, i6, str, i9);
        } catch (Throwable th) {
            MTCommonLog.d(a(), "udp connect failed " + th.getMessage());
            return null;
        }
    }

    public final void c(Context context, JSONObject jSONObject) {
        r.a(context, jSONObject.optJSONArray("ips"));
    }

    public int a(Context context, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            MTCommonLog.d(a(), "udp receive " + MTCommonLog.toLogString(jSONObject));
            if (jSONObject.has("code") && jSONObject.has("code")) {
                return jSONObject.optInt("code");
            }
            d(context, jSONObject);
            c(context, jSONObject);
            b(context, jSONObject);
            a(context, jSONObject);
            return 1;
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("parseResponse failed "), a());
            return 0;
        }
    }

    public String a(Context context, byte[] bArr) {
        try {
            byte[] bArr2 = new byte[10];
            System.arraycopy(bArr, 0, bArr2, 0, 10);
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr2);
            short s3 = byteBufferWrap.getShort();
            byteBufferWrap.getShort();
            int i6 = byteBufferWrap.getInt();
            long j3 = 16777215 & i6;
            byteBufferWrap.getShort();
            int i9 = (i6 >>> 24) & 1;
            String md5AesKey = AESUtil.getMd5AesKey(j3);
            MTCommonLog.d(a(), "receive totalLength:" + ((int) s3) + ", encryption:" + (i6 >>> 28) + ", compress:" + i9 + ", sid:" + j3);
            int i10 = s3 - 10;
            byte[] bArr3 = new byte[i10];
            System.arraycopy(bArr, 10, bArr3, 0, i10);
            byte[] bArrDecryptBytes = SM4Util.decryptBytes(bArr3, md5AesKey);
            if (i9 == 1) {
                bArrDecryptBytes = GZipUtil.unzip(bArrDecryptBytes);
            }
            return new String(bArrDecryptBytes);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("parseResponse failed "), a());
            return null;
        }
    }

    public final void b(Context context, JSONObject jSONObject) {
        if (MTGlobal.getTcpSSL()) {
            if (jSONObject.has("cert_ver")) {
                int iOptInt = jSONObject.optInt("cert_ver");
                if (iOptInt != r.p(context)) {
                    r.b(context, (JSONArray) null);
                }
                r.e(context, iOptInt);
                r.b(context, jSONObject.optJSONArray("ssl_ips"));
                return;
            }
            MTCommonLog.d(a(), "no has cert_ver");
            r.b(context, (JSONArray) null);
        }
    }

    public final void a(Context context, JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("http_report");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            for (int i6 = 0; i6 < jSONArrayOptJSONArray.length(); i6++) {
                linkedHashSet.add("http://" + jSONArrayOptJSONArray.get(i6));
            }
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("https_report");
        if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
            for (int i9 = 0; i9 < jSONArrayOptJSONArray2.length(); i9++) {
                linkedHashSet.add("https://" + jSONArrayOptJSONArray2.get(i9));
            }
        }
        r.b(context, linkedHashSet);
    }
}
