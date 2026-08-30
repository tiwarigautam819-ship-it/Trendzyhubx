package e2;

import android.content.Context;
import android.os.Bundle;
import f7.d;
import f7.e;
import k7.g;
import y1.n;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f2316b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n f2317a;

    static {
        d dVar = e.f2634a;
        f2316b = e.f2635b.a().nextDouble() <= 1.0E-4d;
    }

    public a(Context context) {
        this.f2317a = new n(context);
    }

    public final void a(Bundle bundle, String str) {
        if (f2316b && g.x(str, "gps")) {
            this.f2317a.a(bundle, str);
        }
    }
}
