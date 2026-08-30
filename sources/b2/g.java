package b2;

import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f920b;

    public g(View view, String str) {
        d7.g.f("view", view);
        d7.g.f("viewMapKey", str);
        this.f919a = new WeakReference(view);
        this.f920b = str;
    }

    public final View a() {
        WeakReference weakReference = this.f919a;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }
}
