package j1;

import android.content.pm.PackageInfo;
import android.net.Uri;
import android.webkit.WebView;
import com.getcapacitor.m;
import java.util.Set;
import k1.h;
import k1.k;
import k1.l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f3341a = 0;

    static {
        Uri.parse("*");
        Uri.parse("");
    }

    public static void a(WebView webView, String str, Set set) {
        if (!k.f3507d.b()) {
            throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
        }
    }

    public static void b(WebView webView, Set set, m mVar) {
        if (!k.f3506c.b()) {
            throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
        }
        int i6 = 0;
        l.f3508a.createWebView(webView).addWebMessageListener("androidBridge", (String[]) set.toArray(new String[0]), new h8.a(i6, new h(i6, mVar)));
    }

    public static PackageInfo c() {
        return (PackageInfo) Class.forName("android.webkit.WebViewFactory").getMethod("getLoadedPackageInfo", null).invoke(null, null);
    }
}
