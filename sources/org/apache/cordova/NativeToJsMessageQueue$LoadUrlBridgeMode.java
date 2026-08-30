package org.apache.cordova;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class NativeToJsMessageQueue$LoadUrlBridgeMode extends f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v f4481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m f4482b;

    public NativeToJsMessageQueue$LoadUrlBridgeMode(v vVar, m mVar) {
        this.f4481a = vVar;
        this.f4482b = mVar;
    }

    @Override // org.apache.cordova.f0
    public void onNativeToJsMessageAvailable(i0 i0Var) {
        this.f4482b.getActivity().runOnUiThread(new s4.b(this, i0Var, 5, false));
    }
}
