package g8;

import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.util.Log;
import android.webkit.ClientCertRequest;
import android.webkit.HttpAuthHandler;
import android.webkit.MimeTypeMap;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.getcapacitor.Bridge;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import k1.h;
import org.apache.cordova.CordovaClientCertRequest;
import org.apache.cordova.CordovaHttpAuthHandler;
import org.apache.cordova.engine.SystemWebViewEngine;
import org.apache.cordova.i0;
import org.apache.cordova.l0;
import org.apache.cordova.o;
import org.apache.cordova.r;
import org.apache.cordova.s;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SystemWebViewEngine f2878a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f2879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2880c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Hashtable f2881d = new Hashtable();

    public e(SystemWebViewEngine systemWebViewEngine) {
        this.f2878a = systemWebViewEngine;
        ArrayList arrayList = new ArrayList();
        String strB = systemWebViewEngine.f4506c.b("hostname", "localhost");
        arrayList.add(new i0.b("/", new d(this, systemWebViewEngine)));
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            i0.b bVar = (i0.b) obj;
            arrayList2.add(new j1.c(strB, (String) bVar.f3076a, (d) bVar.f3077b));
        }
        this.f2879b = new h(13, arrayList2);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (this.f2880c || str.startsWith("about:")) {
            this.f2880c = false;
            this.f2878a.f4508e.onPageFinishedLoading(str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.f2880c = true;
        org.apache.cordova.h hVar = this.f2878a.f4507d;
        i0 i0Var = hVar.f4523b;
        synchronized (i0Var) {
            i0Var.f4528b.clear();
            i0Var.f(-1);
        }
        hVar.f4524c = -1;
        this.f2878a.f4508e.onPageStarted(str);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedClientCertRequest(WebView webView, ClientCertRequest clientCertRequest) {
        l0 l0Var = this.f2878a.h;
        if (l0Var != null) {
            CordovaClientCertRequest cordovaClientCertRequest = new CordovaClientCertRequest(clientCertRequest);
            synchronized (l0Var.f4542a) {
                for (o oVar : l0Var.f4542a.values()) {
                    if (oVar != null && oVar.onReceivedClientCertRequest(l0Var.f4545d, cordovaClientCertRequest)) {
                        this.f2878a.f4508e.clearLoadTimeoutTimer();
                        return;
                    }
                }
            }
        }
        super.onReceivedClientCertRequest(webView, clientCertRequest);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i6, String str, String str2) {
        if (this.f2880c) {
            SystemWebViewEngine systemWebViewEngine = this.f2878a;
            if (i6 == -10) {
                systemWebViewEngine.f4508e.clearLoadTimeoutTimer();
                if (webView.canGoBack()) {
                    webView.goBack();
                    return;
                }
                super.onReceivedError(webView, i6, str, str2);
            }
            systemWebViewEngine.f4508e.onReceivedError(i6, str, str2);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
        Hashtable hashtable = this.f2881d;
        if (hashtable.get(str.concat(str2)) != null) {
            throw new ClassCastException();
        }
        if (hashtable.get(str) != null) {
            throw new ClassCastException();
        }
        if (hashtable.get(str2) != null) {
            throw new ClassCastException();
        }
        if (hashtable.get("") != null) {
            throw new ClassCastException();
        }
        l0 l0Var = this.f2878a.h;
        if (l0Var != null) {
            CordovaHttpAuthHandler cordovaHttpAuthHandler = new CordovaHttpAuthHandler(httpAuthHandler);
            synchronized (l0Var.f4542a) {
                for (o oVar : l0Var.f4542a.values()) {
                    if (oVar != null && oVar.onReceivedHttpAuthRequest(l0Var.f4545d, cordovaHttpAuthHandler, str, str2)) {
                        this.f2878a.f4508e.clearLoadTimeoutTimer();
                        return;
                    }
                }
            }
        }
        super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        SystemWebViewEngine systemWebViewEngine = this.f2878a;
        try {
            if ((systemWebViewEngine.f4510g.getActivity().getPackageManager().getApplicationInfo(systemWebViewEngine.f4510g.getActivity().getPackageName(), 128).flags & 2) != 0) {
                sslErrorHandler.proceed();
            } else {
                super.onReceivedSslError(webView, sslErrorHandler, sslError);
            }
        } catch (PackageManager.NameNotFoundException unused) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        SystemWebViewEngine systemWebViewEngine = this.f2878a;
        try {
            if (!systemWebViewEngine.h.m(str)) {
                return new WebResourceResponse("text/plain", "UTF-8", null);
            }
            s sVar = systemWebViewEngine.f4511i;
            Uri uri = Uri.parse(str);
            Uri uriE = sVar.e(uri);
            if (uri.equals(uriE)) {
                if (s.c(uri) == 1) {
                    if (uri.getQuery() == null && uri.getFragment() == null) {
                        uri.toString().contains("%");
                    }
                }
                if (!FirebaseAnalytics.Param.CONTENT.equals(uri.getScheme())) {
                    return null;
                }
            }
            r rVarD = sVar.d(uriE);
            return new WebResourceResponse(rVarD.f4560b, "UTF-8", rVarD.f4559a);
        } catch (IOException e9) {
            if (!(e9 instanceof FileNotFoundException)) {
                Log.e("SystemWebViewClient", "Error occurred while loading a file (returning a 404).", e9);
            }
            return new WebResourceResponse("text/plain", "UTF-8", null);
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return this.f2878a.f4508e.onNavigationAttempt(str);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        WebResourceResponse webResourceResponse;
        Uri url = webResourceRequest.getUrl();
        ArrayList arrayList = (ArrayList) this.f2879b.f3502b;
        int size = arrayList.size();
        int i6 = 0;
        while (true) {
            webResourceResponse = null;
            if (i6 >= size) {
                break;
            }
            Object obj = arrayList.get(i6);
            i6++;
            j1.c cVar = (j1.c) obj;
            cVar.getClass();
            String str = cVar.f3339c;
            d dVar = ((!url.getScheme().equals(Bridge.CAPACITOR_HTTP_SCHEME) || cVar.f3337a) && (url.getScheme().equals(Bridge.CAPACITOR_HTTP_SCHEME) || url.getScheme().equals(Bridge.CAPACITOR_HTTPS_SCHEME)) && url.getAuthority().equals(cVar.f3338b) && url.getPath().startsWith(str)) ? cVar.f3340d : null;
            if (dVar != null) {
                String strReplaceFirst = url.getPath().replaceFirst(str, "");
                e eVar = dVar.f2876a;
                SystemWebViewEngine systemWebViewEngine = dVar.f2877b;
                try {
                    l0 l0Var = eVar.f2878a.h;
                    if (l0Var != null) {
                        ArrayList arrayList2 = new ArrayList();
                        for (o oVar : l0Var.f4542a.values()) {
                            if (oVar != null) {
                                oVar.getPathHandler();
                            }
                        }
                        Iterator it = arrayList2.iterator();
                        if (it.hasNext()) {
                            if (it.next() == null) {
                                throw null;
                            }
                            throw new ClassCastException();
                        }
                    }
                    if (strReplaceFirst.isEmpty()) {
                        strReplaceFirst = "index.html";
                    }
                    InputStream inputStreamOpen = systemWebViewEngine.f4504a.getContext().getAssets().open("www/" + strReplaceFirst, 2);
                    String mimeTypeFromExtension = "text/html";
                    String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(strReplaceFirst);
                    if (fileExtensionFromUrl != null) {
                        if (!strReplaceFirst.endsWith(".js") && !strReplaceFirst.endsWith(".mjs")) {
                            if (strReplaceFirst.endsWith(".wasm")) {
                                mimeTypeFromExtension = "application/wasm";
                            } else {
                                mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl);
                            }
                        } else {
                            mimeTypeFromExtension = "application/javascript";
                        }
                    }
                    webResourceResponse = new WebResourceResponse(mimeTypeFromExtension, null, inputStreamOpen);
                } catch (Exception e9) {
                    e9.printStackTrace();
                    Log.e("SystemWebViewClient", e9.getMessage());
                }
                if (webResourceResponse != null) {
                    break;
                }
            }
        }
        return webResourceResponse;
    }
}
