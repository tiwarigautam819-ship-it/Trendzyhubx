package com.engagelab.privates.common;

import android.content.Context;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.FileUtils;
import com.engagelab.privates.common.utils.Utils;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Queue<s0> f1278a;

    public static synchronized void a(Context context, String str, ArrayList<s0> arrayList) {
        MTCommonLog.d("MsgQueueUtils", "Action - saveObjects");
        if (context == null) {
            MTCommonLog.w("MsgQueueUtils", "unexcepted , context is null");
            return;
        }
        if (arrayList == null) {
            MTCommonLog.w("MsgQueueUtils", "mObjectList is null");
            return;
        }
        try {
            File appKeyFile = FileUtils.getAppKeyFile(context, str);
            JSONArray jSONArray = new JSONArray();
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                jSONArray.put(arrayList.get(i6).a());
            }
            FileUtils.save(appKeyFile.getAbsolutePath(), jSONArray.toString());
        } catch (Throwable th) {
            MTCommonLog.i("MsgQueueUtils", "save Objects  error:" + th.getMessage());
        }
    }

    public static synchronized void b(Context context, String str) {
        if (context == null) {
            MTCommonLog.w("MsgQueueUtils", "unexcepted , context is null");
            return;
        }
        File appKeyFile = FileUtils.getAppKeyFile(context, str);
        if (appKeyFile.exists()) {
            appKeyFile.delete();
        }
    }

    public static synchronized ArrayList<s0> a(Context context, String str) {
        FileInputStream fileInputStream = null;
        if (context == null) {
            MTCommonLog.w("MsgQueueUtils", "unexcepted , context is null");
            return null;
        }
        ArrayList<s0> arrayList = new ArrayList<>();
        try {
            File appKeyFile = FileUtils.getAppKeyFile(context, str);
            if (appKeyFile.exists()) {
                FileInputStream fileInputStream2 = new FileInputStream(appKeyFile);
                try {
                    JSONArray jSONArray = new JSONArray(new String(Utils.readAvailable(fileInputStream2)));
                    for (int i6 = 0; i6 < jSONArray.length(); i6++) {
                        arrayList.add(s0.a(jSONArray.getJSONObject(i6), -1L));
                    }
                    fileInputStream = fileInputStream2;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    try {
                        MTCommonLog.w("MsgQueueUtils", "load objects error:" + th.getMessage());
                        b(context, str);
                    } finally {
                        Utils.closeQuietly(fileInputStream);
                    }
                }
            }
            Utils.closeQuietly(fileInputStream);
        } catch (Throwable th2) {
            th = th2;
        }
        return arrayList;
    }

    public static boolean a(Context context, s0 s0Var) {
        if (f1278a == null) {
            f1278a = new ConcurrentLinkedQueue();
            try {
                ArrayList<s0> arrayListA = a(context, "msg_queue_v350_privates");
                if (arrayListA != null && !arrayListA.isEmpty()) {
                    int size = arrayListA.size();
                    int i6 = 0;
                    while (i6 < size) {
                        s0 s0Var2 = arrayListA.get(i6);
                        i6++;
                        f1278a.offer(s0Var2);
                    }
                }
            } catch (Exception e9) {
                MTCommonLog.i("MsgQueueUtils", "init lastMsgQueue failed:" + e9.getMessage());
            }
        }
        if (context == null) {
            MTCommonLog.i("MsgQueueUtils", "#unexcepted - context was null");
            return false;
        }
        if (s0Var == null) {
            MTCommonLog.i("MsgQueueUtils", "#unexcepted - entityKey was null");
        }
        if (f1278a.contains(s0Var)) {
            MTCommonLog.e("MsgQueueUtils", "Duplicated msg. Give up processing - " + s0Var);
            return true;
        }
        if (f1278a.size() >= 200) {
            f1278a.poll();
        }
        f1278a.offer(s0Var);
        try {
            ArrayList<s0> arrayListA2 = a(context, "msg_queue_v350_privates");
            if (arrayListA2 == null) {
                arrayListA2 = new ArrayList<>();
            }
            if (arrayListA2.size() >= 50) {
                arrayListA2.remove(0);
            }
            arrayListA2.add(s0Var);
            a(context, "msg_queue_v350_privates", arrayListA2);
        } catch (Exception e10) {
            MTCommonLog.i("MsgQueueUtils", "msg save in sp failed:" + e10.getMessage());
        }
        return false;
    }
}
