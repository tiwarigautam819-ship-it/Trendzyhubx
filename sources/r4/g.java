package r4;

import java.util.Arrays;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g extends a implements Set {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f4977c = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient e f4978b;

    public static int e(int i6) {
        int iMax = Math.max(i6, 2);
        if (iMax >= 751619276) {
            if (iMax < 1073741824) {
                return 1073741824;
            }
            throw new IllegalArgumentException("collection too large");
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (((double) iHighestOneBit) * 0.7d < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    public static g f(int i6, Object... objArr) {
        if (i6 == 0) {
            return j.f4985j;
        }
        if (i6 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new k(obj);
        }
        int iE = e(i6);
        Object[] objArr2 = new Object[iE];
        int i9 = iE - 1;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < i6; i12++) {
            Object obj2 = objArr[i12];
            if (obj2 == null) {
                StringBuilder sb = new StringBuilder(20);
                sb.append("at index ");
                sb.append(i12);
                throw new NullPointerException(sb.toString());
            }
            int iHashCode = obj2.hashCode();
            int iF = f4.f.f(iHashCode);
            while (true) {
                int i13 = iF & i9;
                Object obj3 = objArr2[i13];
                if (obj3 == null) {
                    objArr[i11] = obj2;
                    objArr2[i13] = obj2;
                    i10 += iHashCode;
                    i11++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                iF++;
            }
        }
        Arrays.fill(objArr, i11, i6, (Object) null);
        if (i11 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new k(obj4);
        }
        if (e(i11) < iE / 2) {
            return f(i11, objArr);
        }
        int length = objArr.length;
        if (i11 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i11);
        }
        return new j(i10, i9, i11, objArr, objArr2);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof g) && (this instanceof j) && (((g) obj) instanceof j) && hashCode() != obj.hashCode()) {
            return false;
        }
        if (this != obj) {
            if (obj instanceof Set) {
                Set set = (Set) obj;
                try {
                    if (size() == set.size()) {
                        if (containsAll(set)) {
                        }
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public abstract int hashCode();

    @Override // r4.a
    public Object writeReplace() {
        return new f(toArray(a.f4967a));
    }
}
