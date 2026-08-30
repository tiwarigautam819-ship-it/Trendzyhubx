package j0;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c0 implements View.OnApplyWindowInsetsListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b1 f3255a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f3256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f3257c;

    public c0(View view, r rVar) {
        this.f3256b = view;
        this.f3257c = rVar;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        b1 b1VarG = b1.g(windowInsets, view);
        int i6 = Build.VERSION.SDK_INT;
        r rVar = this.f3257c;
        if (i6 < 30) {
            d0.a(windowInsets, this.f3256b);
            if (b1VarG.equals(this.f3255a)) {
                return rVar.e(view, b1VarG).f();
            }
        }
        this.f3255a = b1VarG;
        b1 b1VarE = rVar.e(view, b1VarG);
        if (i6 >= 30) {
            return b1VarE.f();
        }
        WeakHashMap weakHashMap = k0.f3286a;
        b0.c(view);
        return b1VarE.f();
    }
}
