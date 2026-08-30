package k1;

import java.lang.reflect.InvocationTargetException;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f3508a;

    static {
        m eVar;
        try {
            eVar = new o5.c(15, (WebViewProviderFactoryBoundaryInterface) h8.b.b(WebViewProviderFactoryBoundaryInterface.class, z7.l.h()));
        } catch (ClassNotFoundException unused) {
            eVar = new e();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e9) {
            throw new RuntimeException(e9);
        }
        f3508a = eVar;
    }
}
