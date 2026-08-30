package com.engagelab.privates.common;

import android.content.Context;
import android.text.TextUtils;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.FileUtils;
import com.engagelab.privates.push.api.InAppMessage;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class w {
    public static List<InAppMessage> h = new LinkedList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static List<InAppMessage> f1282i = new LinkedList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f1283j = 10;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f1284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List<Integer> f1285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InAppMessage f1286c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1287d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f1288e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List<InAppMessage> f1289f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public AtomicBoolean f1290g;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class a implements Comparator<InAppMessage> {
        public a(w wVar) {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(InAppMessage inAppMessage, InAppMessage inAppMessage2) {
            return inAppMessage.getMsgTime() - inAppMessage2.getMsgTime() > 0 ? 1 : -1;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class b implements Comparator<InAppMessage> {
        public b(w wVar) {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(InAppMessage inAppMessage, InAppMessage inAppMessage2) {
            int priority = inAppMessage.getPriority() - inAppMessage2.getPriority();
            return priority != 0 ? priority > 0 ? -1 : 1 : inAppMessage.getMsgTime() - inAppMessage2.getMsgTime() > 0 ? -1 : 1;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final w f1291a = new w(null);
    }

    public /* synthetic */ w(a aVar) {
        this();
    }

    public static w d() {
        return c.f1291a;
    }

    public void a(Context context) {
        this.f1284a = context;
        this.f1288e = v.a(context);
        a(h, "inapp_data", true);
        a(f1282i, "inapp_data_n", true);
        this.f1287d = true;
    }

    public final String b(int i6) {
        return i6 != 2 ? i6 != 3 ? i6 != 4 ? "Banner" : "Full" : "Html" : "Interstitial";
    }

    public void c() {
    }

    public void e() {
        MTCommonLog.d("MTInAppConfig", " target change, set default data");
        this.f1285b.clear();
    }

    public final InAppMessage f(String str) {
        InAppMessage inAppMessage = new InAppMessage();
        try {
            JSONObject jSONObject = new JSONObject(str);
            MTCommonLog.d("MTInAppConfig", "stringToInAppMessage object " + jSONObject);
            inAppMessage.setType(jSONObject.optInt("type")).setPriority(jSONObject.optInt("priority")).setClick(jSONObject.optString("click")).setContent(jSONObject.optString(FirebaseAnalytics.Param.CONTENT)).setDelay(jSONObject.optLong("delay")).setExpired(jSONObject.optLong("expired")).setExtras(jSONObject.optString("extras")).setImageUrl(jSONObject.optString("image")).setInterval(jSONObject.optLong(MTPushConstants.Geofence.KEY_INTERVAL)).setMessageId(jSONObject.optString("msg_id")).setIsNotification(jSONObject.optBoolean("is_notification", false)).setMsgTime(jSONObject.optLong("msg_time")).setDuration(jSONObject.optLong("duration")).setTarget(jSONObject.optString("android_target")).setTargetEvent(jSONObject.optString("target_event"));
            return inAppMessage;
        } catch (Throwable th) {
            MTCommonLog.d("MTInAppConfig", "stringToInAppMessage failed " + th.getMessage());
            return inAppMessage;
        }
    }

    public w() {
        this.f1285b = new ArrayList();
        this.f1288e = null;
        this.f1289f = new ArrayList();
        this.f1290g = new AtomicBoolean(false);
    }

    public boolean b(Context context) {
        if (this.f1288e != null) {
            if (!this.f1288e.equals(v.a(context))) {
                this.f1287d = false;
            }
        }
        return this.f1287d;
    }

    public final void c(List<InAppMessage> list) {
        if (list == null || list.size() <= 1) {
            return;
        }
        Collections.sort(list, new a(this));
    }

    public InAppMessage d(String str) {
        MTCommonLog.d("MTInAppConfig", "deleteMessage msgID=" + str);
        InAppMessage inAppMessageA = a(str, h);
        return inAppMessageA != null ? inAppMessageA : a(str, f1282i);
    }

    public final void e(String str) {
        File fileC = c(str);
        if (fileC != null && fileC.exists()) {
            fileC.delete();
        }
    }

    public final void c(String str, List<InAppMessage> list) {
        if (list != null && list.size() > 0) {
            try {
                File fileC = c(str);
                a(fileC);
                if (fileC == null) {
                    MTCommonLog.w("MTInAppConfig", "file is null");
                    return;
                }
                JSONArray jSONArray = new JSONArray();
                int size = list.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    }
                    InAppMessage inAppMessage = list.get(size);
                    if (inAppMessage != null) {
                        if (inAppMessage.getExpired() <= System.currentTimeMillis()) {
                            list.remove(inAppMessage);
                            MTCommonLog.d("MTInAppConfig", "saveObjects message out of date, endTime: " + inAppMessage.getMessageId());
                            a(inAppMessage, false);
                        } else {
                            jSONArray.put(a(inAppMessage));
                            if (jSONArray.length() == f1283j) {
                                MTCommonLog.d("MTInAppConfig", "[saveObjects] reach max cache message count: " + f1283j + ", drop message count: " + (list.size() - f1283j));
                                break;
                            }
                        }
                    }
                    size--;
                }
                FileUtils.save(fileC.getAbsolutePath(), jSONArray.toString());
                return;
            } catch (Throwable th) {
                q2.x.j(th, new StringBuilder("save Objects  error:"), "MTInAppConfig");
                return;
            }
        }
        MTCommonLog.w("MTInAppConfig", "mObjectList is null or size is 0");
        e(str);
    }

    public void d(String str, List<InAppMessage> list) {
        c(str, list);
    }

    public final void a(List<InAppMessage> list, String str, boolean z5) {
        if (z5) {
            list.clear();
        }
        b(str, list);
        b(list);
    }

    public final void b(List<InAppMessage> list) {
        if (list == null || list.size() <= 1) {
            return;
        }
        Collections.sort(list, new b(this));
    }

    public final InAppMessage a(String str, List<InAppMessage> list) {
        for (InAppMessage inAppMessage : list) {
            if (inAppMessage.getMessageId().equals(str)) {
                return inAppMessage;
            }
        }
        return null;
    }

    public void b() {
        try {
            a();
            InAppMessage inAppMessage = this.f1286c;
            if (inAppMessage != null) {
                b(inAppMessage.getMessageId());
                a(this.f1286c.getMessageId());
            }
        } catch (Throwable unused) {
        }
    }

    public void a(Context context, JSONObject jSONObject) {
        if (!b(context)) {
            a(context);
        }
        if (jSONObject == null) {
            return;
        }
        InAppMessage inAppMessageA = a(jSONObject);
        if (inAppMessageA == null) {
            MTCommonLog.d("MTInAppConfig", "msgToInAppMessage is null ");
            return;
        }
        MTCommonLog.debugOnly("MTInAppConfig", "msgToInAppMessage inAppMessage=" + inAppMessageA);
        MTCommonLog.d("MTInAppConfig", "msgToInAppMessage inAppMessageId: " + inAppMessageA.getMessageId());
        if (inAppMessageA.isNotification()) {
            a(f1282i, inAppMessageA, "inapp_data_n");
        } else {
            a(h, inAppMessageA, "inapp_data");
        }
    }

    public boolean b(String str) {
        if (a(str, "inapp_data", h)) {
            return true;
        }
        return a(str, "inapp_data_n", f1282i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0078, code lost:
    
        com.engagelab.privates.common.log.MTCommonLog.d("MTInAppConfig", "[loadObjects] reach max cache message count: " + com.engagelab.privates.common.w.f1283j + ", drop message count: " + (r2.length() - com.engagelab.privates.common.w.f1283j));
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void b(java.lang.String r12, java.util.List<com.engagelab.privates.push.api.InAppMessage> r13) {
        /*
            Method dump skipped, instruction units count: 249
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.engagelab.privates.common.w.b(java.lang.String, java.util.List):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00d8 A[Catch: all -> 0x008b, TryCatch #1 {all -> 0x008b, blocks: (B:5:0x003c, B:15:0x0094, B:21:0x00a2, B:35:0x00cb, B:37:0x00d8, B:39:0x00e1, B:41:0x00ea, B:43:0x00f3, B:45:0x00f9, B:47:0x0102, B:49:0x0108, B:50:0x010f, B:22:0x00a7, B:28:0x00b5, B:29:0x00ba, B:33:0x00c4, B:11:0x0086), top: B:58:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e1 A[Catch: all -> 0x008b, TryCatch #1 {all -> 0x008b, blocks: (B:5:0x003c, B:15:0x0094, B:21:0x00a2, B:35:0x00cb, B:37:0x00d8, B:39:0x00e1, B:41:0x00ea, B:43:0x00f3, B:45:0x00f9, B:47:0x0102, B:49:0x0108, B:50:0x010f, B:22:0x00a7, B:28:0x00b5, B:29:0x00ba, B:33:0x00c4, B:11:0x0086), top: B:58:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ea A[Catch: all -> 0x008b, TryCatch #1 {all -> 0x008b, blocks: (B:5:0x003c, B:15:0x0094, B:21:0x00a2, B:35:0x00cb, B:37:0x00d8, B:39:0x00e1, B:41:0x00ea, B:43:0x00f3, B:45:0x00f9, B:47:0x0102, B:49:0x0108, B:50:0x010f, B:22:0x00a7, B:28:0x00b5, B:29:0x00ba, B:33:0x00c4, B:11:0x0086), top: B:58:0x003c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.engagelab.privates.push.api.InAppMessage a(org.json.JSONObject r30) {
        /*
            Method dump skipped, instruction units count: 369
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.engagelab.privates.common.w.a(org.json.JSONObject):com.engagelab.privates.push.api.InAppMessage");
    }

    public final File c(String str) {
        return FileUtils.getAppKeyFile(this.f1284a, "in_app", str);
    }

    public final String a(InAppMessage inAppMessage) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", inAppMessage.getType());
            jSONObject.put("priority", inAppMessage.getPriority());
            jSONObject.put("click", inAppMessage.getClick());
            jSONObject.put(FirebaseAnalytics.Param.CONTENT, inAppMessage.getContent());
            jSONObject.put("delay", inAppMessage.getDelay());
            jSONObject.put("expired", inAppMessage.getExpired());
            jSONObject.put("extras", inAppMessage.getExtras());
            jSONObject.put("image", inAppMessage.getImageUrl());
            jSONObject.put(MTPushConstants.Geofence.KEY_INTERVAL, inAppMessage.getInterval());
            jSONObject.put("msg_id", inAppMessage.getMessageId());
            jSONObject.put("msg_time", inAppMessage.getMsgTime());
            jSONObject.put("duration", inAppMessage.getDuration());
            jSONObject.put("is_notification", inAppMessage.isNotification());
            jSONObject.put("android_target", inAppMessage.getTarget());
            jSONObject.put("target_event", inAppMessage.getTargetEvent());
        } catch (Throwable th) {
            MTCommonLog.d("MTInAppConfig", "inAppMessageToString failed " + th.getMessage());
        }
        return jSONObject.toString();
    }

    public static int a(int i6) {
        try {
            String strValueOf = String.valueOf(i6);
            if (strValueOf.startsWith("1")) {
                return 1;
            }
            if (strValueOf.startsWith("4")) {
                return 3;
            }
            if (strValueOf.startsWith("2")) {
                return 2;
            }
            return strValueOf.startsWith("3") ? 4 : -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final void a(List<InAppMessage> list, InAppMessage inAppMessage, String str) {
        if (a(inAppMessage, list)) {
            MTCommonLog.d("MTInAppConfig", "the notify message cache already, messageId: " + inAppMessage.getMessageId());
        } else {
            list.add(inAppMessage);
            a(list);
            b(list);
            c(str, list);
        }
    }

    public final void a(List<InAppMessage> list) {
        if (list.size() >= f1283j) {
            c(list);
            int size = list.size();
            while (size >= f1283j) {
                InAppMessage inAppMessage = list.get(0);
                list.remove(0);
                a(inAppMessage.getMessageId());
                a(inAppMessage, true);
                size = list.size();
            }
        }
    }

    public void a(String str) {
        try {
            FileUtils.deleteDirectory(FileUtils.getAppKeyFile(this.f1284a, "mt_in_app_down", "mt_in_app_" + str));
        } catch (Throwable unused) {
        }
    }

    public final boolean a(InAppMessage inAppMessage, List<InAppMessage> list) {
        if (list.size() <= 0 || inAppMessage == null) {
            return false;
        }
        Iterator<InAppMessage> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().getMessageId().equals(inAppMessage.getMessageId())) {
                return true;
            }
        }
        return false;
    }

    public InAppMessage a(Context context, String str) {
        MTCommonLog.d("MTInAppConfig", "getMessage target=" + str);
        InAppMessage inAppMessageA = a(context, str, h);
        return inAppMessageA != null ? inAppMessageA : a(context, str, f1282i);
    }

    public final InAppMessage a(Context context, String str, List<InAppMessage> list) {
        InAppMessage inAppMessage;
        MTCommonLog.d("MTInAppConfig", "getMessage target=" + str);
        if (!b(context)) {
            a(context);
        }
        InAppMessage inAppMessage2 = null;
        try {
            inAppMessage = null;
            for (InAppMessage inAppMessage3 : list) {
                try {
                    if (!this.f1289f.contains(inAppMessage3)) {
                        String target = inAppMessage3.getTarget();
                        JSONArray jSONArray = !TextUtils.isEmpty(target) ? new JSONArray(target) : null;
                        int priority = inAppMessage3.getPriority();
                        if ((4 != priority && 3 != priority && 2 != priority) || !this.f1285b.contains(Integer.valueOf(priority))) {
                            if (jSONArray != null && jSONArray.length() > 0) {
                                int i6 = 0;
                                while (true) {
                                    if (i6 >= jSONArray.length()) {
                                        break;
                                    }
                                    if (str.contains(String.valueOf(jSONArray.get(i6)))) {
                                        MTCommonLog.d("MTInAppConfig", "find " + b(priority) + " match target=" + str);
                                        inAppMessage = inAppMessage3;
                                        break;
                                    }
                                    i6++;
                                }
                            }
                            MTCommonLog.d("MTInAppConfig", b(priority) + " message target is null, so can show any activity");
                            inAppMessage = inAppMessage3;
                            break;
                        }
                        MTCommonLog.d("MTInAppConfig", b(priority) + " message had show, current type message show only once in this activity");
                    }
                } catch (Throwable th) {
                    th = th;
                    inAppMessage2 = inAppMessage;
                    MTCommonLog.d("MTInAppConfig", "get message throwable=" + th);
                    inAppMessage = inAppMessage2;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
        if (inAppMessage != null) {
            try {
                long expired = inAppMessage.getExpired();
                if (expired <= System.currentTimeMillis()) {
                    MTCommonLog.d("MTInAppConfig", "getMessage  out of date, endTime: " + expired);
                    a(inAppMessage, false);
                    b(inAppMessage.getMessageId());
                    return a(context, str);
                }
                this.f1286c = inAppMessage;
                this.f1289f.add(inAppMessage);
            } catch (Throwable th3) {
                MTCommonLog.d("MTInAppConfig", "get message2 throwable=" + th3);
            }
        }
        return inAppMessage;
    }

    public void a() {
        try {
            if (this.f1285b == null) {
                this.f1285b = new ArrayList();
            }
            this.f1285b.add(Integer.valueOf(this.f1286c.getPriority()));
        } catch (Throwable unused) {
        }
    }

    public final boolean a(String str, String str2, List<InAppMessage> list) {
        Iterator<InAppMessage> it = list.iterator();
        while (it.hasNext()) {
            InAppMessage next = it.next();
            if (next.getMessageId().equals(str)) {
                this.f1289f.remove(next);
                it.remove();
                MTCommonLog.d("MTInAppConfig", "deleteMessage mInAppList remove msgID=" + str);
                d(str2, list);
                return true;
            }
        }
        MTCommonLog.d("MTInAppConfig", "delete failed, not found msgID=" + str);
        return false;
    }

    public static void a(File file) {
        if (file == null || file.exists()) {
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            file.createNewFile();
        } catch (Throwable unused) {
        }
    }

    public final void a(InAppMessage inAppMessage, boolean z5) {
        u.a().a(this.f1284a, z5 ? 10132007 : 10132002, inAppMessage.getMessageId(), inAppMessage.getAppkey());
    }
}
