package androidx.emoji2.text;

import android.content.Context;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.lifecycle.o;
import androidx.lifecycle.t;
import f1.a;
import f1.b;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import p0.k;
import p0.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class EmojiCompatInitializer implements b {
    @Override // f1.b
    public final List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // f1.b
    public final Object b(Context context) {
        r rVar = new r(new d4.b(context, 1));
        rVar.f4612b = 1;
        if (k.f4586k == null) {
            synchronized (k.f4585j) {
                try {
                    if (k.f4586k == null) {
                        k.f4586k = new k(rVar);
                    }
                } finally {
                }
            }
        }
        c(context);
        return Boolean.TRUE;
    }

    public final void c(Context context) {
        Object objB;
        a aVarC = a.c(context);
        aVarC.getClass();
        synchronized (a.f2527e) {
            try {
                objB = aVarC.f2528a.get(ProcessLifecycleInitializer.class);
                if (objB == null) {
                    objB = aVarC.b(ProcessLifecycleInitializer.class, new HashSet());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        o lifecycle = ((t) objB).getLifecycle();
        lifecycle.a(new l6.a(this, lifecycle));
    }
}
