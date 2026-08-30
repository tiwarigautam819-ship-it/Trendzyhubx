package m;

import android.os.Build;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class l3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f4025a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Method f4026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f4027c;

    static {
        f4027c = Build.VERSION.SDK_INT >= 27;
    }
}
