package h5;

import android.util.Log;
import com.google.firebase.components.ComponentRegistrar;
import java.lang.reflect.InvocationTargetException;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements g5.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2982b;

    public /* synthetic */ b(int i6, Object obj) {
        this.f2981a = i6;
        this.f2982b = obj;
    }

    @Override // g5.a
    public final Object get() {
        switch (this.f2981a) {
            case 0:
                return new i5.c((t4.g) this.f2982b);
            case 1:
                String str = (String) this.f2982b;
                try {
                    Class<?> cls = Class.forName(str);
                    if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                        return (ComponentRegistrar) cls.getDeclaredConstructor(null).newInstance(null);
                    }
                    throw new v4.k("Class " + str + " is not an instance of com.google.firebase.components.ComponentRegistrar");
                } catch (ClassNotFoundException unused) {
                    Log.w("ComponentDiscovery", "Class " + str + " is not an found.");
                    return null;
                } catch (IllegalAccessException e9) {
                    throw new v4.k(x.g("Could not instantiate ", str, "."), e9);
                } catch (InstantiationException e10) {
                    throw new v4.k(x.g("Could not instantiate ", str, "."), e10);
                } catch (NoSuchMethodException e11) {
                    throw new v4.k(x.k("Could not instantiate ", str), e11);
                } catch (InvocationTargetException e12) {
                    throw new v4.k(x.k("Could not instantiate ", str), e12);
                }
            default:
                return (ComponentRegistrar) this.f2982b;
        }
    }
}
