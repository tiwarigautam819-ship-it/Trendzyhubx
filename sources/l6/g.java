package l6;

import android.util.Log;
import android.view.ViewGroup;
import com.lottery.app.MainActivity;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3834a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f3835b;

    public /* synthetic */ g(MainActivity mainActivity, int i6) {
        this.f3834a = i6;
        this.f3835b = mainActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i6 = this.f3834a;
        MainActivity mainActivity = this.f3835b;
        switch (i6) {
            case 0:
                int i9 = MainActivity.f2183g;
                mainActivity.getClass();
                Log.d("MainActivity", "1111 splash min duration reached");
                mainActivity.f2186c = true;
                mainActivity.g();
                break;
            case 1:
                int i10 = MainActivity.f2183g;
                Log.d("MainActivity", "2222 splash max wait reached");
                if (!mainActivity.f2188e) {
                    mainActivity.f2186c = true;
                    mainActivity.g();
                }
                break;
            default:
                int i11 = MainActivity.f2183g;
                ViewGroup viewGroup = (ViewGroup) mainActivity.f2185b.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(mainActivity.f2185b);
                }
                mainActivity.f2185b = null;
                f4.f.a(mainActivity.getWindow(), false, false, false);
                mainActivity.getWindow().clearFlags(201326592);
                mainActivity.getWindow().addFlags(Integer.MIN_VALUE);
                mainActivity.getWindow().setStatusBarColor(-16777216);
                mainActivity.getWindow().setNavigationBarColor(-16777216);
                t4.b.k(mainActivity.getWindow(), false);
                mainActivity.getWindow().getDecorView().setSystemUiVisibility(0);
                break;
        }
    }
}
