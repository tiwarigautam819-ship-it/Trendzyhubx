package x5;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class a implements Closeable, Flushable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Pattern f6016i = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String[] f6017j = new String[128];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String[] f6018k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Writer f6019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f6020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6021c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f6022d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f6023e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f6024f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f6025g;
    public boolean h;

    static {
        for (int i6 = 0; i6 <= 31; i6++) {
            f6017j[i6] = String.format("\\u%04x", Integer.valueOf(i6));
        }
        String[] strArr = f6017j;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f6018k = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public a(Writer writer) {
        int[] iArr = new int[32];
        this.f6020b = iArr;
        this.f6021c = 0;
        if (iArr.length == 0) {
            this.f6020b = Arrays.copyOf(iArr, 0);
        }
        int[] iArr2 = this.f6020b;
        int i6 = this.f6021c;
        this.f6021c = i6 + 1;
        iArr2[i6] = 6;
        this.f6022d = ":";
        this.h = true;
        Objects.requireNonNull(writer, "out == null");
        this.f6019a = writer;
    }

    public void A(long j3) throws IOException {
        E();
        a();
        this.f6019a.write(Long.toString(j3));
    }

    public void B(Number number) throws IOException {
        if (number == null) {
            w();
            return;
        }
        E();
        String string = number.toString();
        if (!string.equals("-Infinity") && !string.equals("Infinity") && !string.equals("NaN")) {
            Class<?> cls = number.getClass();
            if (cls != Integer.class && cls != Long.class && cls != Double.class && cls != Float.class && cls != Byte.class && cls != Short.class && cls != BigDecimal.class && cls != BigInteger.class && cls != AtomicInteger.class && cls != AtomicLong.class && !f6016i.matcher(string).matches()) {
                throw new IllegalArgumentException("String created by " + cls + " is not a valid JSON number: " + string);
            }
        } else if (!this.f6023e) {
            throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(string));
        }
        a();
        this.f6019a.append((CharSequence) string);
    }

    public void C(String str) throws IOException {
        if (str == null) {
            w();
            return;
        }
        E();
        a();
        y(str);
    }

    public void D(boolean z5) throws IOException {
        E();
        a();
        this.f6019a.write(z5 ? "true" : "false");
    }

    public final void E() throws IOException {
        if (this.f6025g != null) {
            int iX = x();
            if (iX == 5) {
                this.f6019a.write(44);
            } else if (iX != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            v();
            this.f6020b[this.f6021c - 1] = 4;
            y(this.f6025g);
            this.f6025g = null;
        }
    }

    public final void a() throws IOException {
        int iX = x();
        if (iX == 1) {
            this.f6020b[this.f6021c - 1] = 2;
            v();
            return;
        }
        Writer writer = this.f6019a;
        if (iX == 2) {
            writer.append(',');
            v();
        } else {
            if (iX == 4) {
                writer.append((CharSequence) this.f6022d);
                this.f6020b[this.f6021c - 1] = 5;
                return;
            }
            if (iX != 6) {
                if (iX != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.f6023e) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            this.f6020b[this.f6021c - 1] = 7;
        }
    }

    public void c() throws IOException {
        E();
        a();
        int i6 = this.f6021c;
        int[] iArr = this.f6020b;
        if (i6 == iArr.length) {
            this.f6020b = Arrays.copyOf(iArr, i6 * 2);
        }
        int[] iArr2 = this.f6020b;
        int i9 = this.f6021c;
        this.f6021c = i9 + 1;
        iArr2[i9] = 1;
        this.f6019a.write(91);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6019a.close();
        int i6 = this.f6021c;
        if (i6 > 1 || (i6 == 1 && this.f6020b[i6 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f6021c = 0;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.f6021c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f6019a.flush();
    }

    public void g() throws IOException {
        E();
        a();
        int i6 = this.f6021c;
        int[] iArr = this.f6020b;
        if (i6 == iArr.length) {
            this.f6020b = Arrays.copyOf(iArr, i6 * 2);
        }
        int[] iArr2 = this.f6020b;
        int i9 = this.f6021c;
        this.f6021c = i9 + 1;
        iArr2[i9] = 3;
        this.f6019a.write(123);
    }

    public final void o(int i6, int i9, char c8) throws IOException {
        int iX = x();
        if (iX != i9 && iX != i6) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f6025g != null) {
            throw new IllegalStateException("Dangling name: " + this.f6025g);
        }
        this.f6021c--;
        if (iX == i9) {
            v();
        }
        this.f6019a.write(c8);
    }

    public void s() throws IOException {
        o(1, 2, ']');
    }

    public void t() throws IOException {
        o(3, 5, '}');
    }

    public void u(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.f6025g != null) {
            throw new IllegalStateException();
        }
        if (this.f6021c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f6025g = str;
    }

    public a w() throws IOException {
        if (this.f6025g != null) {
            if (!this.h) {
                this.f6025g = null;
                return this;
            }
            E();
        }
        a();
        this.f6019a.write("null");
        return this;
    }

    public final int x() {
        int i6 = this.f6021c;
        if (i6 != 0) {
            return this.f6020b[i6 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void y(java.lang.String r9) throws java.io.IOException {
        /*
            r8 = this;
            boolean r0 = r8.f6024f
            if (r0 == 0) goto L7
            java.lang.String[] r0 = x5.a.f6018k
            goto L9
        L7:
            java.lang.String[] r0 = x5.a.f6017j
        L9:
            java.io.Writer r1 = r8.f6019a
            r2 = 34
            r1.write(r2)
            int r3 = r9.length()
            r4 = 0
            r5 = r4
        L16:
            if (r4 >= r3) goto L41
            char r6 = r9.charAt(r4)
            r7 = 128(0x80, float:1.8E-43)
            if (r6 >= r7) goto L25
            r6 = r0[r6]
            if (r6 != 0) goto L32
            goto L3e
        L25:
            r7 = 8232(0x2028, float:1.1535E-41)
            if (r6 != r7) goto L2c
            java.lang.String r6 = "\\u2028"
            goto L32
        L2c:
            r7 = 8233(0x2029, float:1.1537E-41)
            if (r6 != r7) goto L3e
            java.lang.String r6 = "\\u2029"
        L32:
            if (r5 >= r4) goto L39
            int r7 = r4 - r5
            r1.write(r9, r5, r7)
        L39:
            r1.write(r6)
            int r5 = r4 + 1
        L3e:
            int r4 = r4 + 1
            goto L16
        L41:
            if (r5 >= r3) goto L47
            int r3 = r3 - r5
            r1.write(r9, r5, r3)
        L47:
            r1.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: x5.a.y(java.lang.String):void");
    }

    public void z(double d6) throws IOException {
        E();
        if (this.f6023e || !(Double.isNaN(d6) || Double.isInfinite(d6))) {
            a();
            this.f6019a.append((CharSequence) Double.toString(d6));
        } else {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d6);
        }
    }

    public final void v() {
    }
}
