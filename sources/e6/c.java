package e6;

import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public f f2409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StringBuilder f2410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2411d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2412e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public e f2413f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2414g;

    public c(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
        StringBuilder sb = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i6 = 0; i6 < length; i6++) {
            char c8 = (char) (bytes[i6] & 255);
            if (c8 == '?' && str.charAt(i6) != '?') {
                throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
            }
            sb.append(c8);
        }
        this.f2408a = sb.toString();
        this.f2409b = f.f2427a;
        this.f2410c = new StringBuilder(str.length());
        this.f2412e = -1;
    }

    public final char a() {
        return this.f2408a.charAt(this.f2411d);
    }

    public final boolean b() {
        return this.f2411d < this.f2408a.length() - this.f2414g;
    }

    public final void c(int i6) {
        e eVar = this.f2413f;
        if (eVar == null || i6 > eVar.f2421b) {
            this.f2413f = e.e(i6, this.f2409b);
        }
    }

    public final void d(char c8) {
        this.f2410c.append(c8);
    }
}
