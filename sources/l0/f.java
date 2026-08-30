package l0;

import android.content.ClipDescription;
import android.net.Uri;
import android.view.inputmethod.InputContentInfo;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InputContentInfo f3745a;

    public f(Object obj) {
        this.f3745a = (InputContentInfo) obj;
    }

    @Override // l0.g
    public final Object b() {
        return this.f3745a;
    }

    @Override // l0.g
    public final Uri c() {
        return this.f3745a.getContentUri();
    }

    @Override // l0.g
    public final void d() {
        this.f3745a.requestPermission();
    }

    @Override // l0.g
    public final Uri e() {
        return this.f3745a.getLinkUri();
    }

    @Override // l0.g
    public final ClipDescription getDescription() {
        return this.f3745a.getDescription();
    }

    public f(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.f3745a = new InputContentInfo(uri, clipDescription, uri2);
    }
}
