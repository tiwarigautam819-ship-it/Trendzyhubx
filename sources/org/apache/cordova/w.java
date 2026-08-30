package org.apache.cordova;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class w implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ s4.b f4566c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ CordovaWebViewImpl f4567d;

    public w(CordovaWebViewImpl cordovaWebViewImpl, int i6, int i9, s4.b bVar) {
        this.f4567d = cordovaWebViewImpl;
        this.f4564a = i6;
        this.f4565b = i9;
        this.f4566c = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            synchronized (this) {
                wait(this.f4564a);
            }
        } catch (InterruptedException e9) {
            e9.printStackTrace();
        }
        CordovaWebViewImpl cordovaWebViewImpl = this.f4567d;
        if (cordovaWebViewImpl.f4463d != this.f4565b || cordovaWebViewImpl.f4462c.getActivity() == null) {
            this.f4567d.f4462c.getActivity();
        } else {
            this.f4567d.f4462c.getActivity().runOnUiThread(this.f4566c);
        }
    }
}
