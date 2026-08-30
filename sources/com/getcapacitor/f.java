package com.getcapacitor;

import android.webkit.ValueCallback;
import com.getcapacitor.BridgeWebChromeClient;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements BridgeWebChromeClient.ActivityResultListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ValueCallback f1333b;

    public /* synthetic */ f(ValueCallback valueCallback, int i6) {
        this.f1332a = i6;
        this.f1333b = valueCallback;
    }

    @Override // com.getcapacitor.BridgeWebChromeClient.ActivityResultListener
    public final void onActivityResult(d.a aVar) {
        switch (this.f1332a) {
            case 0:
                BridgeWebChromeClient.lambda$showVideoCapturePicker$14(this.f1333b, aVar);
                break;
            default:
                BridgeWebChromeClient.lambda$showFilePicker$15(this.f1333b, aVar);
                break;
        }
    }
}
