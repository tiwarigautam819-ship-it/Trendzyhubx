package r7;

import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.constants.MTPushConstants;
import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class u implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.common.internal.g f5149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s f5150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f5151c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f5152d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final i f5153e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final k f5154f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final w f5155g;
    public final u h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final u f5156i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final u f5157j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f5158k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f5159l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final com.google.firebase.messaging.p f5160m;

    public u(com.google.android.gms.common.internal.g gVar, s sVar, String str, int i6, i iVar, k kVar, w wVar, u uVar, u uVar2, u uVar3, long j3, long j8, com.google.firebase.messaging.p pVar) {
        d7.g.f("request", gVar);
        d7.g.f(MTCoreConstants.Protocol.KEY_PROTOCOL, sVar);
        d7.g.f(MTPushConstants.Message.KEY_MESSAGE, str);
        this.f5149a = gVar;
        this.f5150b = sVar;
        this.f5151c = str;
        this.f5152d = i6;
        this.f5153e = iVar;
        this.f5154f = kVar;
        this.f5155g = wVar;
        this.h = uVar;
        this.f5156i = uVar2;
        this.f5157j = uVar3;
        this.f5158k = j3;
        this.f5159l = j8;
        this.f5160m = pVar;
    }

    public static String a(String str, u uVar) {
        uVar.getClass();
        String strA = uVar.f5154f.a(str);
        if (strA == null) {
            return null;
        }
        return strA;
    }

    public final t c() {
        t tVar = new t();
        tVar.f5137a = this.f5149a;
        tVar.f5138b = this.f5150b;
        tVar.f5139c = this.f5152d;
        tVar.f5140d = this.f5151c;
        tVar.f5141e = this.f5153e;
        tVar.f5142f = this.f5154f.c();
        tVar.f5143g = this.f5155g;
        tVar.h = this.h;
        tVar.f5144i = this.f5156i;
        tVar.f5145j = this.f5157j;
        tVar.f5146k = this.f5158k;
        tVar.f5147l = this.f5159l;
        tVar.f5148m = this.f5160m;
        return tVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        w wVar = this.f5155g;
        if (wVar == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        wVar.close();
    }

    public final String toString() {
        return "Response{protocol=" + this.f5150b + ", code=" + this.f5152d + ", message=" + this.f5151c + ", url=" + ((m) this.f5149a.f1409b) + '}';
    }
}
