package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import d1.g;
import e5.e;
import f1.b;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ProfileInstallerInitializer implements b {
    @Override // f1.b
    public final List a() {
        return Collections.EMPTY_LIST;
    }

    @Override // f1.b
    public final Object b(Context context) {
        if (Build.VERSION.SDK_INT < 24) {
            return new e(10);
        }
        g.a(new d1.e(this, context.getApplicationContext()));
        return new e(10);
    }
}
