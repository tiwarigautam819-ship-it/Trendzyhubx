package com.engagelab.privates.common;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.component.MTCommonReceiver;
import com.engagelab.privates.common.component.TransferCheck;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.core.api.MTReporter;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.api.MTPushPrivatesApi;
import com.engagelab.privates.push.api.NotificationMessage;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.engagelab.privates.push.utils.MsgToJson;
import com.engagelab.privates.push.utils.NotificationChannelUtil;
import com.engagelab.privates.push.utils.NotificationUtil;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class q0 extends o0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static ConcurrentHashMap<String, Integer> f1252b = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile q0 f1253c = null;

    public static q0 b() {
        if (f1253c == null) {
            synchronized (q0.class) {
                f1253c = new q0();
            }
        }
        return f1253c;
    }

    @Override // com.engagelab.privates.common.o0
    public void a(Context context, Bundle bundle) {
        try {
            NotificationMessage notificationMessage = NotificationUtil.getNotificationMessage(bundle.getString(MTPushConstants.Message.KEY_MESSAGE));
            if (notificationMessage == null) {
                MTCommonLog.d("MTNotificationBusiness", "notificationMessage  is null, can't show this notification");
                return;
            }
            notificationMessage.setMessageType(bundle.getInt(MTPushConstants.Message.KEY_MESSAGE_TYPE, 0));
            a(context, notificationMessage, bundle.getBoolean(MTPushConstants.Message.KEY_MESSAGE_LIMIT, true), bundle);
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MTPushConstants.Message.KEY_MESSAGE, notificationMessage);
            MTCommonPrivatesApi.sendMessageToMainProcess(context, 3002, bundle2);
        } catch (Throwable th) {
            MTCommonLog.d("MTNotificationBusiness", "onMessage failed " + th.getMessage());
        }
    }

    public void c(Context context, Bundle bundle) {
        try {
            String string = bundle.getString(MTCoreConstants.Protocol.KEY_PROTOCOL);
            if (TextUtils.isEmpty(string)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(string);
            MTCommonLog.d("MTNotificationBusiness", "revokeMessage:" + MTCommonLog.toLogString(jSONObject));
            String strOptString = jSONObject.optString("ids");
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            String[] strArrSplit = strOptString.split(",");
            if (strArrSplit.length == 1) {
                String str = strArrSplit[0];
                a(context, str, str);
            } else if (strArrSplit.length == 2) {
                a(context, strArrSplit[0], strArrSplit[1]);
            }
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("revokeMessage failed "), "MTNotificationBusiness");
        }
    }

    public void d(Context context, Bundle bundle) {
        try {
            bundle.setClassLoader(NotificationMessage.class.getClassLoader());
            NotificationMessage notificationMessage = (NotificationMessage) bundle.getParcelable(MTPushConstants.Message.KEY_MESSAGE);
            if (notificationMessage == null) {
                return;
            }
            a(context, notificationMessage, bundle.getBoolean(MTPushConstants.Message.KEY_MESSAGE_LIMIT, true), bundle);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("showNotification failed "), "MTNotificationBusiness");
        }
    }

    public void b(Context context, Bundle bundle) {
        if (bundle != null && bundle.containsKey(MTPushConstants.Notification.KEY_NOTIFY_ID)) {
            a(context, bundle.getInt(MTPushConstants.Notification.KEY_NOTIFY_ID));
            return;
        }
        if (r0.a()) {
            return;
        }
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        while (!r0.a()) {
            int iB = r0.b();
            notificationManager.cancel(iB);
            MTCommonLog.d("MTNotificationBusiness", "clear notification which notificationId:" + iB);
        }
        for (Map.Entry<String, Integer> entry : f1252b.entrySet()) {
            notificationManager.cancel(entry.getValue().intValue());
            MTCommonLog.d("MTNotificationBusiness", "clear group notification which messageId:" + entry.getKey() + ", notificationId:" + entry.getValue());
        }
        f1252b.clear();
        MTCommonLog.d("MTNotificationBusiness", "current queue size " + r0.c() + ", groupMap size " + f1252b.size());
    }

    public final void a(Context context, NotificationMessage notificationMessage, boolean z5, Bundle bundle) {
        Context context2;
        Notification.Builder builder;
        if ("0".equals(notificationMessage.getDisplayForeground()) && l0.a().b()) {
            MTCommonLog.d("MTNotificationBusiness", "displayForeground...");
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MTPushConstants.Message.KEY_MESSAGE, notificationMessage);
            MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.ON_NOTIFICATION_UN_SHOW, bundle2);
            return;
        }
        int i6 = Build.VERSION.SDK_INT;
        MTCommonLog.debugOnly("MTNotificationBusiness", "showNotification " + notificationMessage.toString());
        MTCommonLog.d("MTNotificationBusiness", "showNotification messageId:" + notificationMessage.getMessageId());
        if (notificationMessage.getMessageType() == 103) {
            boolean notificationState = NotificationUtil.getNotificationState(context);
            MTCommonLog.d("MTNotificationBusiness", "notificationState:" + notificationState);
            if (!notificationState) {
                Bundle bundleNotificationMessageToInApp = NotificationUtil.notificationMessageToInApp(notificationMessage, bundle);
                if (bundleNotificationMessageToInApp != null) {
                    m0.a().a(context, bundleNotificationMessageToInApp);
                    return;
                }
                MTCommonLog.e("MTNotificationBusiness", "TYPE_ENHANC_MESSAGE_NOTIFICATION messageBundle is null");
            }
        }
        byte platform = notificationMessage.getPlatform();
        String messageId = notificationMessage.getMessageId();
        String overrideMessageId = notificationMessage.getOverrideMessageId();
        if (z5) {
            context2 = context;
            if (!a(context2, platform, messageId, overrideMessageId, true)) {
                return;
            }
        } else {
            context2 = context;
        }
        if (!k0.a().c(context2)) {
            MTCommonLog.w("MTNotificationBusiness", "is not notificationShowTime, notificationShowTime:" + a1.g(context2));
            return;
        }
        if (TextUtils.isEmpty(notificationMessage.getContent())) {
            MTCommonLog.debugOnly("MTNotificationBusiness", "notificationMessage's content is null, can't show this notification " + notificationMessage.toString());
            MTCommonLog.d("MTNotificationBusiness", "notificationMessage's content is null, can't show this notification: messageId: " + notificationMessage.getMessageId());
            return;
        }
        boolean zD = k0.a().d(context2);
        if (i6 >= 26) {
            builder = com.getcapacitor.plugin.util.a.c(context2, NotificationChannelUtil.getChannel(context2, zD, notificationMessage));
        } else {
            builder = new Notification.Builder(context2);
        }
        String group = NotificationUtil.getGroup(context2, notificationMessage);
        builder.setGroup(group);
        notificationMessage.setGroupId(group);
        MTCommonLog.d("MTNotificationBusiness", "noti group " + group);
        builder.setAutoCancel(true);
        builder.setWhen(System.currentTimeMillis());
        String title = NotificationUtil.getTitle(context2, notificationMessage);
        builder.setContentTitle(title);
        notificationMessage.setTitle(title);
        String content = NotificationUtil.getContent(context2, notificationMessage);
        builder.setContentText(NotificationUtil.getContent(context2, notificationMessage));
        notificationMessage.setContent(content);
        int defaults = NotificationUtil.getDefaults(context2, zD, notificationMessage);
        builder.setDefaults(defaults);
        notificationMessage.setDefaults(defaults);
        builder.setContentIntent(NotificationUtil.getPendingIntent(context2, String.valueOf(3003), notificationMessage));
        builder.setDeleteIntent(NotificationUtil.getPendingIntent(context2, String.valueOf(3004), notificationMessage));
        int smallIcon = NotificationUtil.getSmallIcon(context2);
        if (smallIcon > 0) {
            builder.setSmallIcon(smallIcon);
            MTCommonLog.d("MTNotificationBusiness", "getSmallIcon from xml smallIconId=" + smallIcon);
        }
        Bitmap largeIcon = NotificationUtil.getLargeIcon(context2, notificationMessage.getLargeIcon());
        if (largeIcon != null) {
            builder.setLargeIcon(largeIcon);
        }
        Uri soundUri = NotificationUtil.getSoundUri(context2, zD, notificationMessage);
        if (soundUri != null) {
            builder.setSound(soundUri);
        }
        RemoteViews notificationLayout = NotificationUtil.getNotificationLayout(context2, notificationMessage);
        if (notificationLayout != null) {
            builder.setContent(notificationLayout);
        }
        builder.setPriority(NotificationUtil.getPriority(context2, zD, notificationMessage));
        builder.setStyle(NotificationUtil.getStyle(context2, notificationMessage));
        builder.setVisibility(NotificationUtil.getVisibility(context2, zD, notificationMessage));
        if (!TextUtils.isEmpty(notificationMessage.getCategory())) {
            builder.setCategory(notificationMessage.getCategory());
        }
        Icon smallIcon2 = NotificationUtil.getSmallIcon(context2, notificationMessage);
        if (smallIcon2 != null) {
            builder.setSmallIcon(smallIcon2);
        }
        builder.setShowWhen(true);
        String color = notificationMessage.getColor();
        if (!color.isEmpty()) {
            builder.setColor(Color.parseColor(color));
        }
        NotificationManager notificationManager = (NotificationManager) context2.getSystemService("notification");
        b(context2, notificationManager, notificationMessage);
        int iB = k0.a().b(context2);
        r0.b(notificationMessage.getNotificationId());
        int iC = r0.c();
        if (iC > iB && !r0.a()) {
            int iB2 = r0.b();
            MTCommonLog.d("MTNotificationBusiness", "currentNotificationCount is " + iC + ", limit notificationCount [" + iB + "], need remove notificationId[" + iB2 + "]");
            notificationManager.cancel(iB2);
        }
        MTCommonLog.d("MTNotificationBusiness", "after offer current queue size " + r0.c());
        Notification notificationBuild = builder.build();
        NotificationUtil.setNotificationBadge(context2, notificationBuild, notificationMessage.getBadge());
        notificationManager.notify(notificationMessage.getNotificationId(), notificationBuild);
        MTCommonLog.d("MTNotificationBusiness", "showNotification notificationId:" + notificationMessage.getNotificationId());
        if (NotificationUtil.getNotificationState(context2)) {
            Bundle bundle3 = new Bundle();
            bundle3.putParcelable(MTPushConstants.Message.KEY_MESSAGE, notificationMessage);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context2, MTPushConstants.RemoteWhat.ON_NOTIFICATION_DISPLAY, bundle3);
        }
    }

    public void c(int i6) {
        if (r0.a()) {
            MTCommonLog.d("MTNotificationBusiness", "there are no aurora notification");
            return;
        }
        if (!r0.a(i6)) {
            MTCommonLog.d("MTNotificationBusiness", "there are no aurora notification " + i6);
        } else {
            r0.c(i6);
            MTCommonLog.d("MTNotificationBusiness", "after remove, current queue size " + r0.c());
        }
    }

    public final void b(Context context) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            launchIntentForPackage.setFlags(872415232);
            context.startActivity(launchIntentForPackage);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("launchMainActivity failed "), "MTNotificationBusiness");
        }
    }

    public void b(Context context, int i6, Bundle bundle) {
        String str;
        int i9;
        try {
            bundle.setClassLoader(NotificationMessage.class.getClassLoader());
            NotificationMessage notificationMessage = (NotificationMessage) bundle.getParcelable(MTPushConstants.Message.KEY_MESSAGE);
            if (notificationMessage == null) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("msg_id", notificationMessage.getMessageId());
            if (notificationMessage.getPlatform() != 0) {
                jSONObject.put("sdk_type", (int) notificationMessage.getPlatform());
                jSONObject.put("tmsg_id", notificationMessage.getPlatformMessageId());
                str = MTPushConstants.Message.TYPE_PLATFORM_MESSAGE_STATE;
                i9 = MTPushConstants.MainWhat.REPORT_PLATFORM_MESSAGE_STATE;
            } else {
                str = MTPushConstants.Message.TYPE_MESSAGE_STATE;
                i9 = MTPushConstants.MainWhat.REPORT_MESSAGE_STATE;
            }
            int i10 = i9;
            if (i6 != 3500) {
                switch (i6) {
                    case MTPushConstants.RemoteWhat.ON_NOTIFICATION_OPENED /* 3995 */:
                        MTCommonLog.debugOnly("MTNotificationBusiness", "onNotificationOpened " + notificationMessage.toString());
                        MTCommonLog.d("MTNotificationBusiness", "onNotificationOpened messageId:" + notificationMessage.getMessageId());
                        jSONObject.put("result", MTPushConstants.Message.CODE_MESSAGE_OPENED);
                        break;
                    case MTPushConstants.RemoteWhat.ON_NOTIFICATION_DELETED /* 3996 */:
                        MTCommonLog.debugOnly("MTNotificationBusiness", "onNotificationDeleted " + notificationMessage.toString());
                        MTCommonLog.d("MTNotificationBusiness", "onNotificationDeleted messageId:" + notificationMessage.getMessageId());
                        jSONObject.put("result", MTPushConstants.Message.CODE_MESSAGE_DELETED);
                        break;
                    case MTPushConstants.RemoteWhat.ON_NOTIFICATION_CLICKED /* 3997 */:
                        MTCommonLog.debugOnly("MTNotificationBusiness", "onNotificationClicked " + notificationMessage.toString());
                        MTCommonLog.d("MTNotificationBusiness", "onNotificationClicked messageId:" + notificationMessage.getMessageId());
                        jSONObject.put("result", 1000);
                        break;
                    case MTPushConstants.RemoteWhat.ON_NOTIFICATION_ARRIVED /* 3998 */:
                        MTCommonLog.debugOnly("MTNotificationBusiness", "onNotificationArrived " + notificationMessage.toString());
                        MTCommonLog.d("MTNotificationBusiness", "onNotificationArrived messageId: " + notificationMessage.getMessageId());
                        jSONObject.put("result", MTPushConstants.Message.CODE_MESSAGE_ARRIVED);
                        break;
                }
            } else {
                MTCommonLog.debugOnly("MTNotificationBusiness", "onNotificationDisplay " + notificationMessage.toString());
                MTCommonLog.d("MTNotificationBusiness", "onNotificationDisplay messageId:" + notificationMessage.getMessageId());
                jSONObject.put("result", 1018);
            }
            MTReporter appkey = new MTReporter().setType(str).setContent(jSONObject.toString()).setAppkey(notificationMessage.getAppkey());
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, appkey);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.REPORT, bundle2);
            Bundle bundle3 = new Bundle();
            bundle3.putString(MTPushConstants.Analysis.KEY_JSON, jSONObject.toString());
            MTCommonPrivatesApi.sendMessageToMainProcess(context, i10, bundle3);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("processRemoteMessage failed "), "MTNotificationBusiness");
        }
    }

    public final void b(Context context, String str, Set<String> set) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (set == null) {
            set = new LinkedHashSet<>();
        } else if (set.size() >= 50) {
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                it.next();
                if (set.size() >= 50) {
                    it.remove();
                }
            }
        }
        set.add(str);
        MTCommonLog.d("MTNotificationBusiness", "addRevokeMessageId " + str);
        a1.b(context, set);
    }

    public final void b(Context context, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("msg_id", str);
            jSONObject.put("result", MTPushConstants.Message.CODE_MESSAGE_REVOKE);
            MTReporter content = new MTReporter().setType(MTPushConstants.Message.TYPE_MESSAGE_STATE).setContent(jSONObject.toString());
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, content);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.REPORT, bundle);
            Bundle bundle2 = new Bundle();
            bundle2.putString(MTPushConstants.Analysis.KEY_JSON, jSONObject.toString());
            MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.REPORT_MESSAGE_STATE, bundle2);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("reportRevokeMessage failed "), "MTNotificationBusiness");
        }
    }

    public final void b(Context context, NotificationManager notificationManager, NotificationMessage notificationMessage) {
        try {
            String groupId = notificationMessage.getGroupId();
            boolean zIsGroupSummary = notificationMessage.isGroupSummary();
            MTCommonLog.d("MTNotificationBusiness", "handleGroupNotification group: " + groupId + ", isGroupSummary: " + zIsGroupSummary);
            if (zIsGroupSummary) {
                MTCommonLog.d("MTNotificationBusiness", "group has summary notification, group: " + groupId + ", notificationId: " + notificationMessage.getNotificationId());
                Integer num = f1252b.get(groupId);
                if (num != null) {
                    if (a(context, num.intValue(), false)) {
                        MTCommonLog.d("MTNotificationBusiness", "group summary notification still exists in notification bar, group: " + groupId + ", notificationId: " + num);
                        return;
                    }
                    MTCommonLog.d("MTNotificationBusiness", "group summary notification no longer exists in notification bar, can create new one, group: " + groupId + ", notificationId: " + num);
                    f1252b.remove(groupId);
                }
                f1252b.put(groupId, Integer.valueOf(notificationMessage.getNotificationId() + 1000000));
                a(context, notificationManager, notificationMessage);
            }
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("handleGroupNotification failed "), "MTNotificationBusiness");
        }
    }

    public final void a(Context context) {
        try {
            if (MTGlobal.getLifecycleState()) {
                MTCommonLog.d("MTNotificationBusiness", "pushSdkVersionName:" + MTPushPrivatesApi.SDK_VERSION_NAME + ", isForeground, no need launch");
                return;
            }
            MTCommonLog.d("MTNotificationBusiness", "pushSdkVersionName:" + MTPushPrivatesApi.SDK_VERSION_NAME + ", isBackground, need launch");
            String currentActivityName = MTGlobal.getCurrentActivityName();
            if (!TextUtils.isEmpty(currentActivityName)) {
                a(context, currentActivityName);
            } else {
                b(context);
            }
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("launch failed "), "MTNotificationBusiness");
        }
    }

    public final void a(Context context, NotificationMessage notificationMessage) {
        try {
            String intentUri = notificationMessage.getIntentUri();
            if (TextUtils.isEmpty(intentUri)) {
                MTCommonLog.d("MTNotificationBusiness", "pushSdkVersionName:" + MTPushPrivatesApi.SDK_VERSION_NAME + ", there is no intentUri, no need transfer");
                a(context);
                return;
            }
            MTCommonLog.d("MTNotificationBusiness", "pushSdkVersionName:" + MTPushPrivatesApi.SDK_VERSION_NAME + ", there is intentUri, need transfer");
            Intent uri = NotificationUtil.parseUri(intentUri);
            uri.addFlags(335544320);
            Bundle bundle = new Bundle();
            bundle.putString(MTPushConstants.Message.KEY_MESSAGE_JSON, MsgToJson.notificationMessageToJson(notificationMessage));
            uri.putExtras(bundle);
            if (TextUtils.isEmpty(uri.getPackage())) {
                uri.setPackage(context.getPackageName());
            }
            context.startActivity(uri);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("transfer failed "), "MTNotificationBusiness");
        }
    }

    public final void b(int i6) {
        if (r0.a()) {
            MTCommonLog.d("MTNotificationBusiness", "there are no aurora notification");
            return;
        }
        if (!r0.a(i6)) {
            MTCommonLog.d("MTNotificationBusiness", "there are no aurora notification " + i6);
        } else {
            r0.c(i6);
            a(i6);
            MTCommonLog.d("MTNotificationBusiness", "after remove, current queue size " + r0.c());
        }
    }

    public final void a(Context context, String str) {
        try {
            Intent intent = new Intent();
            intent.setClassName(context.getPackageName(), str);
            intent.setFlags(872415232);
            context.startActivity(intent);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("launchCurrentActivity failed "), "MTNotificationBusiness");
        }
    }

    public void a(Context context, int i6, Bundle bundle) {
        MTCommonReceiver commonReceiver;
        try {
            bundle.setClassLoader(NotificationMessage.class.getClassLoader());
            NotificationMessage notificationMessage = (NotificationMessage) bundle.getParcelable(MTPushConstants.Message.KEY_MESSAGE);
            if (notificationMessage != null && (commonReceiver = MTGlobal.getCommonReceiver(context)) != null) {
                if (i6 != 3303) {
                    switch (i6) {
                        case 3002:
                            commonReceiver.onNotificationArrived(context, notificationMessage);
                            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTPushConstants.RemoteWhat.ON_NOTIFICATION_ARRIVED, bundle);
                            break;
                        case 3003:
                            MTCommonLog.w("MTNotificationBusiness", "on_notification_clicked");
                            String intentUri = notificationMessage.getIntentUri();
                            if (TransferCheck.isAllowTransfer(context, intentUri, notificationMessage.getIntentSsl())) {
                                MTCommonLog.d("MTNotificationBusiness", "allow transfer to " + intentUri);
                                if (MTPushPrivatesApi.SDK_VERSION_NAME.startsWith("3")) {
                                    if (notificationMessage.getPlatform() == 0) {
                                        a(context);
                                    }
                                    if (notificationMessage.getPlatform() == 8) {
                                        a(context, notificationMessage);
                                    }
                                } else {
                                    a(context, notificationMessage);
                                }
                            } else {
                                MTCommonLog.d("MTNotificationBusiness", "prevent transfer to " + intentUri);
                            }
                            commonReceiver.onNotificationClicked(context, notificationMessage);
                            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTPushConstants.RemoteWhat.ON_NOTIFICATION_CLICKED, bundle);
                            break;
                        case 3004:
                            commonReceiver.onNotificationDeleted(context, notificationMessage);
                            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTPushConstants.RemoteWhat.ON_NOTIFICATION_DELETED, bundle);
                            break;
                        case 3005:
                            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTPushConstants.RemoteWhat.ON_NOTIFICATION_OPENED, bundle);
                            break;
                    }
                    return;
                }
                commonReceiver.onNotificationUnShow(context, notificationMessage);
            }
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("processMainMessage failed "), "MTNotificationBusiness");
        }
    }

    public final void a(Context context, String str, String str2) {
        MTCommonLog.d("MTNotificationBusiness", "revokeNotification reportMessageId:" + str + ",revokeMessageId:" + str2);
        b(context, str2, a1.j(context));
        int notificationId = NotificationUtil.getNotificationId(str2);
        Set<String> setA = a1.a(context, (byte) 0);
        if (setA != null && setA.contains(str)) {
            if (!a(context, notificationId, true)) {
                MTCommonLog.d("MTNotificationBusiness", "the message [" + str2 + "] is not showing");
                return;
            }
            a(context, notificationId);
            b(context, str);
            return;
        }
        MTCommonLog.d("MTNotificationBusiness", "there are no messageId [" + str + "] in cache messageIdSet");
        Set<String> setA2 = a1.a(context, (byte) 8);
        if (setA2 != null && setA2.contains(str)) {
            if (!a(context, notificationId, true)) {
                MTCommonLog.d("MTNotificationBusiness", "the message [" + str2 + "] is not showing");
                return;
            }
            a(context, notificationId);
            a(context, str, (byte) 8, "");
            return;
        }
        MTCommonLog.d("MTNotificationBusiness", "there are no messageId [" + str + "] in cache googleMessageIdSet");
        StringBuilder sb = new StringBuilder("revoke third message ");
        sb.append(str);
        MTCommonLog.d("MTNotificationBusiness", sb.toString());
        Bundle bundle = new Bundle();
        bundle.putInt(MTPushConstants.Message.KEY_NOTIFICATION_ID, notificationId);
        MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.CLEAR_PLATFORM_NOTIFICATION, bundle);
    }

    public final void a(Context context, int i6) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        MTCommonLog.d("MTNotificationBusiness", "cancel notificationId:" + i6);
        notificationManager.cancel(i6);
        int i9 = 1000000 + i6;
        notificationManager.cancel(i9);
        c(i6);
        b(i9);
    }

    public final boolean a(Context context, int i6, boolean z5) {
        for (StatusBarNotification statusBarNotification : ((NotificationManager) context.getSystemService("notification")).getActiveNotifications()) {
            MTCommonLog.d("MTNotificationBusiness", "statusBarNotification:" + statusBarNotification.getId());
            if (statusBarNotification.getId() == i6) {
                return true;
            }
        }
        return false;
    }

    public boolean a(Context context, byte b3, String str, String str2, boolean z5) {
        Set<String> setA = a1.a(context, b3);
        if (z5 && setA != null && !setA.isEmpty() && !TextUtils.isEmpty(str) && setA.contains(str)) {
            MTCommonLog.d("MTNotificationBusiness", "the message [" + str + "] had been show");
            return false;
        }
        Set<String> setI = a1.i(context);
        if (setI != null && !setI.isEmpty() && !TextUtils.isEmpty(str) && str2.contains(str)) {
            MTCommonLog.d("MTNotificationBusiness", "the message [" + str + "] had been override");
            return false;
        }
        Set<String> setJ = a1.j(context);
        if (setJ != null && !setJ.isEmpty() && !TextUtils.isEmpty(str) && setJ.contains(str)) {
            MTCommonLog.d("MTNotificationBusiness", "the message [" + str + "] had been revoke");
            b(context, str);
            return false;
        }
        if (z5) {
            if (setA != null && !setA.isEmpty() && !TextUtils.isEmpty(str2) && setA.contains(str2)) {
                MTCommonLog.d("MTNotificationBusiness", "the overrideMessage [" + str2 + "] had been show");
                if (!a(context, NotificationUtil.getNotificationId(str2), true)) {
                    return false;
                }
                MTCommonLog.d("MTNotificationBusiness", "the overrideMessage [" + str2 + "] is showing, need override");
                a(context, b3, str, setA);
                a(context, str2, setI);
                return true;
            }
            a(context, b3, str, setA);
            a(context, str2, setI);
        }
        return true;
    }

    public final void a(Context context, byte b3, String str, Set<String> set) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (set == null) {
            set = new LinkedHashSet<>();
        } else if (set.size() >= 50) {
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                it.next();
                if (set.size() >= 50) {
                    it.remove();
                }
            }
        }
        set.add(str);
        MTCommonLog.d("MTNotificationBusiness", "addMessageId " + str);
        a1.a(context, b3, set);
    }

    public final void a(Context context, String str, Set<String> set) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (set == null) {
            set = new LinkedHashSet<>();
        } else if (set.size() >= 50) {
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                it.next();
                if (set.size() >= 50) {
                    it.remove();
                }
            }
        }
        set.add(str);
        MTCommonLog.d("MTNotificationBusiness", "addOverrideMessageId " + str);
        a1.a(context, set);
    }

    public final void a(Context context, String str, byte b3, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("msg_id", str);
            jSONObject.put("sdk_type", (int) b3);
            jSONObject.put("tmsg_id", str2);
            jSONObject.put("result", MTPushConstants.Message.CODE_REVOKE_PLATFORM_MESSAGE);
            MTReporter content = new MTReporter().setType(MTPushConstants.Message.TYPE_PLATFORM_MESSAGE_STATE).setContent(jSONObject.toString());
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, content);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.REPORT, bundle);
            Bundle bundle2 = new Bundle();
            bundle2.putString(MTPushConstants.Analysis.KEY_JSON, jSONObject.toString());
            MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.REPORT_PLATFORM_MESSAGE_STATE, bundle2);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("reportRevokeMessage failed "), "MTNotificationBusiness");
        }
    }

    public final void a(Context context, NotificationManager notificationManager, NotificationMessage notificationMessage) {
        int i6 = Build.VERSION.SDK_INT;
        try {
            String groupId = notificationMessage.getGroupId();
            boolean zD = k0.a().d(context);
            Notification.Builder builderC = i6 >= 26 ? com.getcapacitor.plugin.util.a.c(context, NotificationChannelUtil.getChannel(context, zD, notificationMessage)) : new Notification.Builder(context);
            builderC.setAutoCancel(true);
            builderC.setWhen(System.currentTimeMillis());
            String title = NotificationUtil.getTitle(context, notificationMessage);
            builderC.setContentTitle(title);
            notificationMessage.setTitle(title);
            String content = NotificationUtil.getContent(context, notificationMessage);
            builderC.setContentText(NotificationUtil.getContent(context, notificationMessage));
            notificationMessage.setContent(content);
            int defaults = NotificationUtil.getDefaults(context, zD, notificationMessage);
            builderC.setDefaults(defaults);
            notificationMessage.setDefaults(defaults);
            builderC.setGroup(groupId);
            builderC.setGroupSummary(true);
            builderC.setContentIntent(NotificationUtil.getPendingIntent(context, String.valueOf(3003), notificationMessage));
            builderC.setDeleteIntent(NotificationUtil.getPendingIntent(context, String.valueOf(3004), notificationMessage));
            int smallIcon = NotificationUtil.getSmallIcon(context);
            if (smallIcon > 0) {
                builderC.setSmallIcon(smallIcon);
            }
            Bitmap largeIcon = NotificationUtil.getLargeIcon(context, notificationMessage.getLargeIcon());
            if (largeIcon != null) {
                builderC.setLargeIcon(largeIcon);
            }
            Uri soundUri = NotificationUtil.getSoundUri(context, zD, notificationMessage);
            if (soundUri != null) {
                builderC.setSound(soundUri);
            }
            RemoteViews notificationLayout = NotificationUtil.getNotificationLayout(context, notificationMessage);
            if (notificationLayout != null) {
                builderC.setContent(notificationLayout);
            }
            builderC.setPriority(NotificationUtil.getPriority(context, zD, notificationMessage));
            builderC.setStyle(NotificationUtil.getStyle(context, notificationMessage));
            builderC.setVisibility(NotificationUtil.getVisibility(context, zD, notificationMessage));
            if (!TextUtils.isEmpty(notificationMessage.getCategory())) {
                builderC.setCategory(notificationMessage.getCategory());
            }
            Icon smallIcon2 = NotificationUtil.getSmallIcon(context, notificationMessage);
            if (smallIcon2 != null) {
                builderC.setSmallIcon(smallIcon2);
            }
            builderC.setShowWhen(true);
            Notification notificationBuild = builderC.build();
            int notificationId = notificationMessage.getNotificationId() + 1000000;
            notificationManager.notify(notificationId, notificationBuild);
            MTCommonLog.d("MTNotificationBusiness", "created group summary notification, group: " + notificationMessage.getGroupId() + ", groupNotificationId: " + notificationId);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("createGroupSummaryNotification failed "), "MTNotificationBusiness");
        }
    }

    public final void a(int i6) {
        Iterator<Map.Entry<String, Integer>> it = f1252b.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, Integer> next = it.next();
            if (next.getValue().equals(Integer.valueOf(i6))) {
                MTCommonLog.d("MTNotificationBusiness", "remove group summary record from groupMap, group: " + next.getKey() + ", notificationId: " + i6);
                it.remove();
                return;
            }
        }
    }
}
