package p0;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ThreadLocal f4620d = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.google.firebase.messaging.y f4622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile int f4623c = 0;

    public v(com.google.firebase.messaging.y yVar, int i6) {
        this.f4622b = yVar;
        this.f4621a = i6;
    }

    public final int a(int i6) {
        q0.a aVarB = b();
        int iA = aVarB.a(16);
        if (iA == 0) {
            return 0;
        }
        ByteBuffer byteBuffer = (ByteBuffer) aVarB.f3249d;
        int i9 = iA + aVarB.f3246a;
        return byteBuffer.getInt((i6 * 4) + byteBuffer.getInt(i9) + i9 + 4);
    }

    public final q0.a b() {
        ThreadLocal threadLocal = f4620d;
        q0.a aVar = (q0.a) threadLocal.get();
        if (aVar == null) {
            aVar = new q0.a();
            threadLocal.set(aVar);
        }
        q0.b bVar = (q0.b) this.f4622b.f2162a;
        int iA = bVar.a(6);
        if (iA != 0) {
            int i6 = iA + bVar.f3246a;
            int i9 = (this.f4621a * 4) + ((ByteBuffer) bVar.f3249d).getInt(i6) + i6 + 4;
            int i10 = ((ByteBuffer) bVar.f3249d).getInt(i9) + i9;
            ByteBuffer byteBuffer = (ByteBuffer) bVar.f3249d;
            aVar.f3249d = byteBuffer;
            if (byteBuffer != null) {
                aVar.f3246a = i10;
                int i11 = i10 - byteBuffer.getInt(i10);
                aVar.f3247b = i11;
                aVar.f3248c = ((ByteBuffer) aVar.f3249d).getShort(i11);
                return aVar;
            }
            aVar.f3246a = 0;
            aVar.f3247b = 0;
            aVar.f3248c = 0;
        }
        return aVar;
    }

    public final String toString() {
        int i6;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        q0.a aVarB = b();
        int iA = aVarB.a(4);
        sb.append(Integer.toHexString(iA != 0 ? ((ByteBuffer) aVarB.f3249d).getInt(iA + aVarB.f3246a) : 0));
        sb.append(", codepoints:");
        q0.a aVarB2 = b();
        int iA2 = aVarB2.a(16);
        if (iA2 != 0) {
            int i9 = iA2 + aVarB2.f3246a;
            i6 = ((ByteBuffer) aVarB2.f3249d).getInt(((ByteBuffer) aVarB2.f3249d).getInt(i9) + i9);
        } else {
            i6 = 0;
        }
        for (int i10 = 0; i10 < i6; i10++) {
            sb.append(Integer.toHexString(a(i10)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
