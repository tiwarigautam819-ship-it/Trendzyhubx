package l6;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.util.Log;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.lottery.app.MainActivity;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Activity f3823b;

    public c(Activity activity, Activity activity2, int i6) {
        this.f3822a = i6;
        this.f3823b = activity;
    }

    public static String a(String str) {
        return str == null ? "" : str.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace("\"", "&quot;").replace("'", "&#39;");
    }

    public final void b(WebView webView, String str) {
        Log.d("🌐 URL Loading onPageFinished", str);
        Log.d("✅WebViewSize", "Height: " + webView.getHeight());
    }

    public final void c(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        Log.d("🌐 URL Loading onReceivedError WebResourceRequest", webResourceRequest.getUrl().toString());
        if (webResourceRequest.isForMainFrame()) {
            String string = webResourceRequest.getUrl().toString();
            int errorCode = webResourceError.getErrorCode();
            String strValueOf = String.valueOf(webResourceError.getDescription());
            String strA = a(string);
            webView.loadDataWithBaseURL(null, "<!DOCTYPE html><html><head><meta charset='utf-8'><meta name='viewport' content='width=device-width, initial-scale=1.0'><title>Page loaded error</title><style>body{font-family:sans-serif;text-align:left;padding:24px;color:#666;word-break:break-all}h1{color:#333;text-align:center;margin:8px 0 16px}.box{background:#f5f5f5;border:1px solid #e0e0e0;border-radius:6px;padding:12px;margin:12px 0;font-size:13px}.label{color:#999;font-size:12px;margin-top:8px}.code{font-family:Menlo,monospace;color:#c0392b}button{padding:10px 20px;font-size:16px;margin:16px auto 0;display:block}</style></head><body><h1>😕 Page loaded error</h1><p style='text-align:center'>Please check your network connection and try again.</p><div class='box'><div class='label'>Error code</div><div class='code'>" + errorCode + "</div><div class='label'>Description</div><div class='code'>" + a(strValueOf) + "</div><div class='label'>URL</div><div>" + strA + "</div></div><button onclick=\"window.location.href='" + strA + "'\">Refresh Page</button></body></html>", "text/html", "UTF-8", null);
            StringBuilder sb = new StringBuilder("code=");
            sb.append(errorCode);
            sb.append(" desc=");
            sb.append(strValueOf);
            sb.append(" url=");
            sb.append(string);
            Log.e("❌ WebView Load Error", sb.toString());
        }
    }

    public final boolean d(WebView webView, WebResourceRequest webResourceRequest) {
        String string = webResourceRequest.getUrl().toString();
        Log.d("🌐 URL Loading shouldOverrideUrlLoading WebResourceRequest", string);
        if (string.startsWith("http://") || string.startsWith("https://") || string.startsWith("data:text/html") || string.contains("://")) {
            return false;
        }
        Log.d("❌ shouldOverrideUrlLoading", string);
        new AlertDialog.Builder(webView.getContext()).setTitle("Notice").setMessage("Unsupported link type:\n".concat(string)).setPositiveButton("OK", (DialogInterface.OnClickListener) null).show();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public void onPageCommitVisible(WebView webView, String str) {
        switch (this.f3822a) {
            case 1:
                super.onPageCommitVisible(webView, str);
                MainActivity mainActivity = (MainActivity) this.f3823b;
                mainActivity.f2187d = true;
                Log.d("MainActivity", "onPageCommitVisible => " + str);
                mainActivity.g();
                break;
            default:
                super.onPageCommitVisible(webView, str);
                break;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        switch (this.f3822a) {
            case 1:
                b(webView, str);
                Log.d("MainActivity", "onPageFinished => " + str);
                MainActivity mainActivity = (MainActivity) this.f3823b;
                int i6 = MainActivity.f2183g;
                mainActivity.g();
                break;
            default:
                b(webView, str);
                break;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        switch (this.f3822a) {
            case 1:
                super.onPageStarted(webView, str, bitmap);
                Log.d("MainActivity", "onPageStarted => " + str.replace("/", "\\"));
                break;
            default:
                super.onPageStarted(webView, str, bitmap);
                break;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i6, String str, String str2) {
        switch (this.f3822a) {
            case 1:
                super.onReceivedError(webView, i6, str, str2);
                Log.w("MainActivity", "legacy error: code=" + i6 + " url=" + str2 + " desc=" + str);
                break;
            default:
                super.onReceivedError(webView, i6, str, str2);
                break;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        switch (this.f3822a) {
            case 1:
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                if (webResourceRequest != null && webResourceRequest.isForMainFrame()) {
                    Log.d("MainActivity", "HTTP error for main frame => " + webResourceRequest.getUrl());
                    try {
                        webView.stopLoading();
                        break;
                    } catch (Throwable unused) {
                    }
                    webView.loadDataWithBaseURL("about:blank", "<!DOCTYPE html><html><head><meta charset='utf-8'><meta name='viewport' content='width=device-width, initial-scale=1'><style>body{background:#000;color:#eee;font-family:sans-serif;text-align:center;padding:40px}h1{font-size:20px;margin-bottom:12px}</style></head><body><h1>Server error</h1><p>Please try again later.</p></body></html>", "text/html", "UTF-8", null);
                    MainActivity mainActivity = (MainActivity) this.f3823b;
                    mainActivity.f2186c = true;
                    mainActivity.f2187d = true;
                    mainActivity.g();
                    break;
                }
                break;
            default:
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                break;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:169:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0136 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x017b  */
    @Override // android.webkit.WebViewClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.webkit.WebResourceResponse shouldInterceptRequest(android.webkit.WebView r17, android.webkit.WebResourceRequest r18) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1014
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: l6.c.shouldInterceptRequest(android.webkit.WebView, android.webkit.WebResourceRequest):android.webkit.WebResourceResponse");
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        switch (this.f3822a) {
            case 1:
                Log.d("MainActivity", "shouldOverrideUrlLoading => " + webResourceRequest.getUrl());
                break;
        }
        return d(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        switch (this.f3822a) {
            case 1:
                c(webView, webResourceRequest, webResourceError);
                if (webResourceRequest.isForMainFrame()) {
                    Log.e("MainActivity", "MainFrame error: " + ((Object) webResourceError.getDescription()) + " url=" + webResourceRequest.getUrl());
                    try {
                        webView.stopLoading();
                        break;
                    } catch (Throwable unused) {
                    }
                    webView.loadDataWithBaseURL("about:blank", "<!DOCTYPE html><html><head><meta charset='utf-8'><meta name='viewport' content='width=device-width, initial-scale=1'><style>body{background:#000;color:#eee;font-family:sans-serif;text-align:center;padding:40px}h1{font-size:20px;margin-bottom:12px}</style></head><body><h1>Connection error</h1><p>Please check your network and try again.</p></body></html>", "text/html", "UTF-8", null);
                    MainActivity mainActivity = (MainActivity) this.f3823b;
                    mainActivity.f2186c = true;
                    mainActivity.f2187d = true;
                    mainActivity.g();
                } else {
                    Log.w("MainActivity", "ignore subresource error: " + webResourceRequest.getUrl());
                }
                break;
            default:
                c(webView, webResourceRequest, webResourceError);
                break;
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Log.d("🌐 URL Loading shouldOverrideUrlLoading WebView", str);
        if (str.startsWith("http://") || str.startsWith("https://")) {
            return false;
        }
        new AlertDialog.Builder(webView.getContext()).setTitle("Notice").setMessage("Unsupported link type:\n".concat(str)).setPositiveButton("OK", (DialogInterface.OnClickListener) null).show();
        return true;
    }
}
