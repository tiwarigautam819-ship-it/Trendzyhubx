package v3;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m extends l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f5565d;

    public m(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f5565d = bArr;
    }

    @Override // v3.l
    public final byte[] e() {
        return this.f5565d;
    }
}
