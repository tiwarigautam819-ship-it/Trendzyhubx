package org.apache.cordova;

import org.apache.cordova.CordovaWebViewImpl;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class z implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CordovaWebViewImpl.EngineClient f4574a;

    public z(CordovaWebViewImpl.EngineClient engineClient) {
        this.f4574a = engineClient;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CordovaWebViewImpl cordovaWebViewImpl = CordovaWebViewImpl.this;
        try {
            Thread.sleep(2000L);
            if (cordovaWebViewImpl.f4462c.getActivity() != null) {
                cordovaWebViewImpl.f4462c.getActivity().runOnUiThread(new y(this));
            }
        } catch (InterruptedException unused) {
        }
    }
}
