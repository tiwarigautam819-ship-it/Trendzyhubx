package y1;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f6115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f6116d;

    public d(String str, String str2, boolean z5, boolean z8) {
        this.f6113a = str;
        this.f6114b = str2;
        this.f6115c = z5;
        this.f6116d = z8;
    }

    private final Object readResolve() {
        return new e(this.f6113a, this.f6114b, this.f6115c, this.f6116d);
    }
}
