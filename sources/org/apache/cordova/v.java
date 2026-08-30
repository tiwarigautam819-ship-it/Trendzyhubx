package org.apache.cordova;

import android.view.View;
import android.webkit.ValueCallback;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public interface v {
    boolean canGoBack();

    void clearCache();

    void clearHistory();

    void destroy();

    void evaluateJavascript(String str, ValueCallback valueCallback);

    d0 getCookieManager();

    String getUrl();

    View getView();

    boolean goBack();

    void init(t tVar, m mVar, u uVar, s sVar, l0 l0Var, i0 i0Var);

    void loadUrl(String str, boolean z5);

    void setPaused(boolean z5);
}
