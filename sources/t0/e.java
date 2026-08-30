package t0;

import androidx.fragment.app.c0;
import d7.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class e extends RuntimeException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c0 f5299a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(c0 c0Var, String str) {
        super(str);
        g.f("fragment", c0Var);
        this.f5299a = c0Var;
    }
}
