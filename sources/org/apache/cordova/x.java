package org.apache.cordova;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class x implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w f4569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f4570c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f4571d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CordovaWebViewImpl f4572e;

    public x(CordovaWebViewImpl cordovaWebViewImpl, int i6, w wVar, String str, boolean z5) {
        this.f4572e = cordovaWebViewImpl;
        this.f4568a = i6;
        this.f4569b = wVar;
        this.f4570c = str;
        this.f4571d = z5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i6 = this.f4568a;
        CordovaWebViewImpl cordovaWebViewImpl = this.f4572e;
        if (i6 > 0) {
            cordovaWebViewImpl.f4462c.getThreadPool().execute(this.f4569b);
        }
        cordovaWebViewImpl.f4461b.loadUrl(this.f4570c, this.f4571d);
    }
}
