package com.engagelab.privates.push.utils;

import android.os.Bundle;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.push.api.AliasMessage;
import com.engagelab.privates.push.api.CustomMessage;
import com.engagelab.privates.push.api.NotificationMessage;
import com.engagelab.privates.push.api.PlatformTokenMessage;
import com.engagelab.privates.push.api.TagMessage;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MsgToJson {
    public static String aliasMessageToJson(AliasMessage aliasMessage) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(MTPushConstants.Operation.KEY_ALIAS, aliasMessage.getAlias());
            jSONObject.put("code", aliasMessage.getCode());
            jSONObject.put(MTPushConstants.Operation.KEY_SEQUENCE, aliasMessage.getSequence());
        } catch (JSONException e9) {
            e9.printStackTrace();
        }
        return jSONObject.toString();
    }

    private static JSONArray arrayToJson(String[] strArr) {
        JSONArray jSONArray = new JSONArray();
        if (strArr != null) {
            for (String str : strArr) {
                jSONArray.put(str);
            }
        }
        return jSONArray;
    }

    public static String booleanToJson(boolean z5) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("enable", z5);
        } catch (JSONException e9) {
            e9.printStackTrace();
        }
        return jSONObject.toString();
    }

    private static JSONObject bundleToJson(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                jSONObject.put(str, bundle.get(str));
            }
        }
        return jSONObject;
    }

    public static String customMessageToJson(CustomMessage customMessage) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(FirebaseAnalytics.Param.CONTENT, customMessage.getContent());
            jSONObject.put("contentType", customMessage.getContentType());
            jSONObject.put("messageId", customMessage.getMessageId());
            jSONObject.put(MTPushConstants.PlatformNode.KEY_PLATFORM, (int) customMessage.getPlatform());
            jSONObject.put("platformMessageId", customMessage.getPlatformMessageId());
            jSONObject.put(MTCommonConstants.Lifecycle.KEY_TITLE, customMessage.getTitle());
            jSONObject.put("extras", bundleToJson(customMessage.getExtras()));
        } catch (JSONException e9) {
            e9.printStackTrace();
        }
        return jSONObject.toString();
    }

    public static JSONObject notificationMessageToJSONObject(NotificationMessage notificationMessage) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("badge", notificationMessage.getBadge());
            jSONObject.put("bigPicture", notificationMessage.getBigPicture());
            jSONObject.put("bigText", notificationMessage.getBigText());
            jSONObject.put("builderId", notificationMessage.getBuilderId());
            jSONObject.put("category", notificationMessage.getCategory());
            jSONObject.put("channelId", notificationMessage.getChannelId());
            jSONObject.put(FirebaseAnalytics.Param.CONTENT, notificationMessage.getContent());
            jSONObject.put("defaults", notificationMessage.getDefaults());
            jSONObject.put("extras", bundleToJson(notificationMessage.getExtras()));
            jSONObject.put("inbox", arrayToJson(notificationMessage.getInbox()));
            jSONObject.put("intentSsl", notificationMessage.getIntentSsl());
            jSONObject.put("intentUri", notificationMessage.getIntentUri());
            jSONObject.put("largeIcon", notificationMessage.getLargeIcon());
            jSONObject.put("messageId", notificationMessage.getMessageId());
            jSONObject.put("notificationId", notificationMessage.getNotificationId());
            jSONObject.put("overrideMessageId", notificationMessage.getOverrideMessageId());
            jSONObject.put(MTPushConstants.PlatformNode.KEY_PLATFORM, (int) notificationMessage.getPlatform());
            jSONObject.put("platformMessageId", notificationMessage.getPlatformMessageId());
            jSONObject.put("priority", notificationMessage.getPriority());
            jSONObject.put("importance", notificationMessage.getImportance());
            jSONObject.put("smallIcon", notificationMessage.getSmallIcon());
            jSONObject.put("sound", notificationMessage.getSound());
            jSONObject.put("style", notificationMessage.getStyle());
            jSONObject.put(MTCommonConstants.Lifecycle.KEY_TITLE, notificationMessage.getTitle());
            return jSONObject;
        } catch (JSONException e9) {
            e9.printStackTrace();
            return jSONObject;
        }
    }

    public static String notificationMessageToJson(NotificationMessage notificationMessage) {
        return notificationMessageToJSONObject(notificationMessage).toString();
    }

    public static String platformTokenMessageToJson(PlatformTokenMessage platformTokenMessage) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(MTPushConstants.PlatformNode.KEY_PLATFORM, (int) platformTokenMessage.getPlatform());
            jSONObject.put("token", platformTokenMessage.getToken());
        } catch (JSONException e9) {
            e9.printStackTrace();
        }
        return jSONObject.toString();
    }

    public static String tagMessageToJson(TagMessage tagMessage) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code", tagMessage.getCode());
            jSONObject.put("queryTag", tagMessage.getQueryTag());
            jSONObject.put(MTPushConstants.Operation.KEY_SEQUENCE, tagMessage.getSequence());
            jSONObject.put("tags", arrayToJson(tagMessage.getTags()));
        } catch (JSONException e9) {
            e9.printStackTrace();
        }
        return jSONObject.toString();
    }
}
