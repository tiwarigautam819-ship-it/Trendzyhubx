package k7;

import java.io.Serializable;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3583a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3584b;

    public e(String str, int i6) {
        this.f3583a = str;
        this.f3584b = i6;
    }

    private final Object readResolve() {
        Pattern patternCompile = Pattern.compile(this.f3583a, this.f3584b);
        d7.g.e("compile(...)", patternCompile);
        return new f(patternCompile);
    }
}
