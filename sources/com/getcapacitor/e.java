package com.getcapacitor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1330a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Bridge f1331b;

    public /* synthetic */ e(Bridge bridge, int i6) {
        this.f1330a = i6;
        this.f1331b = bridge;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1330a) {
            case 0:
                this.f1331b.lambda$setServerBasePath$4();
                break;
            case 1:
                this.f1331b.lambda$reload$6();
                break;
            default:
                this.f1331b.lambda$setServerAssetPath$5();
                break;
        }
    }
}
