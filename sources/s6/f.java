package s6;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class f extends d4.a {
    public static List h(Object[] objArr) {
        d7.g.f("<this>", objArr);
        List listAsList = Arrays.asList(objArr);
        d7.g.e("asList(...)", listAsList);
        return listAsList;
    }

    public static boolean i(Object[] objArr, Object obj) {
        int i6;
        d7.g.f("<this>", objArr);
        if (obj == null) {
            int length = objArr.length;
            i6 = 0;
            while (i6 < length) {
                if (objArr[i6] == null) {
                    break;
                }
                i6++;
            }
            i6 = -1;
        } else {
            int length2 = objArr.length;
            for (int i9 = 0; i9 < length2; i9++) {
                if (obj.equals(objArr[i9])) {
                    i6 = i9;
                    break;
                }
            }
            i6 = -1;
        }
        return i6 >= 0;
    }

    public static void j(int i6, int i9, int i10, byte[] bArr, byte[] bArr2) {
        d7.g.f("<this>", bArr);
        d7.g.f(FirebaseAnalytics.Param.DESTINATION, bArr2);
        System.arraycopy(bArr, i9, bArr2, i6, i10 - i9);
    }

    public static void k(int i6, int i9, int i10, int[] iArr, int[] iArr2) {
        d7.g.f("<this>", iArr);
        d7.g.f(FirebaseAnalytics.Param.DESTINATION, iArr2);
        System.arraycopy(iArr, i9, iArr2, i6, i10 - i9);
    }

    public static void l(int i6, int i9, int i10, Object[] objArr, Object[] objArr2) {
        d7.g.f("<this>", objArr);
        d7.g.f(FirebaseAnalytics.Param.DESTINATION, objArr2);
        System.arraycopy(objArr, i9, objArr2, i6, i10 - i9);
    }

    public static /* synthetic */ void m(int i6, int i9, int i10, Object[] objArr, Object[] objArr2) {
        if ((i10 & 4) != 0) {
            i6 = 0;
        }
        l(0, i6, i9, objArr, objArr2);
    }

    public static void n(Object[] objArr, int i6, int i9) {
        d7.g.f("<this>", objArr);
        Arrays.fill(objArr, i6, i9, (Object) null);
    }

    public static ArrayList o(Object[] objArr) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static Object p(int i6, Object[] objArr) {
        d7.g.f("<this>", objArr);
        if (i6 < 0 || i6 > objArr.length - 1) {
            return null;
        }
        return objArr[i6];
    }

    public static final void q(Object[] objArr, HashSet hashSet) {
        for (Object obj : objArr) {
            hashSet.add(obj);
        }
    }

    public static List r(Object[] objArr) {
        int length = objArr.length;
        return length != 0 ? length != 1 ? new ArrayList(new d(objArr, false)) : f4.f.b(objArr[0]) : o.f5282a;
    }
}
