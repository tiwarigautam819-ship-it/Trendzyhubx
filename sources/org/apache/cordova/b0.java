package org.apache.cordova;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4494a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CoreAndroid f4495b;

    public /* synthetic */ b0(CoreAndroid coreAndroid, int i6) {
        this.f4494a = i6;
        this.f4495b = coreAndroid;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4494a) {
            case 0:
                this.f4495b.webView.getPluginManager().k("spinner", "stop");
                break;
            case 1:
                this.f4495b.webView.clearCache();
                break;
            case 2:
                this.f4495b.webView.clearHistory();
                break;
            default:
                this.f4495b.webView.backHistory();
                break;
        }
    }
}
