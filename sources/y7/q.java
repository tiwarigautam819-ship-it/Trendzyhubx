package y7;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class q {
    public static int a(int i6, int i9, int i10) throws IOException {
        if ((i9 & 8) != 0) {
            i6--;
        }
        if (i10 <= i6) {
            return i6 - i10;
        }
        throw new IOException(q2.x.e(i10, i6, "PROTOCOL_ERROR padding ", " > remaining length "));
    }
}
