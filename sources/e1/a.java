package e1;

import android.os.Bundle;
import g.m;
import java.util.ArrayList;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2304b;

    public a(e eVar) {
        this.f2303a = 0;
        this.f2304b = new LinkedHashSet();
        eVar.c("androidx.savedstate.Restarter", this);
    }

    @Override // e1.d
    public final Bundle a() {
        switch (this.f2303a) {
            case 0:
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("classes_to_restore", new ArrayList<>((LinkedHashSet) this.f2304b));
                return bundle;
            default:
                Bundle bundle2 = new Bundle();
                ((m) this.f2304b).getDelegate().getClass();
                return bundle2;
        }
    }

    public a(m mVar) {
        this.f2303a = 1;
        this.f2304b = mVar;
    }
}
