package m;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class x2 implements x1.x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f4171a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f4172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f4173c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f4174d;

    @Override // x1.x
    public void a(String str, String str2) {
        d7.g.f("key", str);
        d7.g.f("value", str2);
        h(str, null, null);
        k("%s", str2);
        m();
        q2.z zVar = (q2.z) this.f4174d;
        if (zVar != null) {
            zVar.a("    ".concat(str), str2);
        }
    }

    public r7.g b() {
        return new r7.g(this.f4171a, this.f4172b, (String[]) this.f4173c, (String[]) this.f4174d);
    }

    public void c(String... strArr) {
        d7.g.f("cipherSuites", strArr);
        if (!this.f4171a) {
            throw new IllegalArgumentException("no cipher suites for cleartext connections");
        }
        if (strArr.length == 0) {
            throw new IllegalArgumentException("At least one cipher suite is required");
        }
        this.f4173c = (String[]) strArr.clone();
    }

    public void d(r7.f... fVarArr) {
        d7.g.f("cipherSuites", fVarArr);
        if (!this.f4171a) {
            throw new IllegalArgumentException("no cipher suites for cleartext connections");
        }
        ArrayList arrayList = new ArrayList(fVarArr.length);
        for (r7.f fVar : fVarArr) {
            arrayList.add(fVar.f5047a);
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        c((String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public void e(String... strArr) {
        d7.g.f("tlsVersions", strArr);
        if (!this.f4171a) {
            throw new IllegalArgumentException("no TLS versions for cleartext connections");
        }
        if (strArr.length == 0) {
            throw new IllegalArgumentException("At least one TLS version is required");
        }
        this.f4174d = (String[]) strArr.clone();
    }

    public void f(r7.y... yVarArr) {
        if (!this.f4171a) {
            throw new IllegalArgumentException("no TLS versions for cleartext connections");
        }
        ArrayList arrayList = new ArrayList(yVarArr.length);
        for (r7.y yVar : yVarArr) {
            arrayList.add(yVar.f5172a);
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        e((String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public void g(String str, Object... objArr) throws IOException {
        FilterOutputStream filterOutputStream = (FilterOutputStream) this.f4173c;
        d7.g.f("args", objArr);
        if (this.f4172b) {
            Locale locale = Locale.US;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            String strEncode = URLEncoder.encode(String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length)), "UTF-8");
            d7.g.e("encode(String.format(Loc… format, *args), \"UTF-8\")", strEncode);
            byte[] bytes = strEncode.getBytes(k7.a.f3570a);
            d7.g.e("this as java.lang.String).getBytes(charset)", bytes);
            filterOutputStream.write(bytes);
            return;
        }
        if (this.f4171a) {
            Charset charset = k7.a.f3570a;
            byte[] bytes2 = "--".getBytes(charset);
            d7.g.e("this as java.lang.String).getBytes(charset)", bytes2);
            filterOutputStream.write(bytes2);
            byte[] bytes3 = x1.z.f5942j.getBytes(charset);
            d7.g.e("this as java.lang.String).getBytes(charset)", bytes3);
            filterOutputStream.write(bytes3);
            byte[] bytes4 = "\r\n".getBytes(charset);
            d7.g.e("this as java.lang.String).getBytes(charset)", bytes4);
            filterOutputStream.write(bytes4);
            this.f4171a = false;
        }
        Object[] objArrCopyOf2 = Arrays.copyOf(objArr, objArr.length);
        byte[] bytes5 = String.format(str, Arrays.copyOf(objArrCopyOf2, objArrCopyOf2.length)).getBytes(k7.a.f3570a);
        d7.g.e("this as java.lang.String).getBytes(charset)", bytes5);
        filterOutputStream.write(bytes5);
    }

    public void h(String str, String str2, String str3) throws IOException {
        if (this.f4172b) {
            FilterOutputStream filterOutputStream = (FilterOutputStream) this.f4173c;
            byte[] bytes = String.format("%s=", Arrays.copyOf(new Object[]{str}, 1)).getBytes(k7.a.f3570a);
            d7.g.e("this as java.lang.String).getBytes(charset)", bytes);
            filterOutputStream.write(bytes);
            return;
        }
        g("Content-Disposition: form-data; name=\"%s\"", str);
        if (str2 != null) {
            g("; filename=\"%s\"", str2);
        }
        k("", new Object[0]);
        if (str3 != null) {
            k("%s: %s", "Content-Type", str3);
        }
        k("", new Object[0]);
    }

    public void i(String str, Uri uri, String str2) throws Throwable {
        FilterOutputStream filterOutputStream = (FilterOutputStream) this.f4173c;
        d7.g.f("key", str);
        d7.g.f("contentUri", uri);
        if (str2 == null) {
            str2 = "content/unknown";
        }
        h(str, str, str2);
        int iJ = q2.g0.j(x1.r.a().getContentResolver().openInputStream(uri), filterOutputStream);
        k("", new Object[0]);
        m();
        ((q2.z) this.f4174d).a("    ".concat(str), String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(iJ)}, 1)));
    }

    public void j(String str, ParcelFileDescriptor parcelFileDescriptor, String str2) throws Throwable {
        FilterOutputStream filterOutputStream = (FilterOutputStream) this.f4173c;
        d7.g.f("key", str);
        d7.g.f("descriptor", parcelFileDescriptor);
        if (str2 == null) {
            str2 = "content/unknown";
        }
        h(str, str, str2);
        int iJ = q2.g0.j(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), filterOutputStream);
        k("", new Object[0]);
        m();
        ((q2.z) this.f4174d).a("    ".concat(str), String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(iJ)}, 1)));
    }

    public void k(String str, Object... objArr) throws IOException {
        g(str, Arrays.copyOf(objArr, objArr.length));
        if (this.f4172b) {
            return;
        }
        g("\r\n", new Object[0]);
    }

    public void l(String str, Object obj, x1.z zVar) {
        q2.z zVar2 = (q2.z) this.f4174d;
        d7.g.f("key", str);
        FilterOutputStream filterOutputStream = (FilterOutputStream) this.f4173c;
        String str2 = x1.z.f5942j;
        if (x1.w.t(obj)) {
            a(str, x1.w.e(obj));
            return;
        }
        if (obj instanceof Bitmap) {
            h(str, str, "image/png");
            ((Bitmap) obj).compress(Bitmap.CompressFormat.PNG, 100, filterOutputStream);
            k("", new Object[0]);
            m();
            zVar2.a("    ".concat(str), "<Image>");
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            h(str, str, "content/unknown");
            filterOutputStream.write(bArr);
            k("", new Object[0]);
            m();
            zVar2.a("    ".concat(str), String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(bArr.length)}, 1)));
            return;
        }
        if (obj instanceof Uri) {
            i(str, (Uri) obj, null);
            return;
        }
        if (obj instanceof ParcelFileDescriptor) {
            j(str, (ParcelFileDescriptor) obj, null);
            return;
        }
        if (!(obj instanceof x1.y)) {
            throw new IllegalArgumentException("value is not a supported type.");
        }
        x1.y yVar = (x1.y) obj;
        Parcelable parcelable = yVar.f5941b;
        String str3 = yVar.f5940a;
        if (parcelable instanceof ParcelFileDescriptor) {
            j(str, (ParcelFileDescriptor) parcelable, str3);
        } else {
            if (!(parcelable instanceof Uri)) {
                throw new IllegalArgumentException("value is not a supported type.");
            }
            i(str, (Uri) parcelable, str3);
        }
    }

    public void m() throws IOException {
        if (!this.f4172b) {
            k("--%s", x1.z.f5942j);
            return;
        }
        FilterOutputStream filterOutputStream = (FilterOutputStream) this.f4173c;
        byte[] bytes = "&".getBytes(k7.a.f3570a);
        d7.g.e("this as java.lang.String).getBytes(charset)", bytes);
        filterOutputStream.write(bytes);
    }
}
