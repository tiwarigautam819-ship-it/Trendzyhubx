package com.getcapacitor;

import android.webkit.ValueCallback;
import com.getcapacitor.cordova.MockCordovaWebViewImpl;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements ValueCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1329a;

    public /* synthetic */ d(int i6) {
        this.f1329a = i6;
    }

    @Override // android.webkit.ValueCallback
    public final void onReceiveValue(Object obj) {
        String str = (String) obj;
        switch (this.f1329a) {
            case 0:
                Bridge.lambda$triggerJSEvent$2(str);
                break;
            case 1:
                Bridge.lambda$triggerJSEvent$3(str);
                break;
            default:
                MockCordovaWebViewImpl.lambda$triggerDocumentEvent$1(str);
                break;
        }
    }
}
