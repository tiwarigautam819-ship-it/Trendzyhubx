package l6;

import android.util.Log;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import com.getcapacitor.Bridge;
import com.getcapacitor.BridgeWebViewClient;
import com.lottery.app.MainActivity;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends BridgeWebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f3836a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(MainActivity mainActivity, Bridge bridge) {
        super(bridge);
        this.f3836a = mainActivity;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageCommitVisible(WebView webView, String str) {
        super.onPageCommitVisible(webView, str);
        MainActivity mainActivity = this.f3836a;
        mainActivity.f2187d = true;
        Log.d("MainActivity", "onPageCommitVisible => " + str);
        mainActivity.g();
    }

    @Override // com.getcapacitor.BridgeWebViewClient, android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        Log.d("MainActivity", "onPageFinished => " + str);
        int i6 = MainActivity.f2183g;
        this.f3836a.g();
    }

    @Override // com.getcapacitor.BridgeWebViewClient, android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (webResourceRequest == null || !webResourceRequest.isForMainFrame()) {
            return;
        }
        Log.e("MainActivity", "MainFrame error: " + ((Object) webResourceError.getDescription()) + " url=" + webResourceRequest.getUrl());
        MainActivity mainActivity = this.f3836a;
        mainActivity.f2186c = true;
        mainActivity.f2187d = true;
        mainActivity.g();
    }
}
