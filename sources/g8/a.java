package g8;

import android.webkit.JavascriptInterface;
import org.apache.cordova.h;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h f2870a;

    public a(h hVar) {
        this.f2870a = hVar;
    }

    @JavascriptInterface
    public String exec(int i6, String str, String str2, String str3, String str4) {
        return this.f2870a.a(i6, str, str2, str3, str4);
    }

    @JavascriptInterface
    public String retrieveJsMessages(int i6, boolean z5) {
        h hVar = this.f2870a;
        if (hVar.b(i6)) {
            return hVar.f4523b.d(z5);
        }
        return null;
    }

    @JavascriptInterface
    public void setNativeToJsBridgeMode(int i6, int i9) {
        h hVar = this.f2870a;
        if (hVar.b(i6)) {
            hVar.f4523b.f(i9);
        }
    }
}
