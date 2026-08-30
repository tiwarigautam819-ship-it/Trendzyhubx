package com.engagelab.privates.common;

import android.content.Context;
import android.os.Bundle;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.core.api.MTProtocol;
import com.engagelab.privates.core.api.Outputer;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.core.global.MTCoreGlobal;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.nio.ByteBuffer;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile a f1086a;

    public static a a() {
        if (f1086a == null) {
            synchronized (a.class) {
                f1086a = new a();
            }
        }
        return f1086a;
    }

    public void b(Context context) {
        int i6 = r.i(context);
        long jR = r.r(context);
        String strJ = r.j(context);
        String strG = r.g(context);
        Bundle bundle = new Bundle();
        bundle.putInt("code", i6);
        bundle.putLong(MTCoreConstants.Register.KEY_USER_ID, jR);
        bundle.putString(MTCoreConstants.Register.KEY_REGISTRATION_ID, strJ);
        bundle.putString(MTCoreConstants.Register.KEY_PW, strG);
        MTCommonPrivatesApi.sendMessageToMainProcess(context, MTCoreConstants.MainWhat.ON_REGISTER_INTO, bundle);
    }

    public void c(Context context, Bundle bundle) {
        int i6 = bundle.getInt("code");
        long j3 = bundle.getLong(MTCoreConstants.Register.KEY_USER_ID);
        String string = bundle.getString(MTCoreConstants.Register.KEY_REGISTRATION_ID);
        String string2 = bundle.getString(MTCoreConstants.Register.KEY_PW);
        MTCoreGlobal.setRegisterCode(i6);
        MTCoreGlobal.setUserId(j3);
        MTCoreGlobal.setRegistrationId(string);
        MTCoreGlobal.setPassword(string2);
    }

    public void a(Context context) {
        int iF = r.f(context);
        int iK = r.k(context);
        long jL = r.l(context);
        Bundle bundle = new Bundle();
        bundle.putInt("code", iF);
        bundle.putInt(MTCoreConstants.Login.KEY_SEED_ID, iK);
        bundle.putLong(MTCoreConstants.Login.KEY_SERVER_TIME, jL);
        MTCommonPrivatesApi.sendMessageToMainProcess(context, MTCoreConstants.MainWhat.ON_LOGIN_INTO, bundle);
    }

    public void b(Context context, Bundle bundle) {
        int i6 = bundle.getInt("code");
        int i9 = bundle.getInt(MTCoreConstants.Login.KEY_SEED_ID);
        long j3 = bundle.getLong(MTCoreConstants.Login.KEY_SERVER_TIME);
        MTCoreGlobal.setLoginCode(i6);
        MTCoreGlobal.setSeedId(i9);
        MTCoreGlobal.setServerTime(j3);
    }

    public void a(Context context, Bundle bundle) {
        try {
            MTProtocol mTProtocol = (MTProtocol) bundle.getParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL);
            mTProtocol.getRid();
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(mTProtocol.getBody());
            long j3 = byteBufferWrap.getLong();
            byte[] bArr = new byte[byteBufferWrap.getShort()];
            byteBufferWrap.get(bArr);
            String str = new String(bArr, MTCommonConstants.UTF_8);
            Outputer outputer = new Outputer();
            outputer.writeU16(0);
            outputer.writeU64(j3);
            outputer.writeByteArrayIncludeLength("".getBytes());
            MTProtocol body = new MTProtocol().setRid(j3).setCommand(25).setVersion(1).setBody(outputer.toByteArray());
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, body);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.UPLOAD, bundle2);
            JSONObject jSONObject = new JSONObject(str);
            MTCommonLog.d("MTCoreBusiness", "onCtrl " + MTCommonLog.toLogString(jSONObject));
            int iOptInt = jSONObject.optInt(MTCoreConstants.Protocol.KEY_CMD);
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(FirebaseAnalytics.Param.CONTENT);
            Bundle bundle3 = new Bundle();
            bundle3.putInt(MTCoreConstants.Protocol.KEY_CMD, iOptInt);
            bundle3.putString(MTCoreConstants.Protocol.KEY_PROTOCOL, jSONObjectOptJSONObject.toString());
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, iOptInt, bundle3);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.CTRL_DATA, bundle3);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("onCtrl failed "), "MTCoreBusiness");
        }
    }
}
