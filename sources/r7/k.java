package r7;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k implements Iterable, e7.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String[] f5071a;

    public k(String[] strArr) {
        this.f5071a = strArr;
    }

    public final String a(String str) {
        d7.g.f("name", str);
        String[] strArr = this.f5071a;
        int length = strArr.length - 2;
        int iM = l2.e.m(length, 0, -2);
        if (iM > length) {
            return null;
        }
        while (!str.equalsIgnoreCase(strArr[length])) {
            if (length == iM) {
                return null;
            }
            length -= 2;
        }
        return strArr[length + 1];
    }

    public final String b(int i6) {
        return this.f5071a[i6 * 2];
    }

    public final j c() {
        j jVar = new j();
        ArrayList arrayList = jVar.f5070a;
        d7.g.f("<this>", arrayList);
        String[] strArr = this.f5071a;
        d7.g.f("elements", strArr);
        arrayList.addAll(s6.f.h(strArr));
        return jVar;
    }

    public final String d(int i6) {
        return this.f5071a[(i6 * 2) + 1];
    }

    public final boolean equals(Object obj) {
        if (obj instanceof k) {
            return Arrays.equals(this.f5071a, ((k) obj).f5071a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f5071a);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        int size = size();
        r6.d[] dVarArr = new r6.d[size];
        for (int i6 = 0; i6 < size; i6++) {
            dVarArr[i6] = new r6.d(b(i6), d(i6));
        }
        return new d7.a(dVarArr);
    }

    public final int size() {
        return this.f5071a.length / 2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i6 = 0; i6 < size; i6++) {
            String strB = b(i6);
            String strD = d(i6);
            sb.append(strB);
            sb.append(": ");
            if (s7.b.p(strB)) {
                strD = "██";
            }
            sb.append(strD);
            sb.append("\n");
        }
        String string = sb.toString();
        d7.g.e("StringBuilder().apply(builderAction).toString()", string);
        return string;
    }
}
