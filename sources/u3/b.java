package u3;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Messenger;
import android.util.Log;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static int h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static PendingIntent f5446i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Pattern f5447j = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f5449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final k6.b f5450c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f5451d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Messenger f5453f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public g f5454g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s.j f5448a = new s.j(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Messenger f5452e = new Messenger(new e(this, Looper.getMainLooper()));

    public b(Context context) {
        this.f5449b = context;
        this.f5450c = new k6.b(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f5451d = scheduledThreadPoolExecutor;
    }

    public static synchronized String b() {
        int i6;
        i6 = h;
        h = i6 + 1;
        return Integer.toString(i6);
    }

    public static synchronized void c(Context context, Intent intent) {
        try {
            if (f5446i == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                f5446i = PendingIntent.getBroadcast(context, 0, intent2, i4.a.f3203a);
            }
            intent.putExtra("app", f5446i);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final p4.q a(android.os.Bundle r8) {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: u3.b.a(android.os.Bundle):p4.q");
    }

    public final void d(Bundle bundle, String str) {
        synchronized (this.f5448a) {
            try {
                p4.j jVar = (p4.j) this.f5448a.remove(str);
                if (jVar != null) {
                    jVar.a(bundle);
                    return;
                }
                Log.w("Rpc", "Missing callback for " + str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
