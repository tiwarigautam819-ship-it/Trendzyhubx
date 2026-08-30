package d4;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Build;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import com.google.firebase.analytics.FirebaseAnalytics;
import d7.g;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Context f2274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Boolean f2275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f2276c;

    public static final void b(int i6, int i9) {
        if (i6 <= i9) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i6 + ") is greater than size (" + i9 + ").");
    }

    public static synchronized boolean c(Context context) {
        Boolean bool;
        Context applicationContext = context.getApplicationContext();
        Context context2 = f2274a;
        if (context2 != null && (bool = f2275b) != null && context2 == applicationContext) {
            return bool.booleanValue();
        }
        f2275b = null;
        if (b4.c.b()) {
            f2275b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
        } else {
            try {
                context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                f2275b = Boolean.TRUE;
            } catch (ClassNotFoundException unused) {
                f2275b = Boolean.FALSE;
            }
        }
        f2274a = applicationContext;
        return f2275b.booleanValue();
    }

    public static void d(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = textView.getParent(); parent instanceof View; parent = parent.getParent()) {
        }
    }

    public static String e(Context context) {
        ClipData primaryClip;
        CharSequence charSequenceCoerceToText;
        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService(ClipboardManager.class);
        if (clipboardManager != null && clipboardManager.hasPrimaryClip() && (primaryClip = clipboardManager.getPrimaryClip()) != null && primaryClip.getItemCount() != 0 && (charSequenceCoerceToText = primaryClip.getItemAt(0).coerceToText(context)) != null) {
            String strTrim = charSequenceCoerceToText.toString().trim();
            if (strTrim.startsWith("#arapp#") && !strTrim.equals(f2276c)) {
                try {
                    String str = new String(Base64.decode(strTrim.substring(7), 2), StandardCharsets.UTF_8);
                    f2276c = strTrim;
                    if (Build.VERSION.SDK_INT >= 28) {
                        clipboardManager.clearPrimaryClip();
                    } else {
                        clipboardManager.setPrimaryClip(ClipData.newPlainText("", ""));
                    }
                    Log.d("ClipboardUtil", "consume clipboard json: ".concat(str));
                    return str;
                } catch (Throwable th) {
                    Log.e("ClipboardUtil", "parse clipboard failed", th);
                }
            }
        }
        return null;
    }

    public static final boolean f(String str) {
        g.f(FirebaseAnalytics.Param.METHOD, str);
        return (str.equals("GET") || str.equals("HEAD")) ? false : true;
    }

    public static final String g(BufferedReader bufferedReader) throws IOException {
        StringWriter stringWriter = new StringWriter();
        char[] cArr = new char[8192];
        int i6 = bufferedReader.read(cArr);
        while (i6 >= 0) {
            stringWriter.write(cArr, 0, i6);
            i6 = bufferedReader.read(cArr);
        }
        String string = stringWriter.toString();
        g.e("toString(...)", string);
        return string;
    }

    public abstract List a(String str, List list);
}
