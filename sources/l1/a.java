package l1;

import bridges.TomBridge;
import eventTrack.jpush.EngagelabInitManager;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements n6.a, EngagelabInitManager.TokenCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TomBridge f3747b;

    public /* synthetic */ a(TomBridge tomBridge, int i6) {
        this.f3746a = i6;
        this.f3747b = tomBridge;
    }

    @Override // n6.a
    public final void onToken(String str) {
        switch (this.f3746a) {
            case 0:
                this.f3747b.lambda$fetchFirebaseToken$1(str);
                break;
            case 1:
                this.f3747b.lambda$fetchJPushToken$3(str);
                break;
            case 2:
                this.f3747b.lambda$initFirebase$0(str);
                break;
            default:
                this.f3747b.lambda$initJPush$2(str);
                break;
        }
    }
}
