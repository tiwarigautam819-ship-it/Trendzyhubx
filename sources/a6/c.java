package a6;

import android.view.View;
import j0.d0;
import j0.k0;
import java.util.Comparator;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f86a;

    public /* synthetic */ c(int i6) {
        this.f86a = i6;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f86a) {
            case 0:
                return ((f) obj).f97d - ((f) obj2).f97d;
            case 1:
                return ((Comparable) obj).compareTo((Comparable) obj2);
            default:
                WeakHashMap weakHashMap = k0.f3286a;
                float fE = d0.e((View) obj);
                float fE2 = d0.e((View) obj2);
                if (fE > fE2) {
                    return -1;
                }
                return fE < fE2 ? 1 : 0;
        }
    }
}
