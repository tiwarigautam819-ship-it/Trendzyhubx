package m1;

import android.content.Context;
import com.getcapacitor.n;
import com.google.firebase.messaging.j0;
import i2.t;
import j0.p0;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.regex.Pattern;
import r7.r;
import x1.l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j implements p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile r f4234a;

    public static void d(long j3, e8.g gVar, int i6, ArrayList arrayList, int i9, int i10, ArrayList arrayList2) {
        int i11;
        int i12;
        ArrayList arrayList3;
        long j8;
        int i13;
        int i14 = i6;
        ArrayList arrayList4 = arrayList;
        ArrayList arrayList5 = arrayList2;
        if (i9 >= i10) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        for (int i15 = i9; i15 < i10; i15++) {
            if (((e8.j) arrayList4.get(i15)).a() < i14) {
                throw new IllegalArgumentException("Failed requirement.");
            }
        }
        e8.j jVar = (e8.j) arrayList.get(i9);
        e8.j jVar2 = (e8.j) arrayList4.get(i10 - 1);
        if (i14 == jVar.a()) {
            int iIntValue = ((Number) arrayList5.get(i9)).intValue();
            int i16 = i9 + 1;
            e8.j jVar3 = (e8.j) arrayList4.get(i16);
            i11 = i16;
            i12 = iIntValue;
            jVar = jVar3;
        } else {
            i11 = i9;
            i12 = -1;
        }
        if (jVar.d(i14) == jVar2.d(i14)) {
            int iMin = Math.min(jVar.a(), jVar2.a());
            int i17 = 0;
            for (int i18 = i14; i18 < iMin && jVar.d(i18) == jVar2.d(i18); i18++) {
                i17++;
            }
            long j9 = 4;
            long j10 = (gVar.f2450b / j9) + j3 + ((long) 2) + ((long) i17) + 1;
            gVar.B(-i17);
            gVar.B(i12);
            int i19 = i14 + i17;
            while (i14 < i19) {
                gVar.B(jVar.d(i14) & 255);
                i14++;
            }
            if (i11 + 1 == i10) {
                if (i19 != ((e8.j) arrayList4.get(i11)).a()) {
                    throw new IllegalStateException("Check failed.");
                }
                gVar.B(((Number) arrayList5.get(i11)).intValue());
                return;
            } else {
                e8.g gVar2 = new e8.g();
                gVar.B(((int) ((gVar2.f2450b / j9) + j10)) * (-1));
                d(j10, gVar2, i19, arrayList4, i11, i10, arrayList5);
                gVar.y(gVar2);
                return;
            }
        }
        int i20 = 1;
        for (int i21 = i11 + 1; i21 < i10; i21++) {
            if (((e8.j) arrayList4.get(i21 - 1)).d(i14) != ((e8.j) arrayList4.get(i21)).d(i14)) {
                i20++;
            }
        }
        long j11 = 4;
        long j12 = (gVar.f2450b / j11) + j3 + ((long) 2) + ((long) (i20 * 2));
        gVar.B(i20);
        gVar.B(i12);
        for (int i22 = i11; i22 < i10; i22++) {
            int iD = ((e8.j) arrayList4.get(i22)).d(i14);
            if (i22 == i11 || iD != ((e8.j) arrayList4.get(i22 - 1)).d(i14)) {
                gVar.B(iD & 255);
            }
        }
        e8.g gVar3 = new e8.g();
        int i23 = i11;
        while (i23 < i10) {
            byte bD = ((e8.j) arrayList4.get(i23)).d(i14);
            int i24 = i23 + 1;
            int i25 = i24;
            while (true) {
                if (i25 >= i10) {
                    i25 = i10;
                    break;
                } else if (bD != ((e8.j) arrayList4.get(i25)).d(i14)) {
                    break;
                } else {
                    i25++;
                }
            }
            if (i24 == i25 && i14 + 1 == ((e8.j) arrayList4.get(i23)).a()) {
                gVar.B(((Number) arrayList5.get(i23)).intValue());
                arrayList3 = arrayList5;
                j8 = j12;
                i13 = i25;
            } else {
                gVar.B(((int) ((gVar3.f2450b / j11) + j12)) * (-1));
                arrayList3 = arrayList5;
                j8 = j12;
                i13 = i25;
                d(j8, gVar3, i14 + 1, arrayList, i23, i13, arrayList3);
                arrayList4 = arrayList;
            }
            j12 = j8;
            i23 = i13;
            arrayList5 = arrayList3;
        }
        gVar.y(gVar3);
    }

    public static v4.b e(String str, String str2) {
        o5.a aVar = new o5.a(str, str2);
        v4.a aVarA = v4.b.a(o5.a.class);
        aVarA.f5585e = 1;
        aVarA.f5586f = new j0(11, aVar);
        return aVarA.b();
    }

    public static v4.b f(String str, n nVar) {
        v4.a aVarA = v4.b.a(o5.a.class);
        aVarA.f5585e = 1;
        aVarA.a(v4.h.a(Context.class));
        aVarA.f5586f = new b2.d(str, nVar, 8);
        return aVarA.b();
    }

    public static final Class i(d7.d dVar) {
        Class clsA = dVar.a();
        d7.g.d("null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>", clsA);
        return clsA;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Class j(i7.b bVar) {
        d7.g.f("<this>", bVar);
        Class clsA = ((d7.c) bVar).a();
        if (clsA.isPrimitive()) {
            String name = clsA.getName();
            switch (name.hashCode()) {
                case -1325958191:
                    if (name.equals("double")) {
                        return Double.class;
                    }
                    break;
                case 104431:
                    if (name.equals("int")) {
                        return Integer.class;
                    }
                    break;
                case 3039496:
                    if (name.equals("byte")) {
                        return Byte.class;
                    }
                    break;
                case 3052374:
                    if (name.equals("char")) {
                        return Character.class;
                    }
                    break;
                case 3327612:
                    if (name.equals("long")) {
                        return Long.class;
                    }
                    break;
                case 3625364:
                    if (name.equals("void")) {
                        return Void.class;
                    }
                    break;
                case 64711720:
                    if (name.equals("boolean")) {
                        return Boolean.class;
                    }
                    break;
                case 97526364:
                    if (name.equals("float")) {
                        return Float.class;
                    }
                    break;
                case 109413500:
                    if (name.equals("short")) {
                        return Short.class;
                    }
                    break;
            }
        }
        return clsA;
    }

    public static String m(X509Certificate x509Certificate) throws NoSuchAlgorithmException {
        StringBuilder sb = new StringBuilder("sha256/");
        e8.j jVar = e8.j.f2451d;
        byte[] encoded = x509Certificate.getPublicKey().getEncoded();
        d7.g.e("publicKey.encoded", encoded);
        int length = encoded.length;
        int i6 = 0;
        t.c(encoded.length, 0, length);
        d4.a.b(length, encoded.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(encoded, 0, length);
        d7.g.e("copyOfRange(...)", bArrCopyOfRange);
        e8.j jVar2 = new e8.j(bArrCopyOfRange);
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(jVar2.f2452a, 0, jVar2.a());
        byte[] bArrDigest = messageDigest.digest();
        d7.g.c(bArrDigest);
        byte[] bArr = new e8.j(bArrDigest).f2452a;
        byte[] bArr2 = e8.a.f2432a;
        d7.g.f("<this>", bArr);
        d7.g.f("map", bArr2);
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length2 = bArr.length - (bArr.length % 3);
        int i9 = 0;
        while (i6 < length2) {
            byte b3 = bArr[i6];
            int i10 = i6 + 2;
            byte b7 = bArr[i6 + 1];
            i6 += 3;
            byte b9 = bArr[i10];
            bArr3[i9] = bArr2[(b3 & 255) >> 2];
            bArr3[i9 + 1] = bArr2[((b3 & 3) << 4) | ((b7 & 255) >> 4)];
            int i11 = i9 + 3;
            bArr3[i9 + 2] = bArr2[((b7 & 15) << 2) | ((b9 & 255) >> 6)];
            i9 += 4;
            bArr3[i11] = bArr2[b9 & 63];
        }
        int length3 = bArr.length - length2;
        if (length3 == 1) {
            byte b10 = bArr[i6];
            bArr3[i9] = bArr2[(b10 & 255) >> 2];
            bArr3[i9 + 1] = bArr2[(b10 & 3) << 4];
            bArr3[i9 + 2] = 61;
            bArr3[i9 + 3] = 61;
        } else if (length3 == 2) {
            int i12 = i6 + 1;
            byte b11 = bArr[i6];
            byte b12 = bArr[i12];
            bArr3[i9] = bArr2[(b11 & 255) >> 2];
            bArr3[i9 + 1] = bArr2[((b11 & 3) << 4) | ((b12 & 255) >> 4)];
            bArr3[i9 + 2] = bArr2[(b12 & 15) << 2];
            bArr3[i9 + 3] = 61;
        }
        sb.append(new String(bArr3, k7.a.f3570a));
        return sb.toString();
    }

    public static void n(String str) {
        boolean zContains;
        d7.g.f("identifier", str);
        if (str.length() == 0 || str.length() > 40) {
            throw new l(String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", Arrays.copyOf(new Object[]{str, 40}, 2)));
        }
        HashSet hashSet = y1.e.f6117f;
        synchronized (hashSet) {
            zContains = hashSet.contains(str);
        }
        if (zContains) {
            return;
        }
        Pattern patternCompile = Pattern.compile("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$");
        d7.g.e("compile(...)", patternCompile);
        if (!patternCompile.matcher(str).matches()) {
            throw new l(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", Arrays.copyOf(new Object[]{str}, 1)));
        }
        synchronized (hashSet) {
            hashSet.add(str);
        }
    }

    public abstract Method g(Class cls, Field field);

    public abstract Constructor h(Class cls);

    public abstract String[] k(Class cls);

    public abstract boolean l(Class cls);

    @Override // j0.p0
    public void b() {
    }

    @Override // j0.p0
    public void c() {
    }
}
