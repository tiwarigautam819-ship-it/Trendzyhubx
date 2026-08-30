package r7;

import com.getcapacitor.Bridge;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f5072a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f5075d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f5077f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ArrayList f5078g;
    public String h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f5073b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f5074c = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5076e = -1;

    public l() {
        ArrayList arrayList = new ArrayList();
        this.f5077f = arrayList;
        arrayList.add("");
    }

    public final m a() {
        ArrayList arrayList;
        String str = this.f5072a;
        if (str == null) {
            throw new IllegalStateException("scheme == null");
        }
        String strE = b.e(this.f5073b, 0, 0, 7);
        String strE2 = b.e(this.f5074c, 0, 0, 7);
        String str2 = this.f5075d;
        if (str2 == null) {
            throw new IllegalStateException("host == null");
        }
        int iB = b();
        ArrayList arrayList2 = this.f5077f;
        ArrayList arrayList3 = new ArrayList(s6.i.n(arrayList2));
        int size = arrayList2.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList2.get(i6);
            i6++;
            arrayList3.add(b.e((String) obj, 0, 0, 7));
        }
        ArrayList arrayList4 = this.f5078g;
        if (arrayList4 != null) {
            arrayList = new ArrayList(s6.i.n(arrayList4));
            int size2 = arrayList4.size();
            int i9 = 0;
            while (i9 < size2) {
                Object obj2 = arrayList4.get(i9);
                i9++;
                String str3 = (String) obj2;
                arrayList.add(str3 != null ? b.e(str3, 0, 0, 3) : null);
            }
        } else {
            arrayList = null;
        }
        String str4 = this.h;
        return new m(str, strE, strE2, str2, iB, arrayList3, arrayList, str4 != null ? b.e(str4, 0, 0, 7) : null, toString());
    }

    public final int b() {
        int i6 = this.f5076e;
        if (i6 != -1) {
            return i6;
        }
        String str = this.f5072a;
        d7.g.c(str);
        if (str.equals(Bridge.CAPACITOR_HTTP_SCHEME)) {
            return 80;
        }
        return str.equals(Bridge.CAPACITOR_HTTPS_SCHEME) ? 443 : -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(r7.m r18, java.lang.String r19) {
        /*
            Method dump skipped, instruction units count: 927
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: r7.l.c(r7.m, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String toString() {
        /*
            Method dump skipped, instruction units count: 280
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: r7.l.toString():java.lang.String");
    }
}
