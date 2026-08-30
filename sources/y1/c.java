package y1;

import android.preference.PreferenceManager;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ReentrantReadWriteLock f6110a = new ReentrantReadWriteLock();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f6111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f6112c;

    public static void a() {
        if (f6112c) {
            return;
        }
        ReentrantReadWriteLock reentrantReadWriteLock = f6110a;
        reentrantReadWriteLock.writeLock().lock();
        try {
            if (!f6112c) {
                f6111b = PreferenceManager.getDefaultSharedPreferences(x1.r.a()).getString("com.facebook.appevents.AnalyticsUserIDStore.userID", null);
                f6112c = true;
            }
            reentrantReadWriteLock.writeLock().unlock();
        } catch (Throwable th) {
            f6110a.writeLock().unlock();
            throw th;
        }
    }
}
