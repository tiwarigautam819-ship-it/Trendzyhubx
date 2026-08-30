package f1;

import android.content.Context;
import android.os.Bundle;
import android.os.Trace;
import androidx.fragment.app.a0;
import com.YaarWin.app.R;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import z7.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile a f2526d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Object f2527e = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f2530c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f2529b = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f2528a = new HashMap();

    public a(Context context) {
        this.f2530c = context.getApplicationContext();
    }

    public static a c(Context context) {
        if (f2526d == null) {
            synchronized (f2527e) {
                try {
                    if (f2526d == null) {
                        f2526d = new a(context);
                    }
                } finally {
                }
            }
        }
        return f2526d;
    }

    public final void a(Bundle bundle) {
        HashSet hashSet;
        String string = this.f2530c.getString(R.string.androidx_startup);
        if (bundle != null) {
            try {
                HashSet hashSet2 = new HashSet();
                Iterator<String> it = bundle.keySet().iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    hashSet = this.f2529b;
                    if (!zHasNext) {
                        break;
                    }
                    String next = it.next();
                    if (string.equals(bundle.getString(next, null))) {
                        Class<?> cls = Class.forName(next);
                        if (b.class.isAssignableFrom(cls)) {
                            hashSet.add(cls);
                        }
                    }
                }
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    b((Class) it2.next(), hashSet2);
                }
            } catch (ClassNotFoundException e9) {
                throw new a0(e9);
            }
        }
    }

    public final Object b(Class cls, HashSet hashSet) {
        Object objB;
        HashMap map = this.f2528a;
        if (d.f()) {
            try {
                d.a(cls.getSimpleName());
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }
        if (hashSet.contains(cls)) {
            throw new IllegalStateException("Cannot initialize " + cls.getName() + ". Cycle detected.");
        }
        if (map.containsKey(cls)) {
            objB = map.get(cls);
        } else {
            hashSet.add(cls);
            try {
                b bVar = (b) cls.getDeclaredConstructor(null).newInstance(null);
                List<Class> listA = bVar.a();
                if (!listA.isEmpty()) {
                    for (Class cls2 : listA) {
                        if (!map.containsKey(cls2)) {
                            b(cls2, hashSet);
                        }
                    }
                }
                objB = bVar.b(this.f2530c);
                hashSet.remove(cls);
                map.put(cls, objB);
            } catch (Throwable th2) {
                throw new a0(th2);
            }
        }
        Trace.endSection();
        return objB;
    }
}
