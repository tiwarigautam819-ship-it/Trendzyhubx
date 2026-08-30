package t2;

import android.app.ActivityManager;
import android.os.Looper;
import android.os.Process;
import d7.g;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONArray;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f5300a = Process.myUid();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ScheduledExecutorService f5301b = Executors.newSingleThreadScheduledExecutor();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f5302c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final i2.c f5303d = new i2.c(10);

    public static final void a(ActivityManager activityManager) {
        if (v2.a.b(a.class)) {
            return;
        }
        try {
            List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
            if (processesInErrorState != null) {
                for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : processesInErrorState) {
                    if (processErrorStateInfo.condition == 2 && processErrorStateInfo.uid == f5300a) {
                        Thread thread = Looper.getMainLooper().getThread();
                        g.e("getMainLooper().thread", thread);
                        StackTraceElement[] stackTrace = thread.getStackTrace();
                        JSONArray jSONArray = new JSONArray();
                        g.e("stackTrace", stackTrace);
                        for (StackTraceElement stackTraceElement : stackTrace) {
                            jSONArray.put(stackTraceElement.toString());
                        }
                        String string = jSONArray.toString();
                        if (!g.a(string, f5302c) && android.support.v4.media.session.a.f(thread)) {
                            f5302c = string;
                            a2.c.b(processErrorStateInfo.shortMsg, string).b();
                        }
                    }
                }
            }
        } catch (Throwable th) {
            v2.a.a(th, a.class);
        }
    }
}
