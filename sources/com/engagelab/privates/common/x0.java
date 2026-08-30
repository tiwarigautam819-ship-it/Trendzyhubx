package com.engagelab.privates.common;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.component.MTCommonReceiver;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.core.api.MTProtocol;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.api.MTPushPrivatesApi;
import com.engagelab.privates.push.api.MobileNumberMessage;
import com.engagelab.privates.push.constants.MTPushConstants;
import java.nio.ByteBuffer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class x0 extends v0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile x0 f1295c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ConcurrentHashMap<Integer, String> f1296b = new ConcurrentHashMap<>();

    public static x0 b() {
        if (f1295c == null) {
            synchronized (x0.class) {
                f1295c = new x0();
            }
        }
        return f1295c;
    }

    public void a(Context context, int i6, Bundle bundle) {
        MTCommonReceiver commonReceiver;
        try {
            bundle.setClassLoader(MobileNumberMessage.class.getClassLoader());
            MobileNumberMessage mobileNumberMessage = (MobileNumberMessage) bundle.getParcelable(MTPushConstants.Message.KEY_MESSAGE);
            if (mobileNumberMessage == null || (commonReceiver = MTGlobal.getCommonReceiver(context)) == null) {
                return;
            }
            commonReceiver.onMobileNumber(context, mobileNumberMessage);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("processMainMessage failed "), "MTMobileNumberBusiness");
        }
    }

    public void b(Context context, int i6, Bundle bundle) {
        try {
            int i9 = bundle.getInt(MTPushConstants.Operation.KEY_SEQUENCE);
            String string = bundle.getString(MTPushConstants.Operation.KEY_MOBILE_NUMBER);
            int iA = a(string);
            if (iA != 0) {
                MTCommonLog.d("MTMobileNumberBusiness", "sendMobileNumberOperation failed code:" + iA + ", sequence:" + i9 + ", mobileNumber:" + string);
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable(MTPushConstants.Message.KEY_MESSAGE, new MobileNumberMessage().setSequence(i9).setCode(iA).setMobileNumber(string));
                MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.ON_MOBILE_NUMBER, bundle2);
                return;
            }
            this.f1296b.put(Integer.valueOf(i9), string);
            MTCommonLog.d("MTMobileNumberBusiness", "sendMobileNumberOperation sequence:" + i9 + ", mobileNumber:" + string);
            MTProtocol body = new MTProtocol().setRid((long) i9).setCommand(26).setVersion(1).setBody(c1.a(string));
            Bundle bundle3 = new Bundle();
            bundle3.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, body);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.UPLOAD, bundle3);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("processRemoteMessage failed "), "MTMobileNumberBusiness");
        }
    }

    public void a(Context context, Bundle bundle) {
        try {
            MTProtocol mTProtocol = (MTProtocol) bundle.getParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL);
            if (mTProtocol == null) {
                return;
            }
            int rid = (int) mTProtocol.getRid();
            String str = this.f1296b.get(Integer.valueOf(rid));
            this.f1296b.remove(Integer.valueOf(rid));
            if (TextUtils.isEmpty(str)) {
                return;
            }
            MobileNumberMessage mobileNumber = new MobileNumberMessage().setSequence(rid).setCode(MTPushPrivatesApi.Code.TIMEOUT).setMobileNumber(str);
            MTCommonLog.d("MTMobileNumberBusiness", "onMobileNumberFailed mobileNumberMessage:" + mobileNumber.toString());
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MTPushConstants.Message.KEY_MESSAGE, mobileNumber);
            MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.ON_MOBILE_NUMBER, bundle2);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("onMobileNumberFailed failed "), "MTMobileNumberBusiness");
        }
    }

    public final int a(String str) {
        if (!Pattern.compile("^[+0-9][-0-9]{1,}$").matcher(str).matches()) {
            MTCommonLog.w("MTMobileNumberBusiness", "[" + str + "] is not mobileNumber");
            return MTPushPrivatesApi.Code.INVALID_MOBILE_NUMBER;
        }
        if (a() != 0) {
            return MTPushPrivatesApi.Code.INVOKE_TOO_SOON;
        }
        return 0;
    }

    public void b(Context context, Bundle bundle) {
        try {
            MTProtocol mTProtocol = (MTProtocol) bundle.getParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL);
            int rid = (int) mTProtocol.getRid();
            if (!this.f1296b.containsKey(Integer.valueOf(rid))) {
                MTCommonLog.d("MTMobileNumberBusiness", "failed ");
                return;
            }
            String str = this.f1296b.get(Integer.valueOf(rid));
            this.f1296b.remove(Integer.valueOf(rid));
            MobileNumberMessage mobileNumber = new MobileNumberMessage().setSequence(rid).setCode(ByteBuffer.wrap(mTProtocol.getBody()).getShort()).setMobileNumber(str);
            MTCommonLog.d("MTMobileNumberBusiness", "onMobileNumberSuccess mobileNumberMessage:" + mobileNumber.toString());
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MTPushConstants.Message.KEY_MESSAGE, mobileNumber);
            MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.ON_MOBILE_NUMBER, bundle2);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("onMobileNumberSuccess failed "), "MTMobileNumberBusiness");
        }
    }
}
