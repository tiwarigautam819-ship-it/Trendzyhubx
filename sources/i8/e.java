package i8;

import android.util.Log;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f3226a = new AtomicBoolean(false);

    public static void a(boolean z5, e5.e eVar, int i6, String str) {
        f3226a.set(false);
        if (z5) {
            Log.d("Gate", "onActivityResult -> authenticated");
            throw null;
        }
        Log.d("Gate", "onActivityResult -> error " + i6 + " " + ((Object) str));
    }
}
