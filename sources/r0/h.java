package r0;

import android.widget.EditText;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends p0.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f4956a;

    public h(EditText editText) {
        this.f4956a = new WeakReference(editText);
    }

    @Override // p0.h
    public final void a() {
        i.a((EditText) this.f4956a.get(), 1);
    }
}
