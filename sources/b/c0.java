package b;

import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import com.getcapacitor.PluginMethod;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c0 f780a = new c0();

    public final OnBackInvokedCallback a(c7.a aVar) {
        d7.g.f("onBackInvoked", aVar);
        return new b0(0, aVar);
    }

    public final void b(Object obj, int i6, Object obj2) {
        d7.g.f("dispatcher", obj);
        d7.g.f(PluginMethod.RETURN_CALLBACK, obj2);
        ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(i6, (OnBackInvokedCallback) obj2);
    }

    public final void c(Object obj, Object obj2) {
        d7.g.f("dispatcher", obj);
        d7.g.f(PluginMethod.RETURN_CALLBACK, obj2);
        ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
    }
}
