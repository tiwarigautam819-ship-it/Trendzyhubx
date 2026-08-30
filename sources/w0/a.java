package w0;

import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f5713a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f5714b = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f5715c = new LinkedHashSet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f5716d;

    public static void a(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                x.i(autoCloseable);
            } catch (Exception e9) {
                throw new RuntimeException(e9);
            }
        }
    }
}
