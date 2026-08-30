package m1;

import android.util.Log;
import com.google.android.gms.internal.measurement.y4;
import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f4216a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ File f4217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f4218c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f4219d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f4220e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f4221f;

    public /* synthetic */ d(e eVar, File file, String str, String str2, String str3, String str4) {
        this.f4216a = eVar;
        this.f4217b = file;
        this.f4218c = str;
        this.f4219d = str2;
        this.f4220e = str3;
        this.f4221f = str4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        e eVar = this.f4216a;
        File file = this.f4217b;
        String str = this.f4218c;
        String str2 = this.f4219d;
        String str3 = this.f4220e;
        String str4 = this.f4221f;
        eVar.getClass();
        try {
            if (eVar.f4227f) {
                file.delete();
            } else {
                eVar.f4224c.a(str, file, str2, str3);
                y4 y4Var = eVar.f4225d;
                File file2 = eVar.f4224c.f4215a;
                if (((AtomicBoolean) y4Var.f1991c).compareAndSet(false, true)) {
                    ((ExecutorService) y4Var.f1990b).submit(new a2.i(y4Var, 14, file2));
                }
                Log.d("GameResourceCache", "CACHED ".concat(str));
            }
        } finally {
            eVar.f4228g.remove(str4);
        }
    }
}
