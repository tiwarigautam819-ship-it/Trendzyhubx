package m;

import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class i1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Method f3996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Method f3997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Method f3998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f3999d;

    static {
        try {
            Class cls = Integer.TYPE;
            Class cls2 = Float.TYPE;
            Method declaredMethod = AbsListView.class.getDeclaredMethod("positionSelector", cls, View.class, Boolean.TYPE, cls2, cls2);
            f3996a = declaredMethod;
            declaredMethod.setAccessible(true);
            Method declaredMethod2 = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", cls);
            f3997b = declaredMethod2;
            declaredMethod2.setAccessible(true);
            Method declaredMethod3 = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", cls);
            f3998c = declaredMethod3;
            declaredMethod3.setAccessible(true);
            f3999d = true;
        } catch (NoSuchMethodException e9) {
            e9.printStackTrace();
        }
    }
}
