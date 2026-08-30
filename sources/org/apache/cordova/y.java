package org.apache.cordova;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class y implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z f4573a;

    public y(z zVar) {
        this.f4573a = zVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CordovaWebViewImpl.this.f4460a.k("spinner", "stop");
    }
}
