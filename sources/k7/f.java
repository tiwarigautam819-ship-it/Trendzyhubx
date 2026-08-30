package k7;

import java.io.Serializable;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pattern f3585a;

    public f(Pattern pattern) {
        this.f3585a = pattern;
    }

    private final Object writeReplace() {
        Pattern pattern = this.f3585a;
        String strPattern = pattern.pattern();
        d7.g.e("pattern(...)", strPattern);
        return new e(strPattern, pattern.flags());
    }

    public final String toString() {
        String string = this.f3585a.toString();
        d7.g.e("toString(...)", string);
        return string;
    }

    public f(String str) {
        Pattern patternCompile = Pattern.compile(str);
        d7.g.e("compile(...)", patternCompile);
        this.f3585a = patternCompile;
    }
}
