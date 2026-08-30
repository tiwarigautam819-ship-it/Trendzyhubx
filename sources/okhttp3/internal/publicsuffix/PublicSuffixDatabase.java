package okhttp3.internal.publicsuffix;

import a1.a;
import e5.e;
import e8.l;
import e8.q;
import e8.y;
import f4.f;
import j7.b;
import j7.d;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;
import k7.g;
import s6.h;
import s6.o;
import z7.n;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class PublicSuffixDatabase {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f4448e = {42};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final List f4449f = f.b("*");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final PublicSuffixDatabase f4450g = new PublicSuffixDatabase();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f4451a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CountDownLatch f4452b = new CountDownLatch(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f4453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f4454d;

    public static List c(String str) {
        Object next;
        int i6 = 0;
        List listK = g.K(str, new char[]{'.'});
        if (!d7.g.a(s6.g.s(listK), "")) {
            return listK;
        }
        List list = listK;
        int size = listK.size() - 1;
        if (size < 0) {
            size = 0;
        }
        if (size < 0) {
            throw new IllegalArgumentException(a.j(size, "Requested element count ", " is less than zero.").toString());
        }
        if (size == 0) {
            return o.f5282a;
        }
        if (list instanceof Collection) {
            if (size >= list.size()) {
                return s6.g.w(list);
            }
            if (size == 1) {
                if (list instanceof List) {
                    next = s6.g.q(list);
                } else {
                    Iterator it = list.iterator();
                    if (!it.hasNext()) {
                        throw new NoSuchElementException("Collection is empty.");
                    }
                    next = it.next();
                }
                return f.b(next);
            }
        }
        ArrayList arrayList = new ArrayList(size);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
            i6++;
            if (i6 == size) {
                break;
            }
        }
        return h.m(arrayList);
    }

    public final String a(String str) {
        String strD;
        String strD2;
        String strD3;
        int size;
        int size2;
        String unicode = IDN.toUnicode(str);
        d7.g.e("unicodeDomain", unicode);
        List listC = c(unicode);
        List listK = o.f5282a;
        if (this.f4451a.get() || !this.f4451a.compareAndSet(false, true)) {
            try {
                this.f4452b.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            boolean z5 = false;
            while (true) {
                try {
                    try {
                        b();
                        break;
                    } catch (InterruptedIOException unused2) {
                        Thread.interrupted();
                        z5 = true;
                    } catch (IOException e9) {
                        n nVar = n.f6440a;
                        n.f6440a.getClass();
                        n.i("Failed to read public suffix list", 5, e9);
                        if (z5) {
                        }
                    }
                } finally {
                    if (z5) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
        if (this.f4453c == null) {
            throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
        }
        int size3 = listC.size();
        byte[][] bArr = new byte[size3][];
        for (int i6 = 0; i6 < size3; i6++) {
            String str2 = (String) listC.get(i6);
            Charset charset = StandardCharsets.UTF_8;
            d7.g.e("UTF_8", charset);
            byte[] bytes = str2.getBytes(charset);
            d7.g.e("this as java.lang.String).getBytes(charset)", bytes);
            bArr[i6] = bytes;
        }
        int i9 = 0;
        while (true) {
            if (i9 >= size3) {
                strD = null;
                break;
            }
            byte[] bArr2 = this.f4453c;
            if (bArr2 == null) {
                d7.g.i("publicSuffixListBytes");
                throw null;
            }
            strD = e.d(bArr2, bArr, i9);
            if (strD != null) {
                break;
            }
            i9++;
        }
        if (size3 > 1) {
            byte[][] bArr3 = (byte[][]) bArr.clone();
            int length = bArr3.length - 1;
            for (int i10 = 0; i10 < length; i10++) {
                bArr3[i10] = f4448e;
                byte[] bArr4 = this.f4453c;
                if (bArr4 == null) {
                    d7.g.i("publicSuffixListBytes");
                    throw null;
                }
                strD2 = e.d(bArr4, bArr3, i10);
                if (strD2 != null) {
                    break;
                }
            }
            strD2 = null;
        } else {
            strD2 = null;
        }
        if (strD2 != null) {
            int i11 = size3 - 1;
            for (int i12 = 0; i12 < i11; i12++) {
                byte[] bArr5 = this.f4454d;
                if (bArr5 == null) {
                    d7.g.i("publicSuffixExceptionListBytes");
                    throw null;
                }
                strD3 = e.d(bArr5, bArr, i12);
                if (strD3 != null) {
                    break;
                }
            }
            strD3 = null;
        } else {
            strD3 = null;
        }
        if (strD3 != null) {
            listK = g.K("!".concat(strD3), new char[]{'.'});
        } else if (strD == null && strD2 == null) {
            listK = f4449f;
        } else {
            List listK2 = strD != null ? g.K(strD, new char[]{'.'}) : listK;
            if (strD2 != null) {
                listK = g.K(strD2, new char[]{'.'});
            }
            if (listK2.size() > listK.size()) {
                listK = listK2;
            }
        }
        if (listC.size() == listK.size() && ((String) listK.get(0)).charAt(0) != '!') {
            return null;
        }
        if (((String) listK.get(0)).charAt(0) == '!') {
            size = listC.size();
            size2 = listK.size();
        } else {
            size = listC.size();
            size2 = listK.size() + 1;
        }
        int i13 = size - size2;
        j7.e dVar = new d(3, c(str));
        if (i13 < 0) {
            throw new IllegalArgumentException(a.j(i13, "Requested element count ", " is less than zero.").toString());
        }
        if (i13 != 0) {
            dVar = new b(dVar, i13);
        }
        return j7.f.z(dVar, ".");
    }

    public final void b() {
        try {
            InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
            if (resourceAsStream != null) {
                Logger logger = e8.n.f2465a;
                q qVar = new q(new l(new e8.d(resourceAsStream, 1, new y())));
                try {
                    long j3 = qVar.readInt();
                    qVar.l(j3);
                    byte[] bArrS = qVar.f2472b.s(j3);
                    long j8 = qVar.readInt();
                    qVar.l(j8);
                    byte[] bArrS2 = qVar.f2472b.s(j8);
                    qVar.close();
                    synchronized (this) {
                        this.f4453c = bArrS;
                        this.f4454d = bArrS2;
                    }
                } finally {
                }
            }
        } finally {
            this.f4452b.countDown();
        }
    }
}
