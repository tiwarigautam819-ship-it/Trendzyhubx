package com.engagelab.privates.common.component;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.SM4Util;
import com.engagelab.privates.push.api.MTPushPrivatesApi;
import com.engagelab.privates.push.api.NotificationMessage;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.engagelab.privates.push.utils.NotificationUtil;
import org.json.JSONArray;
import org.json.JSONObject;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTCommonActivity extends Activity {
    private static final String TAG = "MTCommonActivity";

    private void processIntent(Intent intent) {
        try {
            if (intent == null) {
                MTCommonLog.e(TAG, "processIntent intent is null ");
                return;
            }
            Bundle extras = intent.getExtras();
            String string = intent.getData() != null ? intent.getData().toString() : "";
            if (TextUtils.isEmpty(string) && intent.getExtras() != null) {
                string = extras.containsKey("JMessageExtra") ? extras.getString("JMessageExtra") : extras.getString("MTMessageExtra");
            }
            if (TextUtils.isEmpty(string)) {
                int i6 = Integer.parseInt(intent.getAction());
                if ((3003 == i6 || 3004 == i6) && ((NotificationMessage) extras.getParcelable(MTPushConstants.Message.KEY_MESSAGE)) == null) {
                    return;
                }
                MTPushPrivatesApi.init(getApplicationContext());
                MTCommonPrivatesApi.sendMessageToMainProcess(getApplicationContext(), i6, extras);
            } else {
                processPlatformMessage(string);
            }
        } catch (Throwable th) {
            try {
                MTCommonLog.w(TAG, "processIntent failed " + th.getMessage());
            } finally {
                finish();
            }
        }
    }

    private void processPlatformMessage(String str) {
        String strOptString;
        String strOptString2;
        String strOptString3;
        Bundle bundleConvertJsonToBundle;
        String strOptString4;
        String strOptString5;
        try {
            String strDecodeMessage = SM4Util.decodeMessage(str);
            if (TextUtils.isEmpty(strDecodeMessage)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strDecodeMessage);
            MTCommonLog.debugOnly(TAG, "platformMessageJson:" + MTCommonLog.toLogString(jSONObject));
            String messageId = NotificationUtil.getMessageId(jSONObject);
            MTCommonLog.d(TAG, "platformMessageJson messageId:" + messageId);
            byte bOptInt = (byte) jSONObject.optInt("rom_type");
            String string = "";
            if (jSONObject.has("m_content")) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("m_content");
                strOptString = jSONObjectOptJSONObject.optString("n_title");
                strOptString4 = jSONObjectOptJSONObject.optString("n_content");
                strOptString2 = jSONObjectOptJSONObject.optString("n_intent_uri");
                strOptString3 = jSONObjectOptJSONObject.optString("n_intent_ssl");
                bundleConvertJsonToBundle = NotificationUtil.convertJsonToBundle(jSONObjectOptJSONObject.optJSONObject("n_extras"));
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("n_target_event");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                    string = jSONArrayOptJSONArray.toString();
                }
                strOptString5 = jSONObjectOptJSONObject.optString("n_appkey");
            } else {
                strOptString = jSONObject.optString("n_title");
                String strOptString6 = jSONObject.optString("n_content");
                strOptString2 = jSONObject.optString("n_intent_uri");
                strOptString3 = jSONObject.optString("n_intent_ssl");
                bundleConvertJsonToBundle = NotificationUtil.convertJsonToBundle(jSONObject.optJSONObject("n_extras"));
                JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("n_target_event");
                if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                    string = jSONArrayOptJSONArray2.toString();
                }
                String strOptString7 = jSONObject.optString("n_appkey");
                strOptString4 = strOptString6;
                strOptString5 = strOptString7;
            }
            NotificationMessage appkey = new NotificationMessage().setMessageId(messageId).setPlatform(bOptInt).setTitle(strOptString).setContent(strOptString4).setExtras(bundleConvertJsonToBundle).setIntentUri(strOptString2).setIntentSsl(strOptString3).setTargetEvent(string).setAppkey(strOptString5);
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTPushConstants.Message.KEY_MESSAGE, appkey);
            MTPushPrivatesApi.init(getApplicationContext());
            MTCommonPrivatesApi.sendMessageToMainProcess(getApplicationContext(), 3003, bundle);
        } catch (Throwable th) {
            x.j(th, new StringBuilder("processPlatformMessage failed "), TAG);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        processIntent(getIntent());
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        processIntent(intent);
    }
}
