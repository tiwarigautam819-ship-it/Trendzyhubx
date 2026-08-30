package org.apache.cordova;

import org.apache.cordova.engine.SystemWebViewEngine;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class NativeToJsMessageQueue$OnlineEventsBridgeMode extends f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h0 f4483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f4484b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4485c;

    public NativeToJsMessageQueue$OnlineEventsBridgeMode(h0 h0Var) {
        this.f4483a = h0Var;
    }

    @Override // org.apache.cordova.f0
    public void notifyOfFlush(i0 i0Var, boolean z5) {
        if (!z5 || this.f4485c) {
            return;
        }
        this.f4484b = !this.f4484b;
    }

    @Override // org.apache.cordova.f0
    public void onNativeToJsMessageAvailable(i0 i0Var) {
        ((SystemWebViewEngine) ((k1.h) this.f4483a).f3502b).f4510g.getActivity().runOnUiThread(new s4.b(this, i0Var, 6, false));
    }

    @Override // org.apache.cordova.f0
    public void reset() {
        ((SystemWebViewEngine) ((k1.h) this.f4483a).f3502b).f4510g.getActivity().runOnUiThread(new androidx.fragment.app.p(10, this));
    }
}
