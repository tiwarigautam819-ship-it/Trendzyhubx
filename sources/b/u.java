package b;

import android.view.inputmethod.InputMethodManager;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class u extends d7.h implements c7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final u f827b = new u(0);

    @Override // c7.a
    public final Object b() {
        try {
            Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
            declaredField.setAccessible(true);
            Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
            declaredField2.setAccessible(true);
            Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
            declaredField3.setAccessible(true);
            return new w(declaredField3, declaredField, declaredField2);
        } catch (NoSuchFieldException unused) {
            return v.f828a;
        }
    }
}
