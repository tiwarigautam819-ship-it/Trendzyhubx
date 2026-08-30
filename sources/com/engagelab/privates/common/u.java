package com.engagelab.privates.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.component.MTCommonReceiver;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.f0;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.core.api.MTReporter;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.inapp.MTInApp;
import com.engagelab.privates.push.api.InAppMessage;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class u implements f0.d {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile u f1268j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public f0 f1269a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InAppMessage f1271c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1272d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f1273e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1274f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1275g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a0 f1270b = new a0();
    public List<String> h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List<String> f1276i = new ArrayList();

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int i6;
            if (!intent.getAction().equals("android.intent.action.CONFIGURATION_CHANGED") || (i6 = context.getResources().getConfiguration().orientation) == u.this.f1275g) {
                return;
            }
            if (u.this.f1269a != null) {
                MTCommonLog.d("MTInAppManager", "orientation change refresh view");
                u.this.f1269a.g();
            }
            u.this.f1275g = i6;
        }
    }

    public static void h(Context context) {
        MTCommonPrivatesApi.sendMessageToRemoteProcess(context, 4999, null);
    }

    @Override // com.engagelab.privates.common.f0.d
    public void a(Context context, View view) {
    }

    public final void c(Context context, InAppMessage inAppMessage) {
        Context context2;
        try {
            MTCommonLog.d("MTInAppManager", "handleShowSuccess");
            a(context, 10133000);
            if (30 == this.f1271c.getType()) {
                context2 = context;
                MTCommonPrivatesApi.sendMessageDelayed(context2, MTInApp.f1312a, 4005, null, 1000L);
            } else {
                context2 = context;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTPushConstants.Message.KEY_MESSAGE, this.f1271c);
            MTCommonPrivatesApi.sendMessageToMainProcess(context2, 4007, bundle);
            this.h.add(inAppMessage.getMessageId());
        } catch (Throwable th) {
            MTCommonLog.d("MTInAppManager", "handleCancelMessage  throwable=" + th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v7, types: [int] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.engagelab.privates.common.f0$d, com.engagelab.privates.common.u] */
    public void d(Context context, InAppMessage inAppMessage) {
        ?? type;
        Throwable th;
        ?? r22;
        MTCommonLog.w("MTInAppManager", "inapp inflate start");
        if (context == null || inAppMessage == null) {
            MTCommonLog.w("MTInAppManager", "inapp inflate failed, param is null, context: " + context);
            return;
        }
        a(inAppMessage.isNotification(), inAppMessage.getMessageId());
        this.f1271c = inAppMessage;
        try {
            try {
                if (b()) {
                    MTCommonLog.w("MTInAppManager", "inapp is showing now, return ");
                    return;
                }
                d0 d0VarA = z.a(this.f1271c, inAppMessage.getType());
                if (d0VarA == null) {
                    d(context);
                    MTCommonLog.w("MTInAppManager", "inapp inflate failed, layout config is null");
                    return;
                }
                type = inAppMessage.getType();
                f0 f0VarA = f0.a(context, d0VarA, inAppMessage, type);
                this.f1269a = f0VarA;
                try {
                    if (!f0VarA.f()) {
                        d(context);
                        MTCommonLog.w("MTInAppManager", "inapp inflate failed");
                        return;
                    } else {
                        this.f1269a.a((f0.d) this);
                        MTCommonPrivatesApi.sendMessageDelayed(context, MTInApp.f1312a, 4002, null, b(context));
                        MTCommonLog.w("MTInAppManager", "inapp inflate succeed");
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                r22 = context;
            }
        } catch (Throwable th4) {
            th = th4;
            type = context;
        }
        th = th;
        r22 = type;
        d(r22);
        q2.x.j(th, new StringBuilder("inflate InApp failed, "), "MTInAppManager");
    }

    public final void e(Context context) {
        if (!this.f1274f && MTGlobal.isMainProcess(context)) {
            context.registerReceiver(new a(), new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
            this.f1274f = true;
        }
    }

    public void f(Context context) {
        f0 f0Var;
        try {
            if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                MTCommonPrivatesApi.sendMessageToMainProcess(context, 4003, null);
                return;
            }
            MTCommonPrivatesApi.removeMessages(context, MTInApp.f1312a, 4005);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, 4998, null);
            a0 a0Var = this.f1270b;
            if (a0Var != null && (f0Var = this.f1269a) != null) {
                a0Var.a(context, f0Var);
            }
            f0 f0Var2 = this.f1269a;
            if (f0Var2 != null) {
                f0Var2.a((f0.d) null);
                this.f1269a = null;
            }
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("inapp dismiss failed, "), "MTInAppManager");
        }
    }

    public final void g(Context context) {
        a(context, 10133012);
    }

    public void i(Context context) {
        try {
            MTCommonLog.w("MTInAppManager", "showMessageOnMainProcess");
            try {
                if (context == null || this.f1271c == null) {
                    MTCommonLog.w("MTInAppManager", "inapp not display, param is null, context: " + context);
                    d(context);
                    return;
                }
                if (!this.f1272d) {
                    MTCommonLog.w("MTInAppManager", "inapp not display in background");
                    return;
                }
                if (!q0.b().a(context, (byte) 0, this.f1271c.getMessageId(), "", false)) {
                    MTCommonLog.d("MTInAppManager", "inapp is canceled already, not to show");
                    b(context, this.f1271c);
                    return;
                }
                boolean z5 = true;
                if (TextUtils.isEmpty(this.f1271c.getTarget())) {
                    MTCommonLog.d("MTInAppManager", "inapp message no target,match all activity");
                } else {
                    try {
                        JSONArray jSONArray = new JSONArray(this.f1271c.getTarget());
                        for (int i6 = 0; i6 < jSONArray.length(); i6++) {
                            if (this.f1273e.contains(String.valueOf(jSONArray.get(i6)))) {
                                break;
                            }
                        }
                    } catch (Throwable unused) {
                    }
                    z5 = false;
                    MTCommonLog.d("MTInAppManager", "inapp message isMatch target=" + z5);
                }
                if (!z5) {
                    f(context);
                    a(context);
                } else if (!this.f1270b.a(context, this.f1273e, this.f1269a)) {
                    MTCommonLog.w("MTInAppManager", "inapp message display failed");
                    d(context);
                } else {
                    this.f1269a.a();
                    MTCommonLog.d("MTInAppManager", "inapp message display success");
                    c(context, this.f1271c);
                }
            } catch (Throwable th) {
                th = th;
                d(context);
                q2.x.j(th, new StringBuilder("inapp show failed"), "MTInAppManager");
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void j(Context context) {
        try {
            f0 f0Var = this.f1269a;
            if (f0Var != null) {
                f0Var.j();
                MTCommonPrivatesApi.sendMessageDelayed(context, MTInApp.f1312a, 4005, null, 1000L);
            }
        } catch (Throwable th) {
            MTCommonLog.d("MTInAppManager", "handleCancelMessage  throwable=" + th);
        }
    }

    public static boolean a(int i6) {
        return 10 == i6 || 11 == i6 || 20 == i6 || 21 == i6 || 31 == i6 || 30 == i6 || 40 == i6;
    }

    public final long b(Context context) {
        MTCommonLog.debugOnly("MTInAppManager", "getDelayTime mInAppMessage=" + this.f1271c);
        MTCommonLog.w("MTInAppManager", "getDelayTime mInAppMessageId=" + this.f1271c.getMessageId());
        if (this.f1271c != null) {
            return this.h.size() > 0 ? z.a(context, this.f1271c.getInterval()) : this.f1271c.getDelay();
        }
        MTCommonLog.w("MTInAppManager", "getDelayTime default 0");
        return 0L;
    }

    public static u a() {
        if (f1268j == null) {
            synchronized (u.class) {
                try {
                    if (f1268j == null) {
                        f1268j = new u();
                    }
                } finally {
                }
            }
        }
        return f1268j;
    }

    public void b(Context context, String str) {
        a0 a0Var;
        if (context == null || (a0Var = this.f1270b) == null || this.f1269a == null || !a0Var.a(str) || !this.f1270b.a(this.f1269a)) {
            return;
        }
        MTCommonLog.d("MTInAppManager", "[onActivityDestroy] dismiss showing   inapp, activityName: " + str);
        f(context);
    }

    public void c(Context context) {
        try {
            MTCommonLog.d("MTInAppManager", "handleMessageFailed");
            g(context);
            a(context);
        } catch (Throwable th) {
            MTCommonLog.d("MTInAppManager", "handleMessageFailed  throwable=" + th);
        }
    }

    @Override // com.engagelab.privates.common.f0.d
    public void a(Context context, View view, Object obj) {
        MTCommonLog.d("MTInAppManager", "inapp dismiss");
        x.a(context, System.currentTimeMillis());
        f(context);
        a(context);
    }

    public boolean b() {
        a0 a0Var = this.f1270b;
        return a0Var != null && a0Var.b(this.f1269a);
    }

    public final void b(Context context, InAppMessage inAppMessage) {
        try {
            MTCommonLog.d("MTInAppManager", "handleCancelMessage  msgId=" + inAppMessage.getMessageId());
            a(context, 10134005);
        } catch (Throwable th) {
            MTCommonLog.d("MTInAppManager", "handleCancelMessage  throwable=" + th);
        }
    }

    public void c(Context context, Bundle bundle) {
        try {
            String string = bundle.getString(MTCoreConstants.Protocol.KEY_PROTOCOL);
            if (TextUtils.isEmpty(string)) {
                return;
            }
            String strOptString = new JSONObject(string).optString("ids");
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            a(context, strOptString.split(","));
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("revokeMessage failed "), "MTInAppManager");
        }
    }

    public void a(Context context, boolean z5, String str) {
        MTCommonLog.d("MTInAppManager", "onForegroundStateChange isForeground=" + z5 + " currentActivity=" + str);
        this.f1275g = context.getResources().getConfiguration().orientation;
        this.f1272d = z5;
        MTCommonPrivatesApi.sendMessageToRemoteProcess(context, 4997, null);
        e(context);
        this.h.clear();
        this.f1273e = str;
        x.a(context, -1L);
        f(context);
        a(context);
    }

    public void b(Context context, Bundle bundle) {
        JSONObject jSONObjectOptJSONObject;
        try {
            String string = bundle.getString(MTPushConstants.Message.KEY_MESSAGE);
            long j3 = bundle.getLong(MTPushConstants.Message.KEY_MESSAGE_ID);
            JSONObject jSONObject = new JSONObject(string);
            String strOptString = jSONObject.optString(MTPushConstants.Message.KEY_APPKEY);
            if (TextUtils.isEmpty(strOptString) && (jSONObjectOptJSONObject = jSONObject.optJSONObject("extra")) != null) {
                strOptString = jSONObjectOptJSONObject.optString(MTPushConstants.Message.KEY_APPKEY);
            }
            a(jSONObject.optBoolean("is_notification", false), String.valueOf(j3));
            jSONObject.put("msg_id", j3);
            if (!jSONObject.has("type")) {
                a(context, String.valueOf(j3), strOptString);
                MTCommonLog.d("MTInAppManager", "missing params type");
                return;
            }
            int i6 = jSONObject.getInt("type");
            if (!a(i6)) {
                a(context, String.valueOf(j3), strOptString);
                MTCommonLog.d("MTInAppManager", "parseInApp not support type=" + i6);
                return;
            }
            if (jSONObject.has("banner") && 11 == i6 && TextUtils.isEmpty(jSONObject.getString("image"))) {
                a(context, String.valueOf(j3), strOptString);
                MTCommonLog.w("MTInAppManager", "parseInApp image value is null");
                return;
            }
            if (jSONObject.has("full") && ((31 == i6 || 30 == i6) && TextUtils.isEmpty(jSONObject.getString("image")))) {
                a(context, String.valueOf(j3), strOptString);
                MTCommonLog.w("MTInAppManager", "parseInApp image value is null");
                return;
            }
            if (jSONObject.has("interstitial") && 21 == i6 && TextUtils.isEmpty(jSONObject.getString("image"))) {
                a(context, String.valueOf(j3), strOptString);
                MTCommonLog.w("MTInAppManager", "parseInApp image value is null");
            } else if (jSONObject.has("html") && 40 == i6 && TextUtils.isEmpty(jSONObject.optJSONObject("html").optString(FirebaseAnalytics.Param.CONTENT))) {
                a(context, String.valueOf(j3), strOptString);
                MTCommonLog.w("MTInAppManager", "parseInApp content value is null");
            } else {
                jSONObject.put("msg_time", System.currentTimeMillis());
                w.d().a(context, jSONObject);
                a(context, 10132005, String.valueOf(j3), strOptString);
                MTCommonPrivatesApi.sendMessageToMainProcess(context, 4000, null);
            }
        } catch (Throwable th) {
            MTCommonLog.d("MTInAppManager", "onMessage failed " + th.getMessage());
        }
    }

    public void a(Context context, String[] strArr) {
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str)) {
                InAppMessage inAppMessageD = w.d().d(str);
                if (w.d().b(str)) {
                    if (strArr.length == 2) {
                        str = strArr[1];
                    }
                    if (inAppMessageD != null) {
                        a(context, 10134005, str, inAppMessageD.getAppkey());
                    }
                } else {
                    InAppMessage inAppMessage = new InAppMessage();
                    inAppMessage.setMessageId(str);
                    Bundle bundle = new Bundle();
                    bundle.putParcelable(MTPushConstants.Message.KEY_MESSAGE, inAppMessage);
                    MTCommonPrivatesApi.sendMessageToMainProcess(context, 4004, bundle);
                }
            }
        }
    }

    public void d(Context context) {
        try {
            MTCommonLog.d("MTInAppManager", "handleShowFailed ");
            h(context);
            f(context);
            g(context);
            a(context);
        } catch (Throwable th) {
            MTCommonLog.d("MTInAppManager", "handleShowFailed  throwable=" + th);
        }
    }

    public void a(Context context, InAppMessage inAppMessage) {
        if (context == null || inAppMessage == null || this.f1271c == null) {
            return;
        }
        String messageId = inAppMessage.getMessageId();
        if (!b() || this.f1269a == null) {
            return;
        }
        MTCommonLog.d("MTInAppManager", "inapp cancel, cancel_messageId: " + messageId + ", msgId: " + this.f1271c.getMessageId());
        if (TextUtils.equals(messageId, this.f1271c.getMessageId())) {
            a(context, 10134005, messageId, inAppMessage.getAppkey());
            f(context);
            a(context);
            x.a(context, System.currentTimeMillis());
        }
    }

    public final void a(Context context, int i6) {
        try {
            a(context, i6, this.f1271c.getMessageId(), this.f1271c.getAppkey());
        } catch (Throwable unused) {
        }
    }

    public void a(Context context, int i6, String str, String str2) {
        try {
            if (this.f1276i.contains(str)) {
                MTCommonLog.d("MTInAppManager", "reportCode code:" + i6 + ", messageID:" + str + ", is Notification");
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("msg_id", str);
            jSONObject.put("result", i6);
            MTReporter appkey = new MTReporter().setType(MTPushConstants.Message.TYPE_MESSAGE_STATE).setContent(jSONObject.toString()).setAppkey(str2);
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, appkey);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.REPORT, bundle);
        } catch (Throwable unused) {
        }
    }

    public void a(Context context) {
        MTCommonLog.d("MTInAppManager", "checkAllowToShowOnMainProcess lifecycleState=" + this.f1272d);
        if (this.f1272d) {
            if (!b()) {
                MTCommonLog.d("MTInAppManager", "no message is showing,start to handle cache message");
                Bundle bundle = new Bundle();
                bundle.putString("target", this.f1273e);
                MTCommonPrivatesApi.sendMessageToRemoteProcess(context, 4996, bundle);
                return;
            }
            MTCommonLog.d("MTInAppManager", "inapp message is showing,do nothing ");
            return;
        }
        MTCommonLog.d("MTInAppManager", "current in background,do nothing");
    }

    public void b(Context context, int i6, Bundle bundle) {
        try {
            switch (i6) {
                case 4996:
                    a(context, bundle.getString("target"));
                    break;
                case 4997:
                    w.d().e();
                    break;
                case 4998:
                    w.d().c();
                    break;
                case 4999:
                    w.d().b();
                    break;
            }
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("processRemoteMessage failed "), "MTInAppManager");
        }
    }

    public void a(Context context, String str) {
        try {
            InAppMessage inAppMessageA = w.d().a(context, str);
            if (inAppMessageA == null) {
                MTCommonLog.d("MTInAppManager", "no message,not need to show");
                return;
            }
            a(inAppMessageA.isNotification(), inAppMessageA.getMessageId());
            MTCommonLog.debugOnly("MTInAppManager", "find message=" + inAppMessageA);
            MTCommonLog.d("MTInAppManager", "find message messageId=" + inAppMessageA.getMessageId());
            InAppMessage inAppMessageD = z.d(context, inAppMessageA);
            if (inAppMessageD == null) {
                MTCommonPrivatesApi.sendMessageToMainProcess(context, 4006, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTPushConstants.Message.KEY_MESSAGE, inAppMessageD);
            MTCommonPrivatesApi.sendMessageToMainProcess(context, 4001, bundle);
        } catch (Throwable th) {
            MTCommonLog.d("MTInAppManager", "handleMessageOnRemoteProcess throwable=" + th);
        }
    }

    public final void a(boolean z5, String str) {
        if (z5) {
            if (!this.f1276i.contains(str)) {
                this.f1276i.add(str);
            }
            if (this.f1276i.size() > 50) {
                this.f1276i.remove(0);
            }
        }
    }

    public final void a(Context context, String str, String str2) {
        a(context, 10132004, str, str2);
    }

    public void a(boolean z5) {
        this.f1272d = z5;
    }

    public void a(Context context, int i6, Bundle bundle) {
        try {
            if (i6 != 1013) {
                if (i6 != 1014) {
                    if (i6 != 1017) {
                        if (i6 != 1018) {
                            if (i6 != 3304) {
                                switch (i6) {
                                    case 4000:
                                        a(context);
                                        break;
                                    case 4001:
                                        bundle.setClassLoader(InAppMessage.class.getClassLoader());
                                        d(context, (InAppMessage) bundle.getParcelable(MTPushConstants.Message.KEY_MESSAGE));
                                        break;
                                    case 4002:
                                        i(context);
                                        break;
                                    case 4003:
                                        f(context);
                                        break;
                                    case 4004:
                                        bundle.setClassLoader(InAppMessage.class.getClassLoader());
                                        a(context, (InAppMessage) bundle.getParcelable(MTPushConstants.Message.KEY_MESSAGE));
                                        break;
                                    case 4005:
                                        j(context);
                                        break;
                                    case 4006:
                                        c(context);
                                        break;
                                    case 4007:
                                    case 4008:
                                        bundle.setClassLoader(InAppMessage.class.getClassLoader());
                                        InAppMessage inAppMessage = (InAppMessage) bundle.getParcelable(MTPushConstants.Message.KEY_MESSAGE);
                                        if (inAppMessage == null) {
                                            MTCommonLog.d("MTInAppManager", "message null");
                                            break;
                                        } else if (inAppMessage.isNotification()) {
                                            MTCommonLog.d("MTInAppManager", "is Notification");
                                            break;
                                        } else {
                                            MTCommonReceiver commonReceiver = MTGlobal.getCommonReceiver(context);
                                            if (commonReceiver != null) {
                                                if (4008 == i6) {
                                                    commonReceiver.onInAppMessageClick(context, inAppMessage);
                                                } else {
                                                    commonReceiver.onInAppMessageShow(context, inAppMessage);
                                                }
                                                break;
                                            }
                                        }
                                        break;
                                }
                                return;
                            }
                            a(context, bundle);
                            return;
                        }
                    }
                }
                b(context, bundle.getString(MTCommonConstants.Lifecycle.KEY_ACTIVITY));
                return;
            }
            a(context, true, bundle.getString(MTCommonConstants.Lifecycle.KEY_ACTIVITY));
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("processMainMessage failed "), "MTInAppManager");
        }
    }

    public final void a(Context context, Bundle bundle) {
        Context context2;
        try {
            if (bundle == null) {
                MTCommonLog.w("MTInAppManager", "handleEventMatchNotification: bundle is null");
                return;
            }
            String string = bundle.getString("event_match_data");
            if (TextUtils.isEmpty(string)) {
                MTCommonLog.w("MTInAppManager", "handleEventMatchNotification: event_match_data is empty");
                return;
            }
            JSONArray jSONArrayOptJSONArray = new JSONObject(string).optJSONArray("match_results");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                int i6 = 0;
                while (i6 < jSONArrayOptJSONArray.length()) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i6);
                    if (jSONObjectOptJSONObject != null) {
                        String strOptString = jSONObjectOptJSONObject.optString("msgid");
                        String strOptString2 = jSONObjectOptJSONObject.optString("event_name");
                        long jOptLong = jSONObjectOptJSONObject.optLong("timestamp");
                        String strOptString3 = jSONObjectOptJSONObject.optString(MTPushConstants.PlatformNode.KEY_PLATFORM);
                        String strOptString4 = jSONObjectOptJSONObject.optString("msgtype");
                        String strOptString5 = jSONObjectOptJSONObject.optString(MTPushConstants.Message.KEY_APPKEY);
                        if ("2".equals(strOptString4)) {
                            context2 = context;
                            a(context2, strOptString, strOptString2, jOptLong, strOptString3, strOptString4, strOptString5);
                        } else {
                            context2 = context;
                            MTCommonLog.d("MTInAppManager", "handleEventMatchNotification: skip reporting for msgtype: " + strOptString4 + ", msgid: " + strOptString + " (only process InApp messages)");
                        }
                    } else {
                        context2 = context;
                    }
                    i6++;
                    context = context2;
                }
                MTCommonLog.d("MTInAppManager", "handleEventMatchNotification: processed " + jSONArrayOptJSONArray.length() + " match results");
                return;
            }
            MTCommonLog.w("MTInAppManager", "handleEventMatchNotification: no match results");
        } catch (Exception e9) {
            MTCommonLog.e("MTInAppManager", "handleEventMatchNotification: error: " + e9.getMessage());
        }
    }

    public final void a(Context context, String str, String str2, long j3, String str3, String str4, String str5) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("msg_id", str);
            jSONObject.put("result", 10135000);
            jSONObject.put("target_event_time", j3);
            jSONObject.put("target_event", str2);
            MTReporter content = new MTReporter().setAppkey(str5).setType(MTPushConstants.Message.TYPE_MESSAGE_STATE).setContent(jSONObject.toString());
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, content);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.REPORT, bundle);
            MTCommonLog.d("MTInAppManager", "reportEventMatch: reported event match for msgid: " + str + ", event: " + str2 + ", timestamp: " + j3 + ", appkey: " + str5);
        } catch (Throwable th) {
            MTCommonLog.e("MTInAppManager", "reportEventMatch: error: " + th.getMessage());
        }
    }
}
