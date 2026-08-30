package b2;

import android.hardware.SensorManager;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static SensorManager f914c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static n f915d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f916e;
    public static volatile boolean h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f912a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final o f913b = new o();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final AtomicBoolean f917f = new AtomicBoolean(true);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final AtomicBoolean f918g = new AtomicBoolean(false);

    public static final String a() {
        if (v2.a.b(f.class)) {
            return null;
        }
        try {
            if (f916e == null) {
                f916e = UUID.randomUUID().toString();
            }
            String str = f916e;
            d7.g.d("null cannot be cast to non-null type kotlin.String", str);
            return str;
        } catch (Throwable th) {
            v2.a.a(th, f.class);
            return null;
        }
    }
}
