package com.engagelab.privates.common;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.component.MTCommonReceiver;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.core.api.MTReporter;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.api.CustomMessage;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.engagelab.privates.push.utils.NotificationUtil;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class p0 extends o0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile p0 f1249b;

    public static p0 b() {
        if (f1249b == null) {
            synchronized (p0.class) {
                f1249b = new p0();
            }
        }
        return f1249b;
    }

    @Override // com.engagelab.privates.common.o0
    public void a(Context context, Bundle bundle) {
        try {
            String string = bundle.getString(MTPushConstants.Message.KEY_MESSAGE);
            if (TextUtils.isEmpty(string)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(string);
            String strOptString = jSONObject.optString("ad_id");
            if (TextUtils.isEmpty(strOptString)) {
                MTCommonLog.d("MTCustomBusiness", "customMessage's messageId is null, can't callback this custom");
                return;
            }
            String strOptString2 = jSONObject.optString(MTCommonConstants.Lifecycle.KEY_TITLE);
            String strOptString3 = jSONObject.optString(MTPushConstants.Message.KEY_MESSAGE);
            if (TextUtils.isEmpty(strOptString3)) {
                MTCommonLog.d("MTCustomBusiness", "customMessage's content is null, can't callback this custom");
                return;
            }
            String strOptString4 = jSONObject.optString(FirebaseAnalytics.Param.CONTENT_TYPE);
            CustomMessage extras = new CustomMessage().setMessageId(strOptString).setTitle(strOptString2).setContent(strOptString3).setContentType(strOptString4).setExtras(NotificationUtil.convertJsonToBundle(jSONObject.optJSONObject("extras")));
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MTPushConstants.Message.KEY_MESSAGE, extras);
            MTCommonPrivatesApi.sendMessageToMainProcess(context, 3001, bundle2);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("onMessage failed "), "MTCustomBusiness");
        }
    }

    public void b(Context context, int i6, Bundle bundle) {
        String str;
        int i9;
        try {
            bundle.setClassLoader(CustomMessage.class.getClassLoader());
            CustomMessage customMessage = (CustomMessage) bundle.getParcelable(MTPushConstants.Message.KEY_MESSAGE);
            if (customMessage == null) {
                return;
            }
            MTCommonLog.d("MTCustomBusiness", "onCustomMessage");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("msg_id", customMessage.getMessageId());
            if (customMessage.getPlatform() != 0) {
                jSONObject.put("sdk_type", (int) customMessage.getPlatform());
                jSONObject.put("tmsg_id", customMessage.getPlatformMessageId());
                str = MTPushConstants.Message.TYPE_PLATFORM_MESSAGE_STATE;
                i9 = MTPushConstants.MainWhat.REPORT_PLATFORM_MESSAGE_STATE;
            } else {
                str = MTPushConstants.Message.TYPE_MESSAGE_STATE;
                i9 = MTPushConstants.MainWhat.REPORT_MESSAGE_STATE;
            }
            jSONObject.put("result", MTPushConstants.Message.CODE_MESSAGE_ARRIVED);
            MTReporter content = new MTReporter().setType(str).setContent(jSONObject.toString());
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, content);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.REPORT, bundle2);
            Bundle bundle3 = new Bundle();
            bundle3.putString(MTPushConstants.Analysis.KEY_JSON, jSONObject.toString());
            MTCommonPrivatesApi.sendMessageToMainProcess(context, i9, bundle3);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("processRemoteMessage failed "), "MTCustomBusiness");
        }
    }

    public void a(Context context, int i6, Bundle bundle) {
        MTCommonReceiver commonReceiver;
        try {
            bundle.setClassLoader(CustomMessage.class.getClassLoader());
            CustomMessage customMessage = (CustomMessage) bundle.getParcelable(MTPushConstants.Message.KEY_MESSAGE);
            if (customMessage == null || (commonReceiver = MTGlobal.getCommonReceiver(context)) == null) {
                return;
            }
            commonReceiver.onCustomMessage(context, customMessage);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTPushConstants.RemoteWhat.ON_CUSTOM_ARRIVED, bundle);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("processMainMessage failed "), "MTCustomBusiness");
        }
    }
}
