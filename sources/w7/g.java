package w7;

import e8.i;
import e8.q;
import java.util.regex.Pattern;
import r7.p;
import r7.w;
import y1.j;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f5778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final q f5779c;

    public g(String str, long j3, q qVar) {
        this.f5777a = str;
        this.f5778b = j3;
        this.f5779c = qVar;
    }

    @Override // r7.w
    public final long a() {
        return this.f5778b;
    }

    @Override // r7.w
    public final p c() {
        String str = this.f5777a;
        if (str == null) {
            return null;
        }
        Pattern pattern = p.f5088e;
        return j.i(str);
    }

    @Override // r7.w
    public final i g() {
        return this.f5779c;
    }
}
