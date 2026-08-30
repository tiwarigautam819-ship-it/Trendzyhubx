package q2;

import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j0 extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p0 f4750a;

    public j0(p0 p0Var) {
        this.f4750a = p0Var;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        ProgressDialog progressDialog;
        d7.g.f("view", webView);
        d7.g.f("url", str);
        super.onPageFinished(webView, str);
        p0 p0Var = this.f4750a;
        if (!p0Var.f4796j && (progressDialog = p0Var.f4792e) != null) {
            progressDialog.dismiss();
        }
        FrameLayout frameLayout = p0Var.f4794g;
        if (frameLayout != null) {
            frameLayout.setBackgroundColor(0);
        }
        o0 o0Var = p0Var.f4791d;
        if (o0Var != null) {
            o0Var.setVisibility(0);
        }
        ImageView imageView = p0Var.f4793f;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        p0Var.f4797k = true;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        ProgressDialog progressDialog;
        d7.g.f("view", webView);
        d7.g.f("url", str);
        x1.r rVar = x1.r.f5918a;
        super.onPageStarted(webView, str, bitmap);
        p0 p0Var = this.f4750a;
        if (p0Var.f4796j || (progressDialog = p0Var.f4792e) == null) {
            return;
        }
        progressDialog.show();
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i6, String str, String str2) {
        d7.g.f("view", webView);
        d7.g.f("description", str);
        d7.g.f("failingUrl", str2);
        super.onReceivedError(webView, i6, str, str2);
        this.f4750a.e(new x1.k(str, i6, str2));
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        d7.g.f("view", webView);
        d7.g.f("handler", sslErrorHandler);
        d7.g.f("error", sslError);
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        sslErrorHandler.cancel();
        this.f4750a.e(new x1.k(null, -11, null));
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        int i6;
        d7.g.f("view", webView);
        d7.g.f("url", str);
        x1.r rVar = x1.r.f5918a;
        Uri uri = Uri.parse(str);
        boolean z5 = uri.getPath() != null && Pattern.matches("^/(v\\d+\\.\\d+/)??dialog/.*", uri.getPath());
        p0 p0Var = this.f4750a;
        if (!k7.o.v(str, p0Var.f4789b, false)) {
            if (k7.o.v(str, "fbconnect://cancel", false)) {
                p0Var.cancel();
                return true;
            }
            if (!z5 && !k7.g.x(str, "touch")) {
                try {
                    p0Var.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                    return true;
                } catch (ActivityNotFoundException unused) {
                }
            }
            return false;
        }
        Bundle bundleC = p0Var.c(str);
        String string = bundleC.getString("error");
        if (string == null) {
            string = bundleC.getString("error_type");
        }
        String string2 = bundleC.getString("error_msg");
        if (string2 == null) {
            string2 = bundleC.getString("error_message");
        }
        if (string2 == null) {
            string2 = bundleC.getString("error_description");
        }
        String string3 = bundleC.getString("error_code");
        if (string3 == null || g0.B(string3)) {
            i6 = -1;
        } else {
            try {
                i6 = Integer.parseInt(string3);
            } catch (NumberFormatException unused2) {
                i6 = -1;
            }
        }
        if (g0.B(string) && g0.B(string2) && i6 == -1) {
            k0 k0Var = p0Var.f4790c;
            if (k0Var != null && !p0Var.f4795i) {
                p0Var.f4795i = true;
                k0Var.a(bundleC, null);
                p0Var.dismiss();
            }
        } else if ((string == null || !(string.equals("access_denied") || string.equals("OAuthAccessDeniedException"))) && i6 != 4201) {
            p0Var.e(new x1.t(new x1.o(i6, string, string2), string2));
        } else {
            p0Var.cancel();
        }
        return true;
    }
}
