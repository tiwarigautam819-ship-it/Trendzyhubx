package k1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends b {
    @Override // k1.c
    public final boolean b() {
        if (!super.b() || !y1.g.r("MULTI_PROCESS")) {
            return false;
        }
        int i6 = j1.d.f3341a;
        if (k.f3505b.b()) {
            return l.f3508a.getStatics().isMultiProcessEnabled();
        }
        throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
    }
}
