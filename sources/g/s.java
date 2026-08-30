package g;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q f2778a = new q(new r(0));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f2779b = -100;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static f0.f f2780c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static f0.f f2781d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Boolean f2782e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f2783f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final s.f f2784g = new s.f(0);
    public static final Object h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f2785i = new Object();

    public static boolean c(Context context) {
        if (f2782e == null) {
            try {
                int i6 = k0.f2747a;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) k0.class), Build.VERSION.SDK_INT >= 24 ? j0.a() | 128 : 640).metaData;
                if (bundle != null) {
                    f2782e = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                f2782e = Boolean.FALSE;
            }
        }
        return f2782e.booleanValue();
    }

    public static void g(f0 f0Var) {
        synchronized (h) {
            try {
                s.f fVar = f2784g;
                fVar.getClass();
                s.a aVar = new s.a(fVar);
                while (aVar.hasNext()) {
                    s sVar = (s) ((WeakReference) aVar.next()).get();
                    if (sVar == f0Var || sVar == null) {
                        aVar.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void a();

    public abstract void b();

    public abstract void e();

    public abstract void f();

    public abstract boolean i(int i6);

    public abstract void j(int i6);

    public abstract void k(View view);

    public abstract void l(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void m(CharSequence charSequence);

    public abstract k.b n(k.a aVar);
}
