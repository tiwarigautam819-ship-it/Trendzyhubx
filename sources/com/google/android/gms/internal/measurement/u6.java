package com.google.android.gms.internal.measurement;

import com.engagelab.privates.core.api.WakeMessage;
import com.getcapacitor.Bridge;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class u6 implements b7 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f1937i = new int[0];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Unsafe f1938j = f7.e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f1939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f1940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final i5 f1943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f1944f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1945g;
    public final int h;

    public u6(int[] iArr, Object[] objArr, int i6, int i9, i5 i5Var, int[] iArr2, int i10, int i11, a6 a6Var) {
        this.f1939a = iArr;
        this.f1940b = objArr;
        this.f1941c = i6;
        this.f1942d = i9;
        this.f1944f = iArr2;
        this.f1945g = i10;
        this.h = i11;
        this.f1943e = i5Var;
    }

    public static boolean D(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof z5) {
            return ((z5) obj).m();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x03a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.internal.measurement.u6 k(com.google.android.gms.internal.measurement.a7 r34, com.google.android.gms.internal.measurement.a6 r35) {
        /*
            Method dump skipped, instruction units count: 1037
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.u6.k(com.google.android.gms.internal.measurement.a7, com.google.android.gms.internal.measurement.a6):com.google.android.gms.internal.measurement.u6");
    }

    public static Field n(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    public static int v(long j3, Object obj) {
        return ((Integer) f7.j(j3, obj)).intValue();
    }

    public static long z(long j3, Object obj) {
        return ((Long) f7.j(j3, obj)).longValue();
    }

    public final d6 A(int i6) {
        return (d6) this.f1940b[((i6 / 3) << 1) + 1];
    }

    public final b7 B(int i6) {
        int i9 = (i6 / 3) << 1;
        Object[] objArr = this.f1940b;
        b7 b7Var = (b7) objArr[i9];
        if (b7Var != null) {
            return b7Var;
        }
        b7 b7VarA = z6.f2007c.a((Class) objArr[i9 + 1]);
        objArr[i9] = b7VarA;
        return b7VarA;
    }

    public final Object C(int i6) {
        return this.f1940b[(i6 / 3) << 1];
    }

    @Override // com.google.android.gms.internal.measurement.b7
    public final boolean a(Object obj) {
        int i6;
        int i9;
        int i10;
        int i11 = 1048575;
        int i12 = 0;
        int i13 = 0;
        while (i13 < this.f1945g) {
            int i14 = this.f1944f[i13];
            int[] iArr = this.f1939a;
            int i15 = iArr[i14];
            int iU = u(i14);
            int i16 = iArr[i14 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i11) {
                if (i17 != 1048575) {
                    i12 = f1938j.getInt(obj, i17);
                }
                i9 = i14;
                i10 = i12;
                i6 = i17;
            } else {
                int i19 = i12;
                i6 = i11;
                i9 = i14;
                i10 = i19;
            }
            if ((268435456 & iU) == 0 || r(obj, i9, i6, i10, i18)) {
                int i20 = (267386880 & iU) >>> 20;
                if (i20 != 9 && i20 != 17) {
                    if (i20 != 27) {
                        if (i20 == 60 || i20 == 68) {
                            if (!y(obj, i15, i9) || B(i9).a(f7.j(iU & 1048575, obj))) {
                            }
                        } else if (i20 != 49) {
                            if (i20 == 50 && !((q6) f7.j(iU & 1048575, obj)).isEmpty()) {
                                if (C(i9) == null) {
                                    throw new NoSuchMethodError();
                                }
                                throw new ClassCastException();
                            }
                        }
                        i13++;
                        i11 = i6;
                        i12 = i10;
                    }
                    List list = (List) f7.j(iU & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        b7 b7VarB = B(i9);
                        for (int i21 = 0; i21 < list.size(); i21++) {
                            if (b7VarB.a(list.get(i21))) {
                            }
                        }
                    }
                    i13++;
                    i11 = i6;
                    i12 = i10;
                } else if (!r(obj, i9, i6, i10, i18) || B(i9).a(f7.j(iU & 1048575, obj))) {
                    i13++;
                    i11 = i6;
                    i12 = i10;
                }
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00d8 A[PHI: r3
      0x00d8: PHI (r3v32 int) = (r3v10 int), (r3v33 int) binds: [B:83:0x01fd, B:41:0x00d6] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.measurement.b7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int b(com.google.android.gms.internal.measurement.z5 r12) {
        /*
            Method dump skipped, instruction units count: 764
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.u6.b(com.google.android.gms.internal.measurement.z5):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0075  */
    @Override // com.google.android.gms.internal.measurement.b7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(java.lang.Object r10) {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.u6.c(java.lang.Object):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:147:0x0375  */
    @Override // com.google.android.gms.internal.measurement.b7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int d(com.google.android.gms.internal.measurement.z5 r17) {
        /*
            Method dump skipped, instruction units count: 1916
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.u6.d(com.google.android.gms.internal.measurement.z5):int");
    }

    @Override // com.google.android.gms.internal.measurement.b7
    public final void e(Object obj, Object obj2) {
        Object obj3;
        if (!D(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
        obj2.getClass();
        int i6 = 0;
        while (true) {
            int[] iArr = this.f1939a;
            if (i6 >= iArr.length) {
                a5.f(obj, obj2);
                return;
            }
            int iU = u(i6);
            long j3 = iU & 1048575;
            int i9 = iArr[i6];
            switch ((iU & 267386880) >>> 20) {
                case 0:
                    obj3 = obj;
                    if (w(i6, obj2)) {
                        e7 e7Var = f7.f1638c;
                        e7Var.c(obj3, j3, e7Var.a(j3, obj2));
                        s(i6, obj3);
                        continue;
                    }
                    i6 += 3;
                    obj = obj3;
                    break;
                case 1:
                    obj3 = obj;
                    if (w(i6, obj2)) {
                        e7 e7Var2 = f7.f1638c;
                        e7Var2.d(obj3, j3, e7Var2.h(j3, obj2));
                        s(i6, obj3);
                    } else {
                        continue;
                    }
                    i6 += 3;
                    obj = obj3;
                    break;
                case 2:
                    obj3 = obj;
                    if (w(i6, obj2)) {
                        e7 e7Var3 = f7.f1638c;
                        e7Var3.f(obj3, j3, e7Var3.k(j3, obj2));
                        s(i6, obj3);
                    } else {
                        continue;
                    }
                    i6 += 3;
                    obj = obj3;
                    break;
                case 3:
                    obj3 = obj;
                    if (w(i6, obj2)) {
                        e7 e7Var4 = f7.f1638c;
                        e7Var4.f(obj3, j3, e7Var4.k(j3, obj2));
                        s(i6, obj3);
                    } else {
                        continue;
                    }
                    i6 += 3;
                    obj = obj3;
                    break;
                case 4:
                    obj3 = obj;
                    if (w(i6, obj2)) {
                        f7.c(obj3, j3, f7.f1638c.j(j3, obj2));
                        s(i6, obj3);
                    } else {
                        continue;
                    }
                    i6 += 3;
                    obj = obj3;
                    break;
                case 5:
                    obj3 = obj;
                    if (w(i6, obj2)) {
                        e7 e7Var5 = f7.f1638c;
                        e7Var5.f(obj3, j3, e7Var5.k(j3, obj2));
                        s(i6, obj3);
                    } else {
                        continue;
                    }
                    i6 += 3;
                    obj = obj3;
                    break;
                case 6:
                    obj3 = obj;
                    if (w(i6, obj2)) {
                        f7.c(obj3, j3, f7.f1638c.j(j3, obj2));
                        s(i6, obj3);
                    } else {
                        continue;
                    }
                    i6 += 3;
                    obj = obj3;
                    break;
                case 7:
                    obj3 = obj;
                    if (w(i6, obj2)) {
                        e7 e7Var6 = f7.f1638c;
                        e7Var6.g(obj3, j3, e7Var6.i(j3, obj2));
                        s(i6, obj3);
                    } else {
                        continue;
                    }
                    i6 += 3;
                    obj = obj3;
                    break;
                case WakeMessage.ACTIVITY /* 8 */:
                    obj3 = obj;
                    if (w(i6, obj2)) {
                        f7.b(j3, obj3, f7.j(j3, obj2));
                        s(i6, obj3);
                    } else {
                        continue;
                    }
                    i6 += 3;
                    obj = obj3;
                    break;
                case 9:
                    obj3 = obj;
                    q(obj3, obj2, i6);
                    continue;
                    i6 += 3;
                    obj = obj3;
                    break;
                case 10:
                    obj3 = obj;
                    if (w(i6, obj2)) {
                        f7.b(j3, obj3, f7.j(j3, obj2));
                        s(i6, obj3);
                    } else {
                        continue;
                    }
                    i6 += 3;
                    obj = obj3;
                    break;
                case 11:
                    obj3 = obj;
                    if (w(i6, obj2)) {
                        f7.c(obj3, j3, f7.f1638c.j(j3, obj2));
                        s(i6, obj3);
                    } else {
                        continue;
                    }
                    i6 += 3;
                    obj = obj3;
                    break;
                case 12:
                    obj3 = obj;
                    if (w(i6, obj2)) {
                        f7.c(obj3, j3, f7.f1638c.j(j3, obj2));
                        s(i6, obj3);
                    } else {
                        continue;
                    }
                    i6 += 3;
                    obj = obj3;
                    break;
                case 13:
                    obj3 = obj;
                    if (w(i6, obj2)) {
                        f7.c(obj3, j3, f7.f1638c.j(j3, obj2));
                        s(i6, obj3);
                    } else {
                        continue;
                    }
                    i6 += 3;
                    obj = obj3;
                    break;
                case 14:
                    obj3 = obj;
                    if (w(i6, obj2)) {
                        e7 e7Var7 = f7.f1638c;
                        e7Var7.f(obj3, j3, e7Var7.k(j3, obj2));
                        s(i6, obj3);
                    } else {
                        continue;
                    }
                    i6 += 3;
                    obj = obj3;
                    break;
                case 15:
                    obj3 = obj;
                    if (w(i6, obj2)) {
                        f7.c(obj3, j3, f7.f1638c.j(j3, obj2));
                        s(i6, obj3);
                    } else {
                        continue;
                    }
                    i6 += 3;
                    obj = obj3;
                    break;
                case 16:
                    if (w(i6, obj2)) {
                        e7 e7Var8 = f7.f1638c;
                        obj3 = obj;
                        e7Var8.f(obj3, j3, e7Var8.k(j3, obj2));
                        s(i6, obj3);
                    }
                    i6 += 3;
                    obj = obj3;
                    break;
                case 17:
                    q(obj, obj2, i6);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    j6 j6VarZza = (j6) f7.j(j3, obj);
                    j6 j6Var = (j6) f7.j(j3, obj2);
                    int size = j6VarZza.size();
                    int size2 = j6Var.size();
                    if (size > 0 && size2 > 0) {
                        if (!((j5) j6VarZza).f1685a) {
                            j6VarZza = j6VarZza.zza(size2 + size);
                        }
                        j6VarZza.addAll(j6Var);
                    }
                    if (size > 0) {
                        j6Var = j6VarZza;
                    }
                    f7.b(j3, obj, j6Var);
                    break;
                case 50:
                    f7.b(j3, obj, w5.i(f7.j(j3, obj), f7.j(j3, obj2)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case Bridge.MINIMUM_ANDROID_WEBVIEW_VERSION /* 55 */:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (y(obj2, i9, i6)) {
                        f7.b(j3, obj, f7.j(j3, obj2));
                        f7.c(obj, iArr[i6 + 2] & 1048575, i9);
                    }
                    break;
                case Bridge.DEFAULT_ANDROID_WEBVIEW_VERSION /* 60 */:
                    t(obj, i6, obj2);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (y(obj2, i9, i6)) {
                        f7.b(j3, obj, f7.j(j3, obj2));
                        f7.c(obj, iArr[i6 + 2] & 1048575, i9);
                    }
                    break;
                case 68:
                    t(obj, i6, obj2);
                    break;
            }
            obj3 = obj;
            i6 += 3;
            obj = obj3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003c  */
    @Override // com.google.android.gms.internal.measurement.b7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean f(com.google.android.gms.internal.measurement.z5 r12, com.google.android.gms.internal.measurement.z5 r13) {
        /*
            Method dump skipped, instruction units count: 644
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.u6.f(com.google.android.gms.internal.measurement.z5, com.google.android.gms.internal.measurement.z5):boolean");
    }

    @Override // com.google.android.gms.internal.measurement.b7
    public final void g(Object obj, byte[] bArr, int i6, int i9, m5 m5Var) {
        j(obj, bArr, i6, i9, 0, m5Var);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0063 A[PHI: r3 r4
      0x0063: PHI (r3v20 int) = 
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v3 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
      (r3v1 int)
     binds: [B:16:0x0060, B:267:0x0775, B:244:0x06cc, B:265:0x0755, B:260:0x0743, B:255:0x0713, B:250:0x06f5, B:241:0x06b9, B:242:0x06bb, B:238:0x0693, B:239:0x0695, B:235:0x0684, B:236:0x0686, B:232:0x0675, B:233:0x0677, B:229:0x0666, B:230:0x0668, B:226:0x0657, B:227:0x0659, B:223:0x0643, B:224:0x0645, B:220:0x062d, B:221:0x062f, B:217:0x061a, B:218:0x061c, B:207:0x0580, B:139:0x03f8, B:141:0x03fe, B:334:0x0063, B:131:0x03bc, B:133:0x03c2, B:333:0x0063, B:122:0x0355, B:121:0x0346, B:120:0x0337, B:119:0x0328, B:118:0x0319, B:117:0x030a, B:116:0x02fb, B:115:0x02ec, B:114:0x02dd, B:113:0x02ce, B:112:0x02bf, B:111:0x02b0, B:110:0x02a1, B:109:0x0292, B:102:0x0279, B:104:0x027f, B:332:0x0063, B:93:0x0257, B:90:0x023b, B:91:0x023d, B:87:0x021f, B:88:0x0221, B:84:0x0210, B:85:0x0212, B:81:0x0201, B:82:0x0203, B:78:0x01f2, B:79:0x01f4, B:75:0x01e3, B:76:0x01e5, B:72:0x01d4, B:73:0x01d6, B:69:0x01ba, B:70:0x01bc, B:46:0x0113, B:67:0x019b, B:62:0x0189, B:57:0x0159, B:52:0x013b, B:43:0x0100, B:44:0x0102, B:40:0x00db, B:41:0x00dd, B:37:0x00cd, B:38:0x00cf, B:34:0x00bf, B:35:0x00c1, B:31:0x00b1, B:32:0x00b3, B:28:0x00a3, B:29:0x00a5, B:25:0x0090, B:26:0x0092, B:22:0x007c, B:23:0x007e, B:19:0x006a, B:20:0x006c] A[DONT_GENERATE, DONT_INLINE]
      0x0063: PHI (r4v15 int) = 
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v5 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
      (r4v3 int)
     binds: [B:16:0x0060, B:267:0x0775, B:244:0x06cc, B:265:0x0755, B:260:0x0743, B:255:0x0713, B:250:0x06f5, B:241:0x06b9, B:242:0x06bb, B:238:0x0693, B:239:0x0695, B:235:0x0684, B:236:0x0686, B:232:0x0675, B:233:0x0677, B:229:0x0666, B:230:0x0668, B:226:0x0657, B:227:0x0659, B:223:0x0643, B:224:0x0645, B:220:0x062d, B:221:0x062f, B:217:0x061a, B:218:0x061c, B:207:0x0580, B:139:0x03f8, B:141:0x03fe, B:334:0x0063, B:131:0x03bc, B:133:0x03c2, B:333:0x0063, B:122:0x0355, B:121:0x0346, B:120:0x0337, B:119:0x0328, B:118:0x0319, B:117:0x030a, B:116:0x02fb, B:115:0x02ec, B:114:0x02dd, B:113:0x02ce, B:112:0x02bf, B:111:0x02b0, B:110:0x02a1, B:109:0x0292, B:102:0x0279, B:104:0x027f, B:332:0x0063, B:93:0x0257, B:90:0x023b, B:91:0x023d, B:87:0x021f, B:88:0x0221, B:84:0x0210, B:85:0x0212, B:81:0x0201, B:82:0x0203, B:78:0x01f2, B:79:0x01f4, B:75:0x01e3, B:76:0x01e5, B:72:0x01d4, B:73:0x01d6, B:69:0x01ba, B:70:0x01bc, B:46:0x0113, B:67:0x019b, B:62:0x0189, B:57:0x0159, B:52:0x013b, B:43:0x0100, B:44:0x0102, B:40:0x00db, B:41:0x00dd, B:37:0x00cd, B:38:0x00cf, B:34:0x00bf, B:35:0x00c1, B:31:0x00b1, B:32:0x00b3, B:28:0x00a3, B:29:0x00a5, B:25:0x0090, B:26:0x0092, B:22:0x007c, B:23:0x007e, B:19:0x006a, B:20:0x006c] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.measurement.b7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void h(java.lang.Object r28, com.google.android.gms.internal.measurement.o6 r29) throws com.google.android.gms.internal.measurement.r5 {
        /*
            Method dump skipped, instruction units count: 2212
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.u6.h(java.lang.Object, com.google.android.gms.internal.measurement.o6):void");
    }

    public final int i(int i6, int i9) {
        int[] iArr = this.f1939a;
        int length = (iArr.length / 3) - 1;
        while (i9 <= length) {
            int i10 = (length + i9) >>> 1;
            int i11 = i10 * 3;
            int i12 = iArr[i11];
            if (i6 == i12) {
                return i11;
            }
            if (i6 < i12) {
                length = i10 - 1;
            } else {
                i9 = i10 + 1;
            }
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:116:0x02b8, code lost:
    
        throw com.google.android.gms.internal.measurement.i6.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0309, code lost:
    
        throw com.google.android.gms.internal.measurement.i6.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x036b, code lost:
    
        throw com.google.android.gms.internal.measurement.i6.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x03c5, code lost:
    
        r14 = r20 | r27;
        r5 = r3;
        r3 = r1;
        r1 = r4;
        r4 = r5;
        r15 = r36;
        r5 = r37;
        r6 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f7, code lost:
    
        r5 = r37;
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00fa, code lost:
    
        r3 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00fb, code lost:
    
        r9 = r12;
        r8 = r13;
        r7 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01b0, code lost:
    
        r5 = r37;
        r6 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x020b, code lost:
    
        r2 = r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:639:0x0ed8  */
    /* JADX WARN: Removed duplicated region for block: B:729:0x0f19 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:749:0x0bf4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:775:0x0be3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x026b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int j(java.lang.Object r34, byte[] r35, int r36, int r37, int r38, com.google.android.gms.internal.measurement.m5 r39) {
        /*
            Method dump skipped, instruction units count: 4152
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.u6.j(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.m5):int");
    }

    public final Object l(int i6, Object obj) {
        b7 b7VarB = B(i6);
        long jU = u(i6) & 1048575;
        if (!w(i6, obj)) {
            return b7VarB.zza();
        }
        Object object = f1938j.getObject(obj, jU);
        if (D(object)) {
            return object;
        }
        z5 z5VarZza = b7VarB.zza();
        if (object != null) {
            b7VarB.e(z5VarZza, object);
        }
        return z5VarZza;
    }

    public final Object m(Object obj, int i6, int i9) {
        b7 b7VarB = B(i9);
        if (!y(obj, i6, i9)) {
            return b7VarB.zza();
        }
        Object object = f1938j.getObject(obj, u(i9) & 1048575);
        if (D(object)) {
            return object;
        }
        z5 z5VarZza = b7VarB.zza();
        if (object != null) {
            b7VarB.e(z5VarZza, object);
        }
        return z5VarZza;
    }

    public final void o(int i6, int i9, Object obj, Object obj2) {
        f1938j.putObject(obj, u(i9) & 1048575, obj2);
        f7.c(obj, this.f1939a[i9 + 2] & 1048575, i6);
    }

    public final void p(Object obj, int i6, Object obj2) {
        f1938j.putObject(obj, u(i6) & 1048575, obj2);
        s(i6, obj);
    }

    public final void q(Object obj, Object obj2, int i6) {
        if (w(i6, obj2)) {
            long jU = u(i6) & 1048575;
            Unsafe unsafe = f1938j;
            Object object = unsafe.getObject(obj2, jU);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f1939a[i6] + " is present but null: " + String.valueOf(obj2));
            }
            b7 b7VarB = B(i6);
            if (!w(i6, obj)) {
                if (D(object)) {
                    z5 z5VarZza = b7VarB.zza();
                    b7VarB.e(z5VarZza, object);
                    unsafe.putObject(obj, jU, z5VarZza);
                } else {
                    unsafe.putObject(obj, jU, object);
                }
                s(i6, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jU);
            if (!D(object2)) {
                z5 z5VarZza2 = b7VarB.zza();
                b7VarB.e(z5VarZza2, object2);
                unsafe.putObject(obj, jU, z5VarZza2);
                object2 = z5VarZza2;
            }
            b7VarB.e(object2, object);
        }
    }

    public final boolean r(Object obj, int i6, int i9, int i10, int i11) {
        return i9 == 1048575 ? w(i6, obj) : (i10 & i11) != 0;
    }

    public final void s(int i6, Object obj) {
        int i9 = this.f1939a[i6 + 2];
        long j3 = 1048575 & i9;
        if (j3 == 1048575) {
            return;
        }
        f7.c(obj, j3, (1 << (i9 >>> 20)) | f7.f1638c.j(j3, obj));
    }

    public final void t(Object obj, int i6, Object obj2) {
        int[] iArr = this.f1939a;
        int i9 = iArr[i6];
        if (y(obj2, i9, i6)) {
            long jU = u(i6) & 1048575;
            Unsafe unsafe = f1938j;
            Object object = unsafe.getObject(obj2, jU);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i6] + " is present but null: " + String.valueOf(obj2));
            }
            b7 b7VarB = B(i6);
            if (!y(obj, i9, i6)) {
                if (D(object)) {
                    z5 z5VarZza = b7VarB.zza();
                    b7VarB.e(z5VarZza, object);
                    unsafe.putObject(obj, jU, z5VarZza);
                } else {
                    unsafe.putObject(obj, jU, object);
                }
                f7.c(obj, iArr[i6 + 2] & 1048575, i9);
                return;
            }
            Object object2 = unsafe.getObject(obj, jU);
            if (!D(object2)) {
                z5 z5VarZza2 = b7VarB.zza();
                b7VarB.e(z5VarZza2, object2);
                unsafe.putObject(obj, jU, z5VarZza2);
                object2 = z5VarZza2;
            }
            b7VarB.e(object2, object);
        }
    }

    public final int u(int i6) {
        return this.f1939a[i6 + 1];
    }

    public final boolean w(int i6, Object obj) {
        int i9 = this.f1939a[i6 + 2];
        long j3 = i9 & 1048575;
        if (j3 == 1048575) {
            int iU = u(i6);
            long j8 = iU & 1048575;
            switch ((iU & 267386880) >>> 20) {
                case 0:
                    if (Double.doubleToRawLongBits(f7.f1638c.a(j8, obj)) == 0) {
                        return false;
                    }
                    break;
                case 1:
                    if (Float.floatToRawIntBits(f7.f1638c.h(j8, obj)) == 0) {
                        return false;
                    }
                    break;
                case 2:
                    if (f7.f1638c.k(j8, obj) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (f7.f1638c.k(j8, obj) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (f7.f1638c.j(j8, obj) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (f7.f1638c.k(j8, obj) == 0) {
                        return false;
                    }
                    break;
                case 6:
                    if (f7.f1638c.j(j8, obj) == 0) {
                        return false;
                    }
                    break;
                case 7:
                    return f7.f1638c.i(j8, obj);
                case WakeMessage.ACTIVITY /* 8 */:
                    Object objJ = f7.j(j8, obj);
                    if (objJ instanceof String) {
                        if (((String) objJ).isEmpty()) {
                            return false;
                        }
                    } else {
                        if (!(objJ instanceof p5)) {
                            throw new IllegalArgumentException();
                        }
                        if (p5.f1805c.equals(objJ)) {
                            return false;
                        }
                    }
                case 9:
                    if (f7.j(j8, obj) == null) {
                        return false;
                    }
                    break;
                case 10:
                    if (p5.f1805c.equals(f7.j(j8, obj))) {
                        return false;
                    }
                    break;
                case 11:
                    if (f7.f1638c.j(j8, obj) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (f7.f1638c.j(j8, obj) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (f7.f1638c.j(j8, obj) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (f7.f1638c.k(j8, obj) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (f7.f1638c.j(j8, obj) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (f7.f1638c.k(j8, obj) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (f7.j(j8, obj) == null) {
                        return false;
                    }
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        } else if (((1 << (i9 >>> 20)) & f7.f1638c.j(j3, obj)) == 0) {
            return false;
        }
        return true;
    }

    public final boolean x(z5 z5Var, z5 z5Var2, int i6) {
        return w(i6, z5Var) == w(i6, z5Var2);
    }

    public final boolean y(Object obj, int i6, int i9) {
        return f7.f1638c.j((long) (this.f1939a[i9 + 2] & 1048575), obj) == i6;
    }

    @Override // com.google.android.gms.internal.measurement.b7
    public final z5 zza() {
        return (z5) ((z5) this.f1943e).e(4);
    }
}
