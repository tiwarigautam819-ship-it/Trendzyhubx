package d1;

import android.content.pm.PackageInfo;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e5.e f2230a = new e5.e(8);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f2231b = {112, 114, 111, 0};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f2232c = {112, 114, 109, 0};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f2233d = {48, 49, 53, 0};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f2234e = {48, 49, 48, 0};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final byte[] f2235f = {48, 48, 57, 0};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final byte[] f2236g = {48, 48, 53, 0};
    public static final byte[] h = {48, 48, 49, 0};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final byte[] f2237i = {48, 48, 49, 0};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final byte[] f2238j = {48, 48, 50, 0};

    public static byte[] a(byte[] bArr) {
        Deflater deflater = new Deflater(1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, deflater);
            try {
                deflaterOutputStream.write(bArr);
                deflaterOutputStream.close();
                deflater.end();
                return byteArrayOutputStream.toByteArray();
            } finally {
            }
        } catch (Throwable th) {
            deflater.end();
            throw th;
        }
    }

    public static byte[] b(b[] bVarArr, byte[] bArr) throws IOException {
        int length = 0;
        for (b bVar : bVarArr) {
            length += ((((bVar.f2228g * 2) + 7) & (-8)) / 8) + (bVar.f2226e * 2) + d(bArr, bVar.f2222a, bVar.f2223b).getBytes(StandardCharsets.UTF_8).length + 16 + bVar.f2227f;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
        if (Arrays.equals(bArr, f2235f)) {
            for (b bVar2 : bVarArr) {
                p(byteArrayOutputStream, bVar2, d(bArr, bVar2.f2222a, bVar2.f2223b));
                r(byteArrayOutputStream, bVar2);
                int[] iArr = bVar2.h;
                int length2 = iArr.length;
                int i6 = 0;
                int i9 = 0;
                while (i6 < length2) {
                    int i10 = iArr[i6];
                    u(byteArrayOutputStream, i10 - i9);
                    i6++;
                    i9 = i10;
                }
                q(byteArrayOutputStream, bVar2);
            }
        } else {
            for (b bVar3 : bVarArr) {
                p(byteArrayOutputStream, bVar3, d(bArr, bVar3.f2222a, bVar3.f2223b));
            }
            for (b bVar4 : bVarArr) {
                r(byteArrayOutputStream, bVar4);
                int[] iArr2 = bVar4.h;
                int length3 = iArr2.length;
                int i11 = 0;
                int i12 = 0;
                while (i11 < length3) {
                    int i13 = iArr2[i11];
                    u(byteArrayOutputStream, i13 - i12);
                    i11++;
                    i12 = i13;
                }
                q(byteArrayOutputStream, bVar4);
            }
        }
        if (byteArrayOutputStream.size() == length) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + length);
    }

    public static boolean c(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return true;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        boolean z5 = true;
        for (File file2 : fileArrListFiles) {
            z5 = c(file2) && z5;
        }
        return z5;
    }

    public static String d(byte[] bArr, String str, String str2) {
        byte[] bArr2 = h;
        boolean zEquals = Arrays.equals(bArr, bArr2);
        byte[] bArr3 = f2236g;
        String str3 = (zEquals || Arrays.equals(bArr, bArr3)) ? ":" : "!";
        if (str.length() <= 0) {
            if ("!".equals(str3)) {
                return str2.replace(":", "!");
            }
            if (":".equals(str3)) {
                return str2.replace("!", ":");
            }
        } else {
            if (str2.equals("classes.dex")) {
                return str;
            }
            if (str2.contains("!") || str2.contains(":")) {
                if ("!".equals(str3)) {
                    return str2.replace(":", "!");
                }
                if (":".equals(str3)) {
                    return str2.replace("!", ":");
                }
            } else if (!str2.endsWith(".apk")) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                return x.h(sb, (Arrays.equals(bArr, bArr2) || Arrays.equals(bArr, bArr3)) ? ":" : "!", str2);
            }
        }
        return str2;
    }

    public static void e(PackageInfo packageInfo, File file) {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(file, "profileinstaller_profileWrittenFor_lastUpdateTime.dat")));
            try {
                dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                dataOutputStream.close();
            } finally {
            }
        } catch (IOException unused) {
        }
    }

    public static byte[] f(InputStream inputStream, int i6) throws IOException {
        byte[] bArr = new byte[i6];
        int i9 = 0;
        while (i9 < i6) {
            int i10 = inputStream.read(bArr, i9, i6 - i9);
            if (i10 < 0) {
                throw new IllegalStateException(a1.a.i(i6, "Not enough bytes to read: "));
            }
            i9 += i10;
        }
        return bArr;
    }

    public static int[] g(ByteArrayInputStream byteArrayInputStream, int i6) {
        int[] iArr = new int[i6];
        int iM = 0;
        for (int i9 = 0; i9 < i6; i9++) {
            iM += (int) m(byteArrayInputStream, 2);
            iArr[i9] = iM;
        }
        return iArr;
    }

    public static byte[] h(FileInputStream fileInputStream, int i6, int i9) {
        Inflater inflater = new Inflater();
        try {
            byte[] bArr = new byte[i9];
            byte[] bArr2 = new byte[2048];
            int i10 = 0;
            int iInflate = 0;
            while (!inflater.finished() && !inflater.needsDictionary() && i10 < i6) {
                int i11 = fileInputStream.read(bArr2);
                if (i11 < 0) {
                    throw new IllegalStateException("Invalid zip data. Stream ended after $totalBytesRead bytes. Expected " + i6 + " bytes");
                }
                inflater.setInput(bArr2, 0, i11);
                try {
                    iInflate += inflater.inflate(bArr, iInflate, i9 - iInflate);
                    i10 += i11;
                } catch (DataFormatException e9) {
                    throw new IllegalStateException(e9.getMessage());
                }
            }
            if (i10 == i6) {
                if (inflater.finished()) {
                    return bArr;
                }
                throw new IllegalStateException("Inflater did not finish");
            }
            throw new IllegalStateException("Didn't read enough bytes during decompression. expected=" + i6 + " actual=" + i10);
        } finally {
            inflater.end();
        }
    }

    public static b[] i(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, b[] bVarArr) throws IOException {
        byte[] bArr3 = f2237i;
        if (!Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(bArr, f2238j)) {
                throw new IllegalStateException("Unsupported meta version");
            }
            int iM = (int) m(fileInputStream, 2);
            byte[] bArrH = h(fileInputStream, (int) m(fileInputStream, 4), (int) m(fileInputStream, 4));
            if (fileInputStream.read() > 0) {
                throw new IllegalStateException("Content found after the end of file");
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrH);
            try {
                b[] bVarArrK = k(byteArrayInputStream, bArr2, iM, bVarArr);
                byteArrayInputStream.close();
                return bVarArrK;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (Arrays.equals(f2233d, bArr2)) {
            throw new IllegalStateException("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
        }
        if (!Arrays.equals(bArr, bArr3)) {
            throw new IllegalStateException("Unsupported meta version");
        }
        int iM2 = (int) m(fileInputStream, 1);
        byte[] bArrH2 = h(fileInputStream, (int) m(fileInputStream, 4), (int) m(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArrH2);
        try {
            b[] bVarArrJ = j(byteArrayInputStream2, iM2, bVarArr);
            byteArrayInputStream2.close();
            return bVarArrJ;
        } catch (Throwable th3) {
            try {
                byteArrayInputStream2.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static b[] j(ByteArrayInputStream byteArrayInputStream, int i6, b[] bVarArr) {
        if (byteArrayInputStream.available() == 0) {
            return new b[0];
        }
        if (i6 != bVarArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        String[] strArr = new String[i6];
        int[] iArr = new int[i6];
        for (int i9 = 0; i9 < i6; i9++) {
            int iM = (int) m(byteArrayInputStream, 2);
            iArr[i9] = (int) m(byteArrayInputStream, 2);
            strArr[i9] = new String(f(byteArrayInputStream, iM), StandardCharsets.UTF_8);
        }
        for (int i10 = 0; i10 < i6; i10++) {
            b bVar = bVarArr[i10];
            if (!bVar.f2223b.equals(strArr[i10])) {
                throw new IllegalStateException("Order of dexfiles in metadata did not match baseline");
            }
            int i11 = iArr[i10];
            bVar.f2226e = i11;
            bVar.h = g(byteArrayInputStream, i11);
        }
        return bVarArr;
    }

    public static b[] k(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i6, b[] bVarArr) throws IOException {
        if (byteArrayInputStream.available() == 0) {
            return new b[0];
        }
        if (i6 != bVarArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        for (int i9 = 0; i9 < i6; i9++) {
            m(byteArrayInputStream, 2);
            String str = new String(f(byteArrayInputStream, (int) m(byteArrayInputStream, 2)), StandardCharsets.UTF_8);
            long jM = m(byteArrayInputStream, 4);
            int iM = (int) m(byteArrayInputStream, 2);
            b bVar = null;
            if (bVarArr.length > 0) {
                int iIndexOf = str.indexOf("!");
                if (iIndexOf < 0) {
                    iIndexOf = str.indexOf(":");
                }
                String strSubstring = iIndexOf > 0 ? str.substring(iIndexOf + 1) : str;
                int i10 = 0;
                while (true) {
                    if (i10 >= bVarArr.length) {
                        break;
                    }
                    if (bVarArr[i10].f2223b.equals(strSubstring)) {
                        bVar = bVarArr[i10];
                        break;
                    }
                    i10++;
                }
            }
            if (bVar == null) {
                throw new IllegalStateException("Missing profile key: ".concat(str));
            }
            bVar.f2225d = jM;
            int[] iArrG = g(byteArrayInputStream, iM);
            if (Arrays.equals(bArr, h)) {
                bVar.f2226e = iM;
                bVar.h = iArrG;
            }
        }
        return bVarArr;
    }

    public static b[] l(FileInputStream fileInputStream, byte[] bArr, String str) throws IOException {
        if (!Arrays.equals(bArr, f2234e)) {
            throw new IllegalStateException("Unsupported version");
        }
        int iM = (int) m(fileInputStream, 1);
        byte[] bArrH = h(fileInputStream, (int) m(fileInputStream, 4), (int) m(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrH);
        try {
            b[] bVarArrN = n(byteArrayInputStream, str, iM);
            byteArrayInputStream.close();
            return bVarArrN;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static long m(InputStream inputStream, int i6) throws IOException {
        byte[] bArrF = f(inputStream, i6);
        long j3 = 0;
        for (int i9 = 0; i9 < i6; i9++) {
            j3 += ((long) (bArrF[i9] & 255)) << (i9 * 8);
        }
        return j3;
    }

    public static b[] n(ByteArrayInputStream byteArrayInputStream, String str, int i6) throws IOException {
        int i9 = 0;
        if (byteArrayInputStream.available() == 0) {
            return new b[0];
        }
        b[] bVarArr = new b[i6];
        for (int i10 = 0; i10 < i6; i10++) {
            int iM = (int) m(byteArrayInputStream, 2);
            int iM2 = (int) m(byteArrayInputStream, 2);
            bVarArr[i10] = new b(str, new String(f(byteArrayInputStream, iM), StandardCharsets.UTF_8), m(byteArrayInputStream, 4), iM2, (int) m(byteArrayInputStream, 4), (int) m(byteArrayInputStream, 4), new int[iM2], new TreeMap());
        }
        int i11 = 0;
        while (i11 < i6) {
            b bVar = bVarArr[i11];
            int iAvailable = byteArrayInputStream.available();
            int i12 = bVar.f2227f;
            int i13 = bVar.f2228g;
            TreeMap treeMap = bVar.f2229i;
            int i14 = iAvailable - i12;
            int iM3 = i9;
            while (byteArrayInputStream.available() > i14) {
                iM3 += (int) m(byteArrayInputStream, 2);
                treeMap.put(Integer.valueOf(iM3), 1);
                int iM4 = (int) m(byteArrayInputStream, 2);
                while (iM4 > 0) {
                    m(byteArrayInputStream, 2);
                    int iM5 = (int) m(byteArrayInputStream, 1);
                    if (iM5 != 6 && iM5 != 7) {
                        while (iM5 > 0) {
                            m(byteArrayInputStream, 1);
                            int i15 = i9;
                            int i16 = i11;
                            for (int iM6 = (int) m(byteArrayInputStream, 1); iM6 > 0; iM6--) {
                                m(byteArrayInputStream, 2);
                            }
                            iM5--;
                            i9 = i15;
                            i11 = i16;
                        }
                    }
                    iM4--;
                    i9 = i9;
                    i11 = i11;
                }
            }
            int i17 = i9;
            int i18 = i11;
            if (byteArrayInputStream.available() != i14) {
                throw new IllegalStateException("Read too much data during profile line parse");
            }
            bVar.h = g(byteArrayInputStream, bVar.f2226e);
            BitSet bitSetValueOf = BitSet.valueOf(f(byteArrayInputStream, (((i13 * 2) + 7) & (-8)) / 8));
            for (int i19 = i17; i19 < i13; i19++) {
                int i20 = bitSetValueOf.get(i19) ? 2 : i17;
                if (bitSetValueOf.get(i19 + i13)) {
                    i20 |= 4;
                }
                if (i20 != 0) {
                    Integer numValueOf = (Integer) treeMap.get(Integer.valueOf(i19));
                    if (numValueOf == null) {
                        numValueOf = Integer.valueOf(i17);
                    }
                    treeMap.put(Integer.valueOf(i19), Integer.valueOf(i20 | numValueOf.intValue()));
                }
            }
            i11 = i18 + 1;
            i9 = i17;
        }
        return bVarArr;
    }

    /* JADX WARN: Finally extract failed */
    public static boolean o(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, b[] bVarArr) throws IOException {
        long j3;
        ArrayList arrayList;
        int length;
        byte[] bArr2 = f2233d;
        int i6 = 0;
        if (!Arrays.equals(bArr, bArr2)) {
            byte[] bArr3 = f2234e;
            if (Arrays.equals(bArr, bArr3)) {
                byte[] bArrB = b(bVarArr, bArr3);
                t(byteArrayOutputStream, bVarArr.length, 1);
                t(byteArrayOutputStream, bArrB.length, 4);
                byte[] bArrA = a(bArrB);
                t(byteArrayOutputStream, bArrA.length, 4);
                byteArrayOutputStream.write(bArrA);
                return true;
            }
            byte[] bArr4 = f2236g;
            if (Arrays.equals(bArr, bArr4)) {
                t(byteArrayOutputStream, bVarArr.length, 1);
                for (b bVar : bVarArr) {
                    int size = bVar.f2229i.size() * 4;
                    String strD = d(bArr4, bVar.f2222a, bVar.f2223b);
                    Charset charset = StandardCharsets.UTF_8;
                    u(byteArrayOutputStream, strD.getBytes(charset).length);
                    u(byteArrayOutputStream, bVar.h.length);
                    t(byteArrayOutputStream, size, 4);
                    t(byteArrayOutputStream, bVar.f2224c, 4);
                    byteArrayOutputStream.write(strD.getBytes(charset));
                    Iterator it = bVar.f2229i.keySet().iterator();
                    while (it.hasNext()) {
                        u(byteArrayOutputStream, ((Integer) it.next()).intValue());
                        u(byteArrayOutputStream, 0);
                    }
                    for (int i9 : bVar.h) {
                        u(byteArrayOutputStream, i9);
                    }
                }
                return true;
            }
            byte[] bArr5 = f2235f;
            if (Arrays.equals(bArr, bArr5)) {
                byte[] bArrB2 = b(bVarArr, bArr5);
                t(byteArrayOutputStream, bVarArr.length, 1);
                t(byteArrayOutputStream, bArrB2.length, 4);
                byte[] bArrA2 = a(bArrB2);
                t(byteArrayOutputStream, bArrA2.length, 4);
                byteArrayOutputStream.write(bArrA2);
                return true;
            }
            byte[] bArr6 = h;
            if (!Arrays.equals(bArr, bArr6)) {
                return false;
            }
            u(byteArrayOutputStream, bVarArr.length);
            for (b bVar2 : bVarArr) {
                String str = bVar2.f2222a;
                TreeMap treeMap = bVar2.f2229i;
                String strD2 = d(bArr6, str, bVar2.f2223b);
                Charset charset2 = StandardCharsets.UTF_8;
                u(byteArrayOutputStream, strD2.getBytes(charset2).length);
                u(byteArrayOutputStream, treeMap.size());
                u(byteArrayOutputStream, bVar2.h.length);
                t(byteArrayOutputStream, bVar2.f2224c, 4);
                byteArrayOutputStream.write(strD2.getBytes(charset2));
                Iterator it2 = treeMap.keySet().iterator();
                while (it2.hasNext()) {
                    u(byteArrayOutputStream, ((Integer) it2.next()).intValue());
                }
                for (int i10 : bVar2.h) {
                    u(byteArrayOutputStream, i10);
                }
            }
            return true;
        }
        ArrayList arrayList2 = new ArrayList(3);
        ArrayList arrayList3 = new ArrayList(3);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            u(byteArrayOutputStream2, bVarArr.length);
            int i11 = 2;
            int i12 = 2;
            for (b bVar3 : bVarArr) {
                t(byteArrayOutputStream2, bVar3.f2224c, 4);
                t(byteArrayOutputStream2, bVar3.f2225d, 4);
                t(byteArrayOutputStream2, bVar3.f2228g, 4);
                String strD3 = d(bArr2, bVar3.f2222a, bVar3.f2223b);
                Charset charset3 = StandardCharsets.UTF_8;
                int length2 = strD3.getBytes(charset3).length;
                u(byteArrayOutputStream2, length2);
                i12 = i12 + 14 + length2;
                byteArrayOutputStream2.write(strD3.getBytes(charset3));
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            if (i12 != byteArray.length) {
                throw new IllegalStateException("Expected size " + i12 + ", does not match actual size " + byteArray.length);
            }
            l lVar = new l(1, byteArray, false);
            byteArrayOutputStream2.close();
            arrayList2.add(lVar);
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i13 = 0;
            int i14 = 0;
            while (i13 < bVarArr.length) {
                try {
                    b bVar4 = bVarArr[i13];
                    u(byteArrayOutputStream3, i13);
                    u(byteArrayOutputStream3, bVar4.f2226e);
                    i14 = i14 + 4 + (bVar4.f2226e * i11);
                    int[] iArr = bVar4.h;
                    int length3 = iArr.length;
                    int i15 = i6;
                    int i16 = i11;
                    int i17 = i15;
                    while (i17 < length3) {
                        int i18 = iArr[i17];
                        u(byteArrayOutputStream3, i18 - i15);
                        i17++;
                        i15 = i18;
                    }
                    i13++;
                    i11 = i16;
                    i6 = 0;
                } catch (Throwable th) {
                }
            }
            byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
            if (i14 != byteArray2.length) {
                throw new IllegalStateException("Expected size " + i14 + ", does not match actual size " + byteArray2.length);
            }
            l lVar2 = new l(3, byteArray2, true);
            byteArrayOutputStream3.close();
            arrayList2.add(lVar2);
            byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i19 = 0;
            int i20 = 0;
            while (i19 < bVarArr.length) {
                try {
                    b bVar5 = bVarArr[i19];
                    Iterator it3 = bVar5.f2229i.entrySet().iterator();
                    int iIntValue = 0;
                    while (it3.hasNext()) {
                        iIntValue |= ((Integer) ((Map.Entry) it3.next()).getValue()).intValue();
                    }
                    ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
                    try {
                        q(byteArrayOutputStream4, bVar5);
                        byte[] byteArray3 = byteArrayOutputStream4.toByteArray();
                        byteArrayOutputStream4.close();
                        byteArrayOutputStream4 = new ByteArrayOutputStream();
                        try {
                            r(byteArrayOutputStream4, bVar5);
                            byte[] byteArray4 = byteArrayOutputStream4.toByteArray();
                            byteArrayOutputStream4.close();
                            u(byteArrayOutputStream3, i19);
                            int length4 = byteArray3.length + 2 + byteArray4.length;
                            int i21 = i20 + 6;
                            ArrayList arrayList4 = arrayList3;
                            t(byteArrayOutputStream3, length4, 4);
                            u(byteArrayOutputStream3, iIntValue);
                            byteArrayOutputStream3.write(byteArray3);
                            byteArrayOutputStream3.write(byteArray4);
                            i20 = i21 + length4;
                            i19++;
                            arrayList3 = arrayList4;
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                    try {
                        byteArrayOutputStream3.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
            }
            ArrayList arrayList5 = arrayList3;
            byte[] byteArray5 = byteArrayOutputStream3.toByteArray();
            if (i20 != byteArray5.length) {
                throw new IllegalStateException("Expected size " + i20 + ", does not match actual size " + byteArray5.length);
            }
            l lVar3 = new l(4, byteArray5, true);
            byteArrayOutputStream3.close();
            arrayList2.add(lVar3);
            long j8 = 4;
            long size2 = j8 + j8 + 4 + ((long) (arrayList2.size() * 16));
            t(byteArrayOutputStream, arrayList2.size(), 4);
            int i22 = 0;
            while (i22 < arrayList2.size()) {
                l lVar4 = (l) arrayList2.get(i22);
                int i23 = lVar4.f2249a;
                byte[] bArr7 = lVar4.f2250b;
                if (i23 == 1) {
                    j3 = 0;
                } else if (i23 == 2) {
                    j3 = 1;
                } else if (i23 == 3) {
                    j3 = 2;
                } else if (i23 == 4) {
                    j3 = 3;
                } else {
                    if (i23 != 5) {
                        throw null;
                    }
                    j3 = 4;
                }
                t(byteArrayOutputStream, j3, 4);
                t(byteArrayOutputStream, size2, 4);
                if (lVar4.f2251c) {
                    long length5 = bArr7.length;
                    byte[] bArrA3 = a(bArr7);
                    arrayList = arrayList5;
                    arrayList.add(bArrA3);
                    t(byteArrayOutputStream, bArrA3.length, 4);
                    t(byteArrayOutputStream, length5, 4);
                    length = bArrA3.length;
                } else {
                    arrayList = arrayList5;
                    arrayList.add(bArr7);
                    t(byteArrayOutputStream, bArr7.length, 4);
                    t(byteArrayOutputStream, 0L, 4);
                    length = bArr7.length;
                }
                size2 += (long) length;
                i22++;
                arrayList5 = arrayList;
            }
            ArrayList arrayList6 = arrayList5;
            for (int i24 = 0; i24 < arrayList6.size(); i24++) {
                byteArrayOutputStream.write((byte[]) arrayList6.get(i24));
            }
            return true;
        } catch (Throwable th3) {
            try {
                byteArrayOutputStream2.close();
                throw th3;
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
                throw th3;
            }
        }
    }

    public static void p(ByteArrayOutputStream byteArrayOutputStream, b bVar, String str) throws IOException {
        Charset charset = StandardCharsets.UTF_8;
        u(byteArrayOutputStream, str.getBytes(charset).length);
        u(byteArrayOutputStream, bVar.f2226e);
        t(byteArrayOutputStream, bVar.f2227f, 4);
        t(byteArrayOutputStream, bVar.f2224c, 4);
        t(byteArrayOutputStream, bVar.f2228g, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    public static void q(ByteArrayOutputStream byteArrayOutputStream, b bVar) throws IOException {
        byte[] bArr = new byte[(((bVar.f2228g * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : bVar.f2229i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            if ((iIntValue2 & 2) != 0) {
                int i6 = iIntValue / 8;
                bArr[i6] = (byte) (bArr[i6] | (1 << (iIntValue % 8)));
            }
            if ((iIntValue2 & 4) != 0) {
                int i9 = iIntValue + bVar.f2228g;
                int i10 = i9 / 8;
                bArr[i10] = (byte) ((1 << (i9 % 8)) | bArr[i10]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void r(ByteArrayOutputStream byteArrayOutputStream, b bVar) throws IOException {
        int i6 = 0;
        for (Map.Entry entry : bVar.f2229i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                u(byteArrayOutputStream, iIntValue - i6);
                u(byteArrayOutputStream, 0);
                i6 = iIntValue;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0292 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x01c3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:261:0x015d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void s(android.content.Context r18, java.util.concurrent.Executor r19, d1.c r20, boolean r21) {
        /*
            Method dump skipped, instruction units count: 690
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: d1.d.s(android.content.Context, java.util.concurrent.Executor, d1.c, boolean):void");
    }

    public static void t(ByteArrayOutputStream byteArrayOutputStream, long j3, int i6) throws IOException {
        byte[] bArr = new byte[i6];
        for (int i9 = 0; i9 < i6; i9++) {
            bArr[i9] = (byte) ((j3 >> (i9 * 8)) & 255);
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void u(ByteArrayOutputStream byteArrayOutputStream, int i6) throws IOException {
        t(byteArrayOutputStream, i6, 2);
    }
}
