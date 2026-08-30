package androidx.lifecycle;

import android.app.Application;
import androidx.fragment.app.b1;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q0 extends b1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static q0 f733d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final e5.e f734e = new e5.e(5);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Application f735c;

    public q0(Application application) {
        super(2);
        this.f735c = application;
    }

    @Override // androidx.fragment.app.b1, androidx.lifecycle.r0
    public final p0 a(Class cls) {
        Application application = this.f735c;
        if (application != null) {
            return d(cls, application);
        }
        throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
    }

    @Override // androidx.fragment.app.b1, androidx.lifecycle.r0
    public final p0 b(Class cls, v0.c cVar) {
        if (this.f735c != null) {
            return a(cls);
        }
        Application application = (Application) cVar.f5530a.get(f734e);
        if (application != null) {
            return d(cls, application);
        }
        if (a.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
        }
        return super.a(cls);
    }

    public final p0 d(Class cls, Application application) {
        if (!a.class.isAssignableFrom(cls)) {
            return super.a(cls);
        }
        try {
            p0 p0Var = (p0) cls.getConstructor(Application.class).newInstance(application);
            d7.g.e("{\n                try {\n…          }\n            }", p0Var);
            return p0Var;
        } catch (IllegalAccessException e9) {
            throw new RuntimeException("Cannot create an instance of " + cls, e9);
        } catch (InstantiationException e10) {
            throw new RuntimeException("Cannot create an instance of " + cls, e10);
        } catch (NoSuchMethodException e11) {
            throw new RuntimeException("Cannot create an instance of " + cls, e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException("Cannot create an instance of " + cls, e12);
        }
    }
}
