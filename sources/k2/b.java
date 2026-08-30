package k2;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import java.util.concurrent.TimeUnit;
import q2.t;
import q2.w;
import x1.j0;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f3513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f3514c;

    public /* synthetic */ b(String str, long j3, int i6) {
        this.f3512a = i6;
        this.f3513b = j3;
        this.f3514c = str;
    }

    private final void a() {
        long j3 = this.f3513b;
        String str = this.f3514c;
        if (d.f3522g == null) {
            d.f3522g = new n(Long.valueOf(j3), null);
        }
        n nVar = d.f3522g;
        if (nVar != null) {
            nVar.f3546c = Long.valueOf(j3);
        }
        int i6 = 1;
        if (d.f3521f.get() <= 0) {
            b bVar = new b(str, j3, i6);
            synchronized (d.f3520e) {
                d.f3519d = d.f3517b.schedule(bVar, w.b(r.b()) == null ? 60 : r8.f4811b, TimeUnit.SECONDS);
            }
        }
        long j8 = d.f3524j;
        long j9 = j8 > 0 ? (j3 - j8) / ((long) 1000) : 0L;
        y1.n nVar2 = k.f3540a;
        Context contextA = r.a();
        t tVarK = w.k(r.b(), false);
        if (tVarK != null && tVarK.f4813d && j9 > 0) {
            y1.k kVar = new y1.k(contextA, (String) null);
            Bundle bundle = new Bundle(1);
            bundle.putCharSequence("fb_aa_time_spent_view_name", str);
            double d6 = j9;
            if (j0.c() && !v2.a.b(kVar)) {
                try {
                    y1.k.f(kVar, "fb_aa_time_spent_on_view", Double.valueOf(d6), bundle, false, d.b());
                } catch (Throwable th) {
                    v2.a.a(th, kVar);
                }
            }
        }
        n nVar3 = d.f3522g;
        if (nVar3 != null) {
            nVar3.l();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3512a) {
            case 0:
                a();
                return;
            default:
                long j3 = this.f3513b;
                String str = this.f3514c;
                if (d.f3522g == null) {
                    d.f3522g = new n(Long.valueOf(j3), null);
                }
                if (d.f3521f.get() <= 0) {
                    o.d(str, d.f3522g, d.f3523i);
                    SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(r.a()).edit();
                    editorEdit.remove("com.facebook.appevents.SessionInfo.sessionStartTime");
                    editorEdit.remove("com.facebook.appevents.SessionInfo.sessionEndTime");
                    editorEdit.remove("com.facebook.appevents.SessionInfo.interruptionCount");
                    editorEdit.remove("com.facebook.appevents.SessionInfo.sessionId");
                    editorEdit.apply();
                    SharedPreferences.Editor editorEdit2 = PreferenceManager.getDefaultSharedPreferences(r.a()).edit();
                    editorEdit2.remove("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage");
                    editorEdit2.remove("com.facebook.appevents.SourceApplicationInfo.openedByApplink");
                    editorEdit2.apply();
                    d.f3522g = null;
                }
                synchronized (d.f3520e) {
                    d.f3519d = null;
                }
                return;
        }
    }
}
