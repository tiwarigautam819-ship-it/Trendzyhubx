package i2;

import android.graphics.Color;
import android.graphics.Paint;
import android.os.Build;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.view.ActionMode;
import android.view.View;
import android.widget.TextView;
import b.j0;
import com.YaarWin.app.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import m.w0;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class t {
    public static void a(Throwable th, Throwable th2) {
        d7.g.f("<this>", th);
        d7.g.f("exception", th2);
        if (th != th2) {
            Integer num = y6.a.f6267a;
            if (num == null || num.intValue() >= 19) {
                th.addSuppressed(th2);
                return;
            }
            Method method = x6.a.f6026a;
            if (method != null) {
                method.invoke(th, th2);
            }
        }
    }

    public static final boolean b(int i6, int i9, int i10, byte[] bArr, byte[] bArr2) {
        d7.g.f("a", bArr);
        d7.g.f("b", bArr2);
        for (int i11 = 0; i11 < i10; i11++) {
            if (bArr[i11 + i6] != bArr2[i11 + i9]) {
                return false;
            }
        }
        return true;
    }

    public static final void c(long j3, long j8, long j9) {
        if ((j8 | j9) < 0 || j8 > j3 || j3 - j8 < j9) {
            throw new ArrayIndexOutOfBoundsException("size=" + j3 + " offset=" + j8 + " byteCount=" + j9);
        }
    }

    public static final Class d(String str) {
        if (v2.a.b(t.class)) {
            return null;
        }
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (Throwable th) {
            v2.a.a(th, t.class);
            return null;
        }
    }

    public static final Method e(Class cls, String str, Class... clsArr) {
        if (!v2.a.b(t.class)) {
            try {
                d7.g.f("args", clsArr);
                try {
                    return cls.getDeclaredMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
                } catch (NoSuchMethodException unused) {
                }
            } catch (Throwable th) {
                v2.a.a(th, t.class);
                return null;
            }
        }
        return null;
    }

    public static final Method f(Class cls, String str, Class... clsArr) {
        if (!v2.a.b(t.class)) {
            try {
                return cls.getMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
            } catch (NoSuchMethodException unused) {
            } catch (Throwable th) {
                v2.a.a(th, t.class);
            }
        }
        return null;
    }

    public static String g(String str, JSONObject jSONObject) {
        if (jSONObject.has(str)) {
            return jSONObject.getString(str);
        }
        return null;
    }

    public static h0.b h(w0 w0Var) {
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 28) {
            return new h0.b(a0.a.j(w0Var));
        }
        TextPaint textPaint = new TextPaint(w0Var.getPaint());
        TextDirectionHeuristic textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
        int breakStrategy = w0Var.getBreakStrategy();
        int hyphenationFrequency = w0Var.getHyphenationFrequency();
        if (w0Var.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        } else if (i6 < 28 || (w0Var.getInputType() & 15) != 3) {
            boolean z5 = w0Var.getLayoutDirection() == 1;
            switch (w0Var.getTextDirection()) {
                case 2:
                    textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                    break;
                case 3:
                    textDirectionHeuristic = TextDirectionHeuristics.LTR;
                    break;
                case 4:
                    textDirectionHeuristic = TextDirectionHeuristics.RTL;
                    break;
                case 5:
                    textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                    break;
                case 6:
                    break;
                case 7:
                    textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                    break;
                default:
                    if (z5) {
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                    }
                    break;
            }
        } else {
            byte directionality = Character.getDirectionality(a0.a.a(f0.c.b(w0Var.getTextLocale()))[0].codePointAt(0));
            textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
        }
        return new h0.b(textPaint, textDirectionHeuristic, breakStrategy, hyphenationFrequency);
    }

    public static HashSet i(Object... objArr) {
        HashSet hashSet = new HashSet(s6.r.s(objArr.length));
        s6.f.q(objArr, hashSet);
        return hashSet;
    }

    public static final Object j(Class cls, Method method, Object obj, Object... objArr) {
        if (v2.a.b(t.class)) {
            return null;
        }
        try {
            d7.g.f("clazz", cls);
            d7.g.f(FirebaseAnalytics.Param.METHOD, method);
            d7.g.f("args", objArr);
            if (obj != null) {
                obj = cls.cast(obj);
            }
            try {
                return method.invoke(obj, Arrays.copyOf(objArr, objArr.length));
            } catch (IllegalAccessException | InvocationTargetException unused) {
                return null;
            }
        } catch (Throwable th) {
            v2.a.a(th, t.class);
            return null;
        }
    }

    public static int k(String str, String str2) {
        try {
        } catch (Exception e9) {
            e9.printStackTrace();
        }
        if (str == null) {
            return Color.parseColor(str2);
        }
        String strTrim = str.trim();
        if (strTrim.startsWith("rgb(")) {
            String[] strArrSplit = strTrim.substring(4, strTrim.length() - 1).split(",");
            return Color.rgb(Integer.parseInt(strArrSplit[0].trim()), Integer.parseInt(strArrSplit[1].trim()), Integer.parseInt(strArrSplit[2].trim()));
        }
        if (strTrim.startsWith("rgba(")) {
            String[] strArrSplit2 = strTrim.substring(5, strTrim.length() - 1).split(",");
            return Color.argb((int) (Float.parseFloat(strArrSplit2[3].trim()) * 255.0f), Integer.parseInt(strArrSplit2[0].trim()), Integer.parseInt(strArrSplit2[1].trim()), Integer.parseInt(strArrSplit2[2].trim()));
        }
        if (strTrim.matches("^#[0-9a-fA-F]{3}$")) {
            StringBuilder sb = new StringBuilder("#");
            for (int i6 = 1; i6 < 4; i6++) {
                char cCharAt = strTrim.charAt(i6);
                sb.append(cCharAt);
                sb.append(cCharAt);
            }
            return Color.parseColor(sb.toString());
        }
        if (!strTrim.matches("^#[0-9a-fA-F]{4}$")) {
            if (strTrim.matches("^#([0-9a-fA-F]{6}|[0-9a-fA-F]{8})$")) {
                return Color.parseColor(strTrim);
            }
            return Color.parseColor(str2);
        }
        char cCharAt2 = strTrim.charAt(1);
        char cCharAt3 = strTrim.charAt(2);
        char cCharAt4 = strTrim.charAt(3);
        char cCharAt5 = strTrim.charAt(4);
        return Color.parseColor("#" + cCharAt5 + cCharAt5 + cCharAt2 + cCharAt2 + cCharAt3 + cCharAt3 + cCharAt4 + cCharAt4);
    }

    public static final void l(View view, j0 j0Var) {
        d7.g.f("<this>", view);
        view.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, j0Var);
    }

    public static void m(TextView textView, int i6) {
        if (i6 < 0) {
            throw new IllegalArgumentException();
        }
        if (Build.VERSION.SDK_INT >= 28) {
            a0.a.m(textView, i6);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i9 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i6 > Math.abs(i9)) {
            textView.setPadding(textView.getPaddingLeft(), i6 + i9, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static void n(TextView textView, int i6) {
        if (i6 < 0) {
            throw new IllegalArgumentException();
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i9 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i6 > Math.abs(i9)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i6 - i9);
        }
    }

    public static void o(TextView textView, int i6) {
        if (i6 < 0) {
            throw new IllegalArgumentException();
        }
        if (i6 != textView.getPaint().getFontMetricsInt(null)) {
            textView.setLineSpacing(i6 - r0, 1.0f);
        }
    }

    public static Set p(Object... objArr) {
        int length;
        if (objArr.length <= 0 || (length = objArr.length) == 0) {
            return s6.q.f5284a;
        }
        if (length != 1) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(s6.r.s(objArr.length));
            s6.f.q(objArr, linkedHashSet);
            return linkedHashSet;
        }
        Set setSingleton = Collections.singleton(objArr[0]);
        d7.g.e("singleton(...)", setSingleton);
        return setSingleton;
    }

    public static String q(Exception exc) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        exc.printStackTrace(printWriter);
        printWriter.flush();
        String string = stringWriter.toString();
        d7.g.e("toString(...)", string);
        return string;
    }

    public static ActionMode.Callback r(ActionMode.Callback callback) {
        return (!(callback instanceof m0.i) || Build.VERSION.SDK_INT < 26) ? callback : ((m0.i) callback).f4204a;
    }

    public static ActionMode.Callback s(ActionMode.Callback callback, TextView textView) {
        int i6 = Build.VERSION.SDK_INT;
        return (i6 < 26 || i6 > 27 || (callback instanceof m0.i) || callback == null) ? callback : new m0.i(callback, textView);
    }
}
