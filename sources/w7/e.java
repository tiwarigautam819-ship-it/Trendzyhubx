package w7;

import e8.j;
import r7.u;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class e {
    static {
        j jVar = j.f2451d;
        e5.e.o("\"\\");
        e5.e.o("\t ,=");
    }

    public static final boolean a(u uVar) {
        if (d7.g.a((String) uVar.f5149a.f1411d, "HEAD")) {
            return false;
        }
        int i6 = uVar.f5152d;
        return (((i6 >= 100 && i6 < 200) || i6 == 204 || i6 == 304) && s7.b.j(uVar) == -1 && !"chunked".equalsIgnoreCase(u.a("Transfer-Encoding", uVar))) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void b(r7.b r36, r7.m r37, r7.k r38) {
        /*
            Method dump skipped, instruction units count: 611
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: w7.e.b(r7.b, r7.m, r7.k):void");
    }
}
