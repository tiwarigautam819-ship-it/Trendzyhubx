package h5;

import android.text.TextUtils;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f3002b = TimeUnit.HOURS.toSeconds(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f3003c = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static k f3004d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e5.e f3005a;

    public k(e5.e eVar) {
        this.f3005a = eVar;
    }

    public final boolean a(i5.b bVar) {
        if (TextUtils.isEmpty(bVar.f3213c)) {
            return true;
        }
        long j3 = bVar.f3216f + bVar.f3215e;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.f3005a.getClass();
        return j3 < timeUnit.toSeconds(System.currentTimeMillis()) + f3002b;
    }
}
