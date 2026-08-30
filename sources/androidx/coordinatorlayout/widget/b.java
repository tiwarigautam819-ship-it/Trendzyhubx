package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends ViewGroup.MarginLayoutParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CoordinatorLayout.a f367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f369c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f370d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f371e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f372f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f373g;
    public final int h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f374i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f375j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f376k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f377l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Rect f378m;

    public b() {
        super(-2, -2);
        this.f368b = false;
        this.f369c = 0;
        this.f370d = 0;
        this.f371e = -1;
        this.f372f = -1;
        this.f373g = 0;
        this.h = 0;
        this.f378m = new Rect();
    }

    public b(Context context, AttributeSet attributeSet) {
        CoordinatorLayout.a aVar;
        super(context, attributeSet);
        this.f368b = false;
        this.f369c = 0;
        this.f370d = 0;
        this.f371e = -1;
        this.f372f = -1;
        this.f373g = 0;
        this.h = 0;
        this.f378m = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, v.a.f5528b);
        this.f369c = typedArrayObtainStyledAttributes.getInteger(0, 0);
        this.f372f = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        this.f370d = typedArrayObtainStyledAttributes.getInteger(2, 0);
        this.f371e = typedArrayObtainStyledAttributes.getInteger(6, -1);
        this.f373g = typedArrayObtainStyledAttributes.getInt(5, 0);
        this.h = typedArrayObtainStyledAttributes.getInt(4, 0);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(3);
        this.f368b = zHasValue;
        if (zHasValue) {
            String string = typedArrayObtainStyledAttributes.getString(3);
            String str = CoordinatorLayout.f350y;
            if (TextUtils.isEmpty(string)) {
                aVar = null;
            } else {
                if (string.startsWith(".")) {
                    string = context.getPackageName() + string;
                } else if (string.indexOf(46) < 0) {
                    String str2 = CoordinatorLayout.f350y;
                    if (!TextUtils.isEmpty(str2)) {
                        string = str2 + '.' + string;
                    }
                }
                try {
                    ThreadLocal threadLocal = CoordinatorLayout.A;
                    Map map = (Map) threadLocal.get();
                    if (map == null) {
                        map = new HashMap();
                        threadLocal.set(map);
                    }
                    Constructor<?> constructor = (Constructor) map.get(string);
                    if (constructor == null) {
                        constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.f351z);
                        constructor.setAccessible(true);
                        map.put(string, constructor);
                    }
                    aVar = (CoordinatorLayout.a) constructor.newInstance(context, attributeSet);
                } catch (Exception e9) {
                    throw new RuntimeException(x.k("Could not inflate Behavior subclass ", string), e9);
                }
            }
            this.f367a = aVar;
        }
        typedArrayObtainStyledAttributes.recycle();
        CoordinatorLayout.a aVar2 = this.f367a;
        if (aVar2 != null) {
            aVar2.getClass();
        }
    }

    public b(b bVar) {
        super((ViewGroup.MarginLayoutParams) bVar);
        this.f368b = false;
        this.f369c = 0;
        this.f370d = 0;
        this.f371e = -1;
        this.f372f = -1;
        this.f373g = 0;
        this.h = 0;
        this.f378m = new Rect();
    }

    public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f368b = false;
        this.f369c = 0;
        this.f370d = 0;
        this.f371e = -1;
        this.f372f = -1;
        this.f373g = 0;
        this.h = 0;
        this.f378m = new Rect();
    }

    public b(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f368b = false;
        this.f369c = 0;
        this.f370d = 0;
        this.f371e = -1;
        this.f372f = -1;
        this.f373g = 0;
        this.h = 0;
        this.f378m = new Rect();
    }
}
