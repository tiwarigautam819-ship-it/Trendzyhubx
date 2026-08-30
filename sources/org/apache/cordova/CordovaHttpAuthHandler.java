package org.apache.cordova;

import android.webkit.HttpAuthHandler;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class CordovaHttpAuthHandler implements e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HttpAuthHandler f4459a;

    public CordovaHttpAuthHandler(HttpAuthHandler httpAuthHandler) {
        this.f4459a = httpAuthHandler;
    }

    public void cancel() {
        this.f4459a.cancel();
    }

    public void proceed(String str, String str2) {
        this.f4459a.proceed(str, str2);
    }
}
