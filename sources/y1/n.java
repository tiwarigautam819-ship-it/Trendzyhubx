package y1;

import android.content.Context;
import android.os.Bundle;
import x1.j0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f6139a;

    public void a(Bundle bundle, String str) {
        x1.r rVar = x1.r.f5918a;
        if (j0.c()) {
            ((k) this.f6139a).g(bundle, str);
        }
    }

    public n(Context context) {
        this.f6139a = new k(context, (String) null);
    }

    public n(Context context, String str) {
        this.f6139a = new k(context, str);
    }
}
