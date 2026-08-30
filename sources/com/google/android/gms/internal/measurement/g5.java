package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.StrictMode;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g5 implements x4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s.e f1653a = new s.e(0);

    public static g5 a(Context context, d5 d5Var) {
        if (s4.a()) {
            throw null;
        }
        synchronized (g5.class) {
            StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
            try {
                throw null;
            } finally {
            }
        }
    }

    public static synchronized void b() {
        Iterator it = ((s.d) f1653a.values()).iterator();
        if (it.hasNext()) {
            ((g5) it.next()).getClass();
            throw null;
        }
        f1653a.clear();
    }
}
