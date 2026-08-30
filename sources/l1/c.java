package l1;

import bridges.TomBridge;
import eventTrack.jpush.EngagelabInitManager;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements EngagelabInitManager.TokenListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TomBridge f3749a;

    public c(TomBridge tomBridge) {
        this.f3749a = tomBridge;
    }

    @Override // eventTrack.jpush.EngagelabInitManager.TokenListener
    public final void onToken(String str) {
        this.f3749a.sendTokenToH5(3, str);
    }
}
