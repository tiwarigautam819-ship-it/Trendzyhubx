package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements f1.b {
    @Override // f1.b
    public final List a() {
        return s6.o.f5282a;
    }

    @Override // f1.b
    public final Object b(Context context) {
        d7.g.f("context", context);
        f1.a aVarC = f1.a.c(context);
        d7.g.e("getInstance(context)", aVarC);
        if (!aVarC.f2529b.contains(ProcessLifecycleInitializer.class)) {
            throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml");
        }
        if (!q.f732a.getAndSet(true)) {
            Context applicationContext = context.getApplicationContext();
            d7.g.d("null cannot be cast to non-null type android.app.Application", applicationContext);
            ((Application) applicationContext).registerActivityLifecycleCallbacks(new p());
        }
        c0 c0Var = c0.f679i;
        c0Var.getClass();
        c0Var.f684e = new Handler();
        c0Var.f685f.e(m.ON_CREATE);
        Context applicationContext2 = context.getApplicationContext();
        d7.g.d("null cannot be cast to non-null type android.app.Application", applicationContext2);
        ((Application) applicationContext2).registerActivityLifecycleCallbacks(new b0(c0Var));
        return c0Var;
    }
}
