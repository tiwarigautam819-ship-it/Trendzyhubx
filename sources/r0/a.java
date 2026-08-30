package r0;

import android.text.Editable;
import p0.u;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends Editable.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f4941a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile a f4942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class f4943c;

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = f4943c;
        return cls != null ? new u(cls, charSequence) : super.newEditable(charSequence);
    }
}
