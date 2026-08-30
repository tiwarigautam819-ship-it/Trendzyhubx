package y1;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6107b;

    public a(String str, String str2) {
        this.f6106a = str;
        this.f6107b = str2;
    }

    private final Object readResolve() {
        return new b(this.f6106a, this.f6107b);
    }
}
