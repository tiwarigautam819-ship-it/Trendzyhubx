package s7;

import com.getcapacitor.Bridge;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import e8.i;
import e8.j;
import e8.o;
import e8.w;
import java.io.Closeable;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import k7.f;
import r7.k;
import r7.m;
import r7.u;
import r7.v;
import s6.h;
import y1.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f5287a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k f5288b = g.t(new String[0]);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final v f5289c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final o f5290d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final TimeZone f5291e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final f f5292f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f5293g;

    /* JADX WARN: Code restructure failed: missing block: B:79:0x017f, code lost:
    
        continue;
     */
    static {
        /*
            Method dump skipped, instruction units count: 509
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: s7.b.<clinit>():void");
    }

    public static final boolean a(m mVar, m mVar2) {
        d7.g.f("<this>", mVar);
        d7.g.f("other", mVar2);
        return d7.g.a(mVar.f5083d, mVar2.f5083d) && mVar.f5084e == mVar2.f5084e && d7.g.a(mVar.f5080a, mVar2.f5080a);
    }

    public static final int b(long j3, TimeUnit timeUnit) {
        if (j3 < 0) {
            throw new IllegalStateException("timeout".concat(" < 0").toString());
        }
        if (timeUnit == null) {
            throw new IllegalStateException("unit == null");
        }
        long millis = timeUnit.toMillis(j3);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException("timeout".concat(" too large.").toString());
        }
        if (millis != 0 || j3 <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException("timeout".concat(" too small.").toString());
    }

    public static final void c(long j3, long j8, long j9) {
        if ((j8 | j9) < 0 || j8 > j3 || j3 - j8 < j9) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static final void d(Closeable closeable) {
        d7.g.f("<this>", closeable);
        try {
            closeable.close();
        } catch (RuntimeException e9) {
            throw e9;
        } catch (Exception unused) {
        }
    }

    public static final void e(Socket socket) {
        d7.g.f("<this>", socket);
        try {
            socket.close();
        } catch (AssertionError e9) {
            throw e9;
        } catch (RuntimeException e10) {
            if (!d7.g.a(e10.getMessage(), "bio == null")) {
                throw e10;
            }
        } catch (Exception unused) {
        }
    }

    public static final int f(int i6, int i9, String str, String str2) {
        while (i6 < i9) {
            if (k7.g.w(str2, str.charAt(i6))) {
                return i6;
            }
            i6++;
        }
        return i9;
    }

    public static final int g(String str, char c8, int i6, int i9) {
        while (i6 < i9) {
            if (str.charAt(i6) == c8) {
                return i6;
            }
            i6++;
        }
        return i9;
    }

    public static final String h(String str, Object... objArr) {
        d7.g.f("format", str);
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        return String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0038, code lost:
    
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final boolean i(java.lang.String[] r7, java.lang.String[] r8, java.util.Comparator r9) {
        /*
            java.lang.String r0 = "<this>"
            d7.g.f(r0, r7)
            int r0 = r7.length
            r1 = 0
            if (r0 != 0) goto La
            goto L3b
        La:
            if (r8 == 0) goto L3b
            int r0 = r8.length
            if (r0 != 0) goto L10
            goto L3b
        L10:
            int r0 = r7.length
            r2 = r1
        L12:
            if (r2 >= r0) goto L3b
            r3 = r7[r2]
            r4 = r1
        L17:
            int r5 = r8.length
            r6 = 1
            if (r4 >= r5) goto L1d
            r5 = r6
            goto L1e
        L1d:
            r5 = r1
        L1e:
            if (r5 == 0) goto L38
            int r5 = r4 + 1
            r4 = r8[r4]     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L2d
            int r4 = r9.compare(r3, r4)
            if (r4 != 0) goto L2b
            return r6
        L2b:
            r4 = r5
            goto L17
        L2d:
            r7 = move-exception
            java.util.NoSuchElementException r8 = new java.util.NoSuchElementException
            java.lang.String r7 = r7.getMessage()
            r8.<init>(r7)
            throw r8
        L38:
            int r2 = r2 + 1
            goto L12
        L3b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: s7.b.i(java.lang.String[], java.lang.String[], java.util.Comparator):boolean");
    }

    public static final long j(u uVar) {
        String strA = uVar.f5154f.a("Content-Length");
        if (strA == null) {
            return -1L;
        }
        try {
            return Long.parseLong(strA);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static final List k(Object... objArr) {
        d7.g.f("elements", objArr);
        Object[] objArr2 = (Object[]) objArr.clone();
        List listUnmodifiableList = Collections.unmodifiableList(h.k(Arrays.copyOf(objArr2, objArr2.length)));
        d7.g.e("unmodifiableList(listOf(*elements.clone()))", listUnmodifiableList);
        return listUnmodifiableList;
    }

    public static final int l(String str) {
        int length = str.length();
        for (int i6 = 0; i6 < length; i6++) {
            char cCharAt = str.charAt(i6);
            if (d7.g.g(cCharAt, 31) <= 0 || d7.g.g(cCharAt, ModuleDescriptor.MODULE_VERSION) >= 0) {
                return i6;
            }
        }
        return -1;
    }

    public static final int m(int i6, String str, int i9) {
        while (i6 < i9) {
            char cCharAt = str.charAt(i6);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i6;
            }
            i6++;
        }
        return i9;
    }

    public static final int n(int i6, String str, int i9) {
        int i10 = i9 - 1;
        if (i6 <= i10) {
            while (true) {
                char cCharAt = str.charAt(i10);
                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                    return i10 + 1;
                }
                if (i10 == i6) {
                    break;
                }
                i10--;
            }
        }
        return i6;
    }

    public static final String[] o(String[] strArr, String[] strArr2, Comparator comparator) {
        d7.g.f("other", strArr2);
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i6 = 0;
            while (true) {
                if (i6 >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i6]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i6++;
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static final boolean p(String str) {
        d7.g.f("name", str);
        return str.equalsIgnoreCase("Authorization") || str.equalsIgnoreCase("Cookie") || str.equalsIgnoreCase("Proxy-Authorization") || str.equalsIgnoreCase("Set-Cookie");
    }

    public static final int q(char c8) {
        if ('0' <= c8 && c8 < ':') {
            return c8 - '0';
        }
        if ('a' <= c8 && c8 < 'g') {
            return c8 - 'W';
        }
        if ('A' > c8 || c8 >= 'G') {
            return -1;
        }
        return c8 - '7';
    }

    public static final Charset r(i iVar, Charset charset) {
        d7.g.f("<this>", iVar);
        d7.g.f("default", charset);
        int iK = iVar.k(f5290d);
        if (iK == -1) {
            return charset;
        }
        if (iK == 0) {
            Charset charset2 = StandardCharsets.UTF_8;
            d7.g.e("UTF_8", charset2);
            return charset2;
        }
        if (iK == 1) {
            Charset charset3 = StandardCharsets.UTF_16BE;
            d7.g.e("UTF_16BE", charset3);
            return charset3;
        }
        if (iK == 2) {
            Charset charset4 = StandardCharsets.UTF_16LE;
            d7.g.e("UTF_16LE", charset4);
            return charset4;
        }
        if (iK == 3) {
            Charset charset5 = k7.a.f3570a;
            Charset charset6 = k7.a.f3572c;
            if (charset6 != null) {
                return charset6;
            }
            Charset charsetForName = Charset.forName("UTF-32BE");
            d7.g.e("forName(...)", charsetForName);
            k7.a.f3572c = charsetForName;
            return charsetForName;
        }
        if (iK != 4) {
            throw new AssertionError();
        }
        Charset charset7 = k7.a.f3570a;
        Charset charset8 = k7.a.f3571b;
        if (charset8 != null) {
            return charset8;
        }
        Charset charsetForName2 = Charset.forName("UTF-32LE");
        d7.g.e("forName(...)", charsetForName2);
        k7.a.f3571b = charsetForName2;
        return charsetForName2;
    }

    public static final int s(i iVar) {
        d7.g.f("<this>", iVar);
        return (iVar.readByte() & 255) | ((iVar.readByte() & 255) << 16) | ((iVar.readByte() & 255) << 8);
    }

    public static final boolean t(w wVar, int i6) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        d7.g.f("timeUnit", timeUnit);
        long jNanoTime = System.nanoTime();
        long jC = wVar.b().e() ? wVar.b().c() - jNanoTime : Long.MAX_VALUE;
        wVar.b().d(Math.min(jC, timeUnit.toNanos(i6)) + jNanoTime);
        try {
            e8.g gVar = new e8.g();
            while (wVar.h(8192L, gVar) != -1) {
                gVar.skip(gVar.f2450b);
            }
            if (jC == Long.MAX_VALUE) {
                wVar.b().a();
                return true;
            }
            wVar.b().d(jNanoTime + jC);
            return true;
        } catch (InterruptedIOException unused) {
            if (jC == Long.MAX_VALUE) {
                wVar.b().a();
                return false;
            }
            wVar.b().d(jNanoTime + jC);
            return false;
        } catch (Throwable th) {
            if (jC == Long.MAX_VALUE) {
                wVar.b().a();
            } else {
                wVar.b().d(jNanoTime + jC);
            }
            throw th;
        }
    }

    public static final k u(List list) {
        ArrayList arrayList = new ArrayList(20);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            y7.b bVar = (y7.b) it.next();
            j jVar = bVar.f6275a;
            j jVar2 = bVar.f6276b;
            String strH = jVar.h();
            String strH2 = jVar2.h();
            arrayList.add(strH);
            arrayList.add(k7.g.P(strH2).toString());
        }
        return new k((String[]) arrayList.toArray(new String[0]));
    }

    public static final String v(m mVar, boolean z5) {
        d7.g.f("<this>", mVar);
        int i6 = mVar.f5084e;
        String str = mVar.f5083d;
        if (k7.g.x(str, ":")) {
            str = "[" + str + ']';
        }
        if (!z5) {
            String str2 = mVar.f5080a;
            d7.g.f("scheme", str2);
            if (i6 == (str2.equals(Bridge.CAPACITOR_HTTP_SCHEME) ? 80 : str2.equals(Bridge.CAPACITOR_HTTPS_SCHEME) ? 443 : -1)) {
                return str;
            }
        }
        return str + ':' + i6;
    }

    public static final List w(List list) {
        d7.g.f("<this>", list);
        List listUnmodifiableList = Collections.unmodifiableList(s6.g.x(list));
        d7.g.e("unmodifiableList(toMutableList())", listUnmodifiableList);
        return listUnmodifiableList;
    }

    public static final int x(int i6, String str) {
        if (str == null) {
            return i6;
        }
        try {
            long j3 = Long.parseLong(str);
            if (j3 > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (j3 < 0) {
                return 0;
            }
            return (int) j3;
        } catch (NumberFormatException unused) {
            return i6;
        }
    }

    public static final String y(int i6, String str, int i9) {
        int iM = m(i6, str, i9);
        String strSubstring = str.substring(iM, n(iM, str, i9));
        d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
        return strSubstring;
    }
}
