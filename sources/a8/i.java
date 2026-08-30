package a8;

import android.os.Build;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Method f112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Method f113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Method f114c;

    public /* synthetic */ i(Method method, Method method2, Method method3) {
        this.f112a = method;
        this.f113b = method2;
        this.f114c = method3;
    }

    public static void a() {
        if (Build.VERSION.SDK_INT >= 29) {
            throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
        }
    }
}
