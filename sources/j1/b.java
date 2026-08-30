package j1;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3336b;

    public b(String str) {
        this.f3335a = str;
        this.f3336b = 0;
    }

    public b(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.f3335a = null;
        this.f3336b = 1;
    }
}
