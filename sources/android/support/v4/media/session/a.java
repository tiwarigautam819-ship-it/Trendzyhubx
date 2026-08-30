package android.support.v4.media.session;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import c7.l;
import com.google.firebase.analytics.FirebaseAnalytics;
import d7.g;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Arrays;
import java.util.Iterator;
import k7.o;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import q2.g0;
import q2.l0;
import x1.d0;
import x1.r;
import x1.v;
import x1.w;
import x1.y;
import x1.z;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static void a(StringBuilder sb, Object obj, l lVar) {
        if (lVar != null) {
            sb.append((CharSequence) lVar.g(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            sb.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            sb.append(((Character) obj).charValue());
        } else {
            sb.append((CharSequence) String.valueOf(obj));
        }
    }

    public static final void c(String str) {
        File fileD = d();
        if (fileD == null || str == null) {
            return;
        }
        new File(fileD, str).delete();
    }

    public static final File d() {
        File file = new File(r.a().getCacheDir(), "instrument");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    public static final boolean e(StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        g.e("element.className", className);
        if (o.v(className, "com.facebook", false)) {
            return true;
        }
        String className2 = stackTraceElement.getClassName();
        g.e("element.className", className2);
        return o.v(className2, "com.meta", false);
    }

    public static final boolean f(Thread thread) {
        StackTraceElement[] stackTrace = thread.getStackTrace();
        if (stackTrace != null) {
            for (StackTraceElement stackTraceElement : stackTrace) {
                g.e("element", stackTraceElement);
                if (e(stackTraceElement)) {
                    String className = stackTraceElement.getClassName();
                    g.e("element.className", className);
                    if (!o.v(className, "com.facebook.appevents.codeless", false)) {
                        String className2 = stackTraceElement.getClassName();
                        g.e("element.className", className2);
                        if (!o.v(className2, "com.facebook.appevents.suggestedevents", false)) {
                            return true;
                        }
                    }
                    String methodName = stackTraceElement.getMethodName();
                    g.e("element.methodName", methodName);
                    if (o.v(methodName, "onClick", false)) {
                        continue;
                    } else {
                        String methodName2 = stackTraceElement.getMethodName();
                        g.e("element.methodName", methodName2);
                        if (o.v(methodName2, "onItemClick", false)) {
                            continue;
                        } else {
                            String methodName3 = stackTraceElement.getMethodName();
                            g.e("element.methodName", methodName3);
                            if (!o.v(methodName3, "onTouch", false)) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final z g(x1.a aVar, Uri uri, l0 l0Var) {
        String path = uri.getPath();
        boolean zEqualsIgnoreCase = "file".equalsIgnoreCase(uri.getScheme());
        d0 d0Var = d0.f5828b;
        if (zEqualsIgnoreCase && path != null) {
            y yVar = new y(ParcelFileDescriptor.open(new File(path), 268435456));
            Bundle bundle = new Bundle(1);
            bundle.putParcelable("file", yVar);
            return new z(aVar, "me/staging_resources", bundle, d0Var, l0Var);
        }
        if (!FirebaseAnalytics.Param.CONTENT.equalsIgnoreCase(uri.getScheme())) {
            throw new x1.l("The image Uri must be either a file:// or content:// Uri");
        }
        y yVar2 = new y(uri);
        Bundle bundle2 = new Bundle(1);
        bundle2.putParcelable("file", yVar2);
        return new z(aVar, "me/staging_resources", bundle2, d0Var, l0Var);
    }

    public static final JSONObject h(String str) {
        File fileD = d();
        if (fileD != null) {
            try {
                return new JSONObject(g0.J(new FileInputStream(new File(fileD, str))));
            } catch (Exception unused) {
                c(str);
            }
        }
        return null;
    }

    public static final void j(String str, JSONArray jSONArray, v vVar) {
        if (jSONArray.length() == 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, jSONArray.toString());
            JSONObject jSONObjectO = g0.o();
            if (jSONObjectO != null) {
                Iterator<String> itKeys = jSONObjectO.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObject.put(next, jSONObjectO.get(next));
                }
            }
            String str2 = z.f5942j;
            w.v(null, String.format("%s/instruments", Arrays.copyOf(new Object[]{r.b()}, 1)), jSONObject, vVar).d();
        } catch (JSONException unused) {
        }
    }

    public static void k(Drawable drawable, int i6) {
        drawable.setTint(i6);
    }

    public static final void n(String str, String str2) {
        File fileD = d();
        if (fileD == null || str == null || str2 == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(fileD, str));
            byte[] bytes = str2.getBytes(k7.a.f3570a);
            g.e("this as java.lang.String).getBytes(charset)", bytes);
            fileOutputStream.write(bytes);
            fileOutputStream.close();
        } catch (Exception unused) {
        }
    }

    public boolean b() {
        return false;
    }

    public abstract void l();

    public abstract void m();

    public void i() {
    }
}
