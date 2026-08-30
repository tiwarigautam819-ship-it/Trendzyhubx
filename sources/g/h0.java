package g;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h0 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f2709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Method f2711c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Context f2712d;

    public h0(View view, String str) {
        this.f2709a = view;
        this.f2710b = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        Method method;
        if (this.f2711c == null) {
            View view2 = this.f2709a;
            Context context = view2.getContext();
            while (true) {
                String str2 = this.f2710b;
                if (context == null) {
                    int id = view2.getId();
                    if (id == -1) {
                        str = "";
                    } else {
                        str = " with id '" + view2.getContext().getResources().getResourceEntryName(id) + "'";
                    }
                    throw new IllegalStateException("Could not find method " + str2 + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + view2.getClass() + str);
                }
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(str2, View.class)) != null) {
                        this.f2711c = method;
                        this.f2712d = context;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
        }
        try {
            this.f2711c.invoke(this.f2712d, view);
        } catch (IllegalAccessException e9) {
            throw new IllegalStateException("Could not execute non-public method for android:onClick", e9);
        } catch (InvocationTargetException e10) {
            throw new IllegalStateException("Could not execute method for android:onClick", e10);
        }
    }
}
