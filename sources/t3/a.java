package t3;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ReentrantLock f5307c = new ReentrantLock();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static a f5308d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReentrantLock f5309a = new ReentrantLock();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f5310b;

    public a(Context context) {
        this.f5310b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public final String a(String str) {
        ReentrantLock reentrantLock = this.f5309a;
        reentrantLock.lock();
        try {
            return this.f5310b.getString(str, null);
        } finally {
            reentrantLock.unlock();
        }
    }
}
