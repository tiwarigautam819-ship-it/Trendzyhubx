package n6;

import android.util.Log;
import com.YaarWin.app.R;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CopyOnWriteArrayList f4362a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ExecutorService f4363b = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f4364c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile int f4365d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f4366e = R.drawable.ic_stat_notification;

    /* JADX WARN: Removed duplicated region for block: B:19:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(android.content.Context r16, java.lang.String r17, n6.a r18) {
        /*
            Method dump skipped, instruction units count: 318
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: n6.c.a(android.content.Context, java.lang.String, n6.a):void");
    }

    public static void b(String str) {
        Iterator it = f4362a.iterator();
        while (it.hasNext()) {
            try {
                ((l1.b) ((b) it.next())).f3748a.sendTokenToH5(1, str);
            } catch (Throwable th) {
                Log.e("FirebaseInit", "Listener error", th);
            }
        }
    }
}
