package com.getcapacitor;

import android.net.Uri;
import android.webkit.ValueCallback;
import com.getcapacitor.BridgeWebChromeClient;
import java.lang.reflect.Method;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q implements d.b, BridgeWebChromeClient.ActivityResultListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1362c;

    public /* synthetic */ q(Object obj, int i6, Object obj2) {
        this.f1360a = i6;
        this.f1361b = obj;
        this.f1362c = obj2;
    }

    @Override // d.b
    public void e(Object obj) {
        switch (this.f1360a) {
            case 0:
                ((Plugin) this.f1361b).lambda$initializeActivityLaunchers$0((Method) this.f1362c, (d.a) obj);
                break;
            default:
                ((Plugin) this.f1361b).lambda$initializeActivityLaunchers$1((Method) this.f1362c, (Map) obj);
                break;
        }
    }

    @Override // com.getcapacitor.BridgeWebChromeClient.ActivityResultListener
    public void onActivityResult(d.a aVar) {
        BridgeWebChromeClient.lambda$showImageCapturePicker$13((Uri) this.f1361b, (ValueCallback) this.f1362c, aVar);
    }
}
