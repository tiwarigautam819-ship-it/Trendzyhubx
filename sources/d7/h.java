package d7;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h implements e, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2294a;

    public h(int i6) {
        this.f2294a = i6;
    }

    @Override // d7.e
    public final int d() {
        return this.f2294a;
    }

    public final String toString() {
        l.f2299a.getClass();
        String string = getClass().getGenericInterfaces()[0].toString();
        if (string.startsWith("kotlin.jvm.functions.")) {
            string = string.substring(21);
        }
        g.e("renderLambdaToString(...)", string);
        return string;
    }
}
