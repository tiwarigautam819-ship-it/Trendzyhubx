package e4;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.internal.d0;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends j4.a implements a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f2389c;

    public b(Object obj) {
        super("com.google.android.gms.dynamic.IObjectWrapper");
        this.f2389c = obj;
    }

    public static a d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
        return iInterfaceQueryLocalInterface instanceof a ? (a) iInterfaceQueryLocalInterface : new c(iBinder, "com.google.android.gms.dynamic.IObjectWrapper", 1);
    }

    public static Object e(a aVar) {
        if (aVar instanceof b) {
            return ((b) aVar).f2389c;
        }
        IBinder iBinderAsBinder = aVar.asBinder();
        Field[] declaredFields = iBinderAsBinder.getClass().getDeclaredFields();
        Field field = null;
        int i6 = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i6++;
                field = field2;
            }
        }
        if (i6 != 1) {
            throw new IllegalArgumentException(a1.a.i(declaredFields.length, "Unexpected number of IObjectWrapper declared fields: "));
        }
        d0.h(field);
        if (field.isAccessible()) {
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
        field.setAccessible(true);
        try {
            return field.get(iBinderAsBinder);
        } catch (IllegalAccessException e9) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", e9);
        } catch (NullPointerException e10) {
            throw new IllegalArgumentException("Binder object is null.", e10);
        }
    }
}
