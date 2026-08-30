package d4;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Binder;
import android.os.Process;
import androidx.fragment.app.e;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p0.j;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2277a;

    public b(Context context, int i6) {
        switch (i6) {
            case 1:
                this.f2277a = context.getApplicationContext();
                break;
            default:
                this.f2277a = context;
                break;
        }
    }

    @Override // p0.j
    public void a(x2.a aVar) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new p0.a("EmojiCompatInitializer"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new e(this, aVar, threadPoolExecutor, 7));
    }

    public ApplicationInfo b(int i6, String str) {
        return this.f2277a.getPackageManager().getApplicationInfo(str, i6);
    }

    public PackageInfo c(int i6, String str) {
        return this.f2277a.getPackageManager().getPackageInfo(str, i6);
    }

    public boolean d() {
        String nameForUid;
        int callingUid = Binder.getCallingUid();
        int iMyUid = Process.myUid();
        Context context = this.f2277a;
        if (callingUid == iMyUid) {
            return a.c(context);
        }
        if (!b4.c.b() || (nameForUid = context.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return context.getPackageManager().isInstantApp(nameForUid);
    }
}
