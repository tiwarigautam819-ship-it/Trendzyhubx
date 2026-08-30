package g0;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2817a;

    public /* synthetic */ a(int i6) {
        this.f2817a = i6;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f2817a) {
            case 0:
                byte[] bArr = (byte[]) obj;
                byte[] bArr2 = (byte[]) obj2;
                if (bArr.length != bArr2.length) {
                    return bArr.length - bArr2.length;
                }
                for (int i6 = 0; i6 < bArr.length; i6++) {
                    byte b3 = bArr[i6];
                    byte b7 = bArr2[i6];
                    if (b3 != b7) {
                        return b3 - b7;
                    }
                }
                return 0;
            case 1:
                s2.d dVar = (s2.d) obj;
                s2.d dVar2 = (s2.d) obj2;
                if (v2.a.b(t2.c.class)) {
                    return 0;
                }
                try {
                    d7.g.e("o2", dVar2);
                    dVar.getClass();
                    Long l4 = dVar.f5220g;
                    if (l4 != null) {
                        long jLongValue = l4.longValue();
                        Long l8 = dVar2.f5220g;
                        if (l8 != null) {
                            long jLongValue2 = l8.longValue();
                            if (jLongValue2 >= jLongValue) {
                                if (jLongValue2 == jLongValue) {
                                    return 0;
                                }
                            }
                        }
                        return 1;
                    }
                    return -1;
                } catch (Throwable th) {
                    v2.a.a(th, t2.c.class);
                    return 0;
                }
            case 2:
                s2.d dVar3 = (s2.d) obj;
                s2.d dVar4 = (s2.d) obj2;
                d7.g.e("o2", dVar4);
                dVar3.getClass();
                Long l9 = dVar3.f5220g;
                if (l9 != null) {
                    long jLongValue3 = l9.longValue();
                    Long l10 = dVar4.f5220g;
                    if (l10 != null) {
                        long jLongValue4 = l10.longValue();
                        if (jLongValue4 >= jLongValue3) {
                            if (jLongValue4 == jLongValue3) {
                                return 0;
                            }
                        }
                    }
                    return 1;
                }
                return -1;
            default:
                w2.a aVar = (w2.a) obj;
                w2.a aVar2 = (w2.a) obj2;
                d7.g.e("o2", aVar2);
                aVar.getClass();
                Long l11 = aVar.f5720c;
                if (l11 == null) {
                    return -1;
                }
                long jLongValue5 = l11.longValue();
                Long l12 = aVar2.f5720c;
                if (l12 != null) {
                    long jLongValue6 = l12.longValue();
                    if (jLongValue6 < jLongValue5) {
                        return -1;
                    }
                    if (jLongValue6 == jLongValue5) {
                        return 0;
                    }
                }
                return 1;
        }
    }
}
