package l2;

import android.text.TextUtils;
import d7.g;
import java.io.File;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f3780a = new f();

    public static final int a(int[] iArr) {
        int i6;
        if (iArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        int i9 = iArr[0];
        h7.c cVar = new h7.c(1, iArr.length - 1, 1);
        int i10 = cVar.f3018b;
        int i11 = cVar.f3019c;
        boolean z5 = i11 <= 0 ? 1 >= i10 : 1 <= i10;
        int i12 = z5 ? 1 : i10;
        while (z5) {
            if (i12 != i10) {
                i6 = i12 + i11;
            } else {
                if (!z5) {
                    throw new NoSuchElementException();
                }
                z5 = false;
                i6 = i12;
            }
            i9 *= iArr[i12];
            i12 = i6;
        }
        return i9;
    }

    public static final File b() {
        if (v2.a.b(f.class)) {
            return null;
        }
        try {
            File file = new File(r.a().getFilesDir(), "facebook_ml/");
            if (!file.exists()) {
                if (!file.mkdirs()) {
                    return null;
                }
            }
            return file;
        } catch (Throwable th) {
            v2.a.a(th, f.class);
            return null;
        }
    }

    public String c(String str) {
        List listB;
        if (v2.a.b(this)) {
            return null;
        }
        try {
            g.f("str", str);
            int length = str.length() - 1;
            int i6 = 0;
            boolean z5 = false;
            while (i6 <= length) {
                boolean z8 = g.g(str.charAt(!z5 ? i6 : length), 32) <= 0;
                if (z5) {
                    if (!z8) {
                        break;
                    }
                    length--;
                } else if (z8) {
                    i6++;
                } else {
                    z5 = true;
                }
            }
            String string = str.subSequence(i6, length + 1).toString();
            Pattern patternCompile = Pattern.compile("\\s+");
            g.e("compile(...)", patternCompile);
            g.f("input", string);
            k7.g.H(0);
            Matcher matcher = patternCompile.matcher(string);
            if (matcher.find()) {
                ArrayList arrayList = new ArrayList(10);
                int iEnd = 0;
                do {
                    arrayList.add(string.subSequence(iEnd, matcher.start()).toString());
                    iEnd = matcher.end();
                } while (matcher.find());
                arrayList.add(string.subSequence(iEnd, string.length()).toString());
                listB = arrayList;
            } else {
                listB = f4.f.b(string.toString());
            }
            String strJoin = TextUtils.join(" ", (String[]) listB.toArray(new String[0]));
            g.e("join(\" \", strArray)", strJoin);
            return strJoin;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    public int[] d(String str) {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            g.f("texts", str);
            int[] iArr = new int[128];
            String strC = c(str);
            Charset charsetForName = Charset.forName("UTF-8");
            g.e("forName(\"UTF-8\")", charsetForName);
            byte[] bytes = strC.getBytes(charsetForName);
            g.e("this as java.lang.String).getBytes(charset)", bytes);
            for (int i6 = 0; i6 < 128; i6++) {
                if (i6 < bytes.length) {
                    iArr[i6] = bytes[i6] & 255;
                } else {
                    iArr[i6] = 0;
                }
            }
            return iArr;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }
}
