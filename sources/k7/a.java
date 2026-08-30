package k7;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f3570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile Charset f3571b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile Charset f3572c;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        d7.g.e("forName(...)", charsetForName);
        f3570a = charsetForName;
        d7.g.e("forName(...)", Charset.forName("UTF-16"));
        d7.g.e("forName(...)", Charset.forName("UTF-16BE"));
        d7.g.e("forName(...)", Charset.forName("UTF-16LE"));
        d7.g.e("forName(...)", Charset.forName("US-ASCII"));
        d7.g.e("forName(...)", Charset.forName("ISO-8859-1"));
    }
}
