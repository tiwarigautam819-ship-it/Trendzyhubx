package com.engagelab.privates.push.platform.google.callback;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import c5.h;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.SM4Util;
import com.engagelab.privates.push.api.CustomMessage;
import com.engagelab.privates.push.api.MTPushPrivatesApi;
import com.engagelab.privates.push.api.NotificationMessage;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.engagelab.privates.push.platform.google.business.MTGoogleBusiness;
import com.engagelab.privates.push.utils.NotificationUtil;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.w;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import q2.x;
import s.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTGoogleCallbackImp extends FirebaseMessagingService {
    private static final String TAG = "MTGoogleCallbackImp";
    private Context mContext;

    public MTGoogleCallbackImp(Service service) {
        this.mContext = service.getApplicationContext();
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(w wVar) {
        String str;
        String strOptString;
        String strOptString2;
        try {
            Bundle bundle = wVar.f2158a;
            String string = bundle.getString("google.message_id");
            if (string == null) {
                string = bundle.getString(MTPushConstants.Message.KEY_MESSAGE_ID);
            }
            Map mapA = wVar.a();
            Bundle bundle2 = new Bundle();
            e eVar = (e) mapA;
            for (Map.Entry entry : eVar.entrySet()) {
                bundle2.putString((String) entry.getKey(), (String) entry.getValue());
            }
            String str2 = eVar.containsKey("JMessageExtra") ? (String) eVar.get("JMessageExtra") : (String) eVar.get("MTMessageExtra");
            if (str2 == null) {
                return;
            }
            String strDecodeMessage = SM4Util.decodeMessage(str2);
            if (TextUtils.isEmpty(strDecodeMessage)) {
                return;
            }
            MTPushPrivatesApi.init(this.mContext);
            JSONObject jSONObject = new JSONObject(strDecodeMessage);
            MTCommonLog.debugOnly(TAG, "onMessage:" + MTCommonLog.toLogString(jSONObject));
            String messageId = NotificationUtil.getMessageId(jSONObject);
            MTCommonLog.d(TAG, "onMessage messageId:" + messageId);
            h hVarB = wVar.b();
            if (hVarB == null) {
                MTCommonLog.d(TAG, "is data");
                String strOptString3 = jSONObject.optString(MTCommonConstants.Lifecycle.KEY_TITLE);
                CustomMessage extras = new CustomMessage().setMessageId(messageId).setPlatform((byte) 8).setPlatformMessageId(string).setTitle(strOptString3).setContent(jSONObject.optString(MTPushConstants.Message.KEY_MESSAGE)).setContentType(jSONObject.optString(FirebaseAnalytics.Param.CONTENT_TYPE)).setExtras(NotificationUtil.convertJsonToBundle(jSONObject.optJSONObject("extras")));
                Bundle bundle3 = new Bundle();
                bundle3.putParcelable(MTPushConstants.Message.KEY_MESSAGE, extras);
                MTCommonPrivatesApi.sendMessageToMainProcess(this.mContext, 3001, bundle3);
                return;
            }
            MTCommonLog.d(TAG, "is notification");
            int notificationId = NotificationUtil.getNotificationId(messageId);
            String str3 = (String) hVarB.f1060b;
            String str4 = (String) hVarB.f1061c;
            Bundle bundleConvertJsonToBundle = NotificationUtil.convertJsonToBundle(jSONObject.optJSONObject("n_extras"));
            int iOptInt = jSONObject.optInt("n_alert_type");
            int priority = NotificationUtil.getPriority(jSONObject);
            int notificationImportance = NotificationUtil.getNotificationImportance(jSONObject);
            String strOptString4 = jSONObject.optString("n_sound");
            str = TAG;
            try {
                String strOptString5 = jSONObject.optString("n_category");
                String strOptString6 = jSONObject.optString("n_channel_id");
                String strOptString7 = jSONObject.optString("n_group_id");
                boolean z5 = jSONObject.optInt("n_is_fold", 0) == 1;
                String strOptString8 = jSONObject.optString("n_display_foreground");
                boolean z8 = z5;
                String strOptString9 = jSONObject.optString("n_small_icon");
                String strOptString10 = jSONObject.optString("n_color");
                String strOptString11 = jSONObject.optString("n_large_icon");
                String strOptString12 = jSONObject.optString("n_big_text");
                String strOptString13 = jSONObject.optString("n_big_pic_path");
                String[] strArrConvertJsonToArray = NotificationUtil.convertJsonToArray(jSONObject.optString("n_inbox"));
                int iOptInt2 = jSONObject.optInt("n_style");
                String string2 = "";
                if (MTPushPrivatesApi.SDK_VERSION_NAME.startsWith("3")) {
                    String str5 = (String) hVarB.f1062d;
                    if (TextUtils.isEmpty(str5)) {
                        strOptString = "";
                    } else {
                        Intent intent = new Intent();
                        intent.setAction(str5);
                        intent.putExtras(bundle2);
                        intent.setPackage(this.mContext.getPackageName());
                        strOptString = intent.toURI();
                    }
                    strOptString2 = null;
                } else {
                    strOptString = jSONObject.optString("n_intent_uri");
                    strOptString2 = jSONObject.optString("n_intent_ssl");
                }
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("n_target_event");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                    string2 = jSONArrayOptJSONArray.toString();
                }
                NotificationMessage appkey = new NotificationMessage().setMessageId(messageId).setPlatform((byte) 8).setPlatformMessageId(string).setDisplayForeground(strOptString8).setNotificationId(notificationId).setSmallIcon(strOptString9).setLargeIcon(strOptString11).setStyle(iOptInt2).setBigText(strOptString12).setInbox(strArrConvertJsonToArray).setBigPicture(strOptString13).setTitle(str3).setContent(str4).setColor(strOptString10).setExtras(bundleConvertJsonToBundle).setDefaults(iOptInt).setPriority(priority).setImportance(notificationImportance).setCategory(strOptString5).setSound(strOptString4).setChannelId(strOptString6).setGroupId(strOptString7).setGroupSummary(z8).setIntentUri(strOptString).setIntentSsl(strOptString2).setTargetEvent(string2).setAppkey(jSONObject.optString("n_appkey"));
                Bundle bundle4 = new Bundle();
                bundle4.putParcelable(MTPushConstants.Message.KEY_MESSAGE, appkey);
                bundle4.putBoolean(MTPushConstants.Message.KEY_MESSAGE_LIMIT, true);
                MTCommonPrivatesApi.sendMessageToRemoteProcess(this.mContext, MTPushConstants.RemoteWhat.SHOW_NOTIFICATION, bundle4);
                MTCommonPrivatesApi.sendMessageToMainProcess(this.mContext, 3002, bundle4);
            } catch (Throwable th) {
                th = th;
                x.j(th, new StringBuilder("onMessage failed "), str);
            }
        } catch (Throwable th2) {
            th = th2;
            str = TAG;
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        if (TextUtils.isEmpty(str)) {
            MTCommonLog.d(TAG, "onTokenFailed:get token is empty");
            MTGoogleBusiness.getInstance().onNode(this.mContext, 3004, 0, MTPushConstants.PlatformNode.KEY_EVENT_TYPE_TOKEN_FAILED, 2);
        } else {
            MTCommonLog.d(TAG, "onTokenSuccess:callback token is " + str);
            MTGoogleBusiness.getInstance().onToken(this.mContext, str, 2);
        }
    }
}
