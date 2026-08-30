package q2;

import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m extends p0 {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final /* synthetic */ int f4761w = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f4762v;

    public static void g(m mVar) {
        super.cancel();
    }

    @Override // q2.p0
    public final Bundle c(String str) {
        Bundle bundleG = g0.G(Uri.parse(str).getQuery());
        String string = bundleG.getString("bridge_args");
        bundleG.remove("bridge_args");
        if (!g0.B(string)) {
            try {
                bundleG.putBundle("com.facebook.platform.protocol.BRIDGE_ARGS", f.a(new JSONObject(string)));
            } catch (JSONException unused) {
                x1.r rVar = x1.r.f5918a;
            }
        }
        String string2 = bundleG.getString("method_results");
        bundleG.remove("method_results");
        if (!g0.B(string2)) {
            try {
                bundleG.putBundle("com.facebook.platform.protocol.RESULT_ARGS", f.a(new JSONObject(string2)));
            } catch (JSONException unused2) {
                x1.r rVar2 = x1.r.f5918a;
            }
        }
        bundleG.remove("version");
        b0 b0Var = b0.f4712a;
        int iIntValue = 0;
        if (!v2.a.b(b0.class)) {
            try {
                iIntValue = b0.f4715d[0].intValue();
            } catch (Throwable th) {
                v2.a.a(th, b0.class);
            }
        }
        bundleG.putInt("com.facebook.platform.protocol.PROTOCOL_VERSION", iIntValue);
        return bundleG;
    }

    @Override // q2.p0, android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        o0 o0Var = this.f4791d;
        if (!this.f4797k || this.f4795i || o0Var == null || !o0Var.isShown()) {
            super.cancel();
        } else {
            if (this.f4762v) {
                return;
            }
            this.f4762v = true;
            o0Var.loadUrl("javascript:(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();");
            new Handler(Looper.getMainLooper()).postDelayed(new a2.g(13, this), 1500L);
        }
    }
}
