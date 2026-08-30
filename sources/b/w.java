package b;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class w extends t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Field f829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Field f830b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Field f831c;

    public w(Field field, Field field2, Field field3) {
        this.f829a = field;
        this.f830b = field2;
        this.f831c = field3;
    }

    @Override // b.t
    public final boolean a(InputMethodManager inputMethodManager) {
        try {
            this.f831c.set(inputMethodManager, null);
            return true;
        } catch (IllegalAccessException unused) {
            return false;
        }
    }

    @Override // b.t
    public final Object b(InputMethodManager inputMethodManager) {
        try {
            return this.f829a.get(inputMethodManager);
        } catch (IllegalAccessException unused) {
            return null;
        }
    }

    @Override // b.t
    public final View c(InputMethodManager inputMethodManager) {
        try {
            return (View) this.f830b.get(inputMethodManager);
        } catch (ClassCastException | IllegalAccessException unused) {
            return null;
        }
    }
}
