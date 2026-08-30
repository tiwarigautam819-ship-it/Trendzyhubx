package androidx.fragment.app;

import android.util.Log;
import com.capacitorjs.plugins.app.AppPlugin;
import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p0 extends b.y {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f599d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f600e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p0(AppPlugin appPlugin, boolean z5) {
        super(z5);
        this.f600e = appPlugin;
    }

    @Override // b.y
    public void a() {
        switch (this.f599d) {
            case 0:
                y0 y0Var = (y0) this.f600e;
                if (y0.J(3)) {
                    Log.d("FragmentManager", "handleOnBackCancelled. PREDICTIVE_BACK = true fragment manager " + y0Var);
                }
                if (y0.J(3)) {
                    Log.d("FragmentManager", "cancelBackStackTransition for transition " + y0Var.h);
                }
                a aVar = y0Var.h;
                if (aVar != null) {
                    aVar.f434r = false;
                    u uVar = new u(1, y0Var);
                    if (aVar.f432p == null) {
                        aVar.f432p = new ArrayList();
                    }
                    aVar.f432p.add(uVar);
                    y0Var.h.d(false, true);
                    y0Var.f647i = true;
                    y0Var.z(true);
                    y0Var.D();
                    y0Var.f647i = false;
                    y0Var.h = null;
                }
                break;
        }
    }

    @Override // b.y
    public final void b() {
        switch (this.f599d) {
            case 0:
                y0 y0Var = (y0) this.f600e;
                if (y0.J(3)) {
                    Log.d("FragmentManager", "handleOnBackPressed. PREDICTIVE_BACK = true fragment manager " + y0Var);
                }
                p0 p0Var = y0Var.f648j;
                ArrayList arrayList = y0Var.f652n;
                y0Var.f647i = true;
                y0Var.z(true);
                int i6 = 0;
                y0Var.f647i = false;
                if (y0Var.h == null) {
                    if (p0Var.f834a) {
                        if (y0.J(3)) {
                            Log.d("FragmentManager", "Calling popBackStackImmediate via onBackPressed callback");
                        }
                        y0Var.Q();
                        return;
                    } else {
                        if (y0.J(3)) {
                            Log.d("FragmentManager", "Calling onBackPressed via onBackPressed callback");
                        }
                        y0Var.f646g.c();
                        return;
                    }
                }
                if (!arrayList.isEmpty()) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet(y0.E(y0Var.h));
                    int size = arrayList.size();
                    int i9 = 0;
                    while (i9 < size) {
                        Object obj = arrayList.get(i9);
                        i9++;
                        if (obj != null) {
                            throw new ClassCastException();
                        }
                        Iterator it = linkedHashSet.iterator();
                        if (it.hasNext()) {
                            throw null;
                        }
                    }
                }
                ArrayList arrayList2 = y0Var.h.f418a;
                int size2 = arrayList2.size();
                int i10 = 0;
                while (i10 < size2) {
                    Object obj2 = arrayList2.get(i10);
                    i10++;
                    c0 c0Var = ((h1) obj2).f535b;
                    if (c0Var != null) {
                        c0Var.f476m = false;
                    }
                }
                for (o oVar : y0Var.f(new ArrayList(Collections.singletonList(y0Var.h)), 0, 1)) {
                    ArrayList arrayList3 = oVar.f591c;
                    if (y0.J(3)) {
                        Log.d("FragmentManager", "SpecialEffectsController: Completing Back ");
                    }
                    oVar.k(arrayList3);
                    oVar.c(arrayList3);
                }
                ArrayList arrayList4 = y0Var.h.f418a;
                int size3 = arrayList4.size();
                while (i6 < size3) {
                    Object obj3 = arrayList4.get(i6);
                    i6++;
                    c0 c0Var2 = ((h1) obj3).f535b;
                    if (c0Var2 != null && c0Var2.O == null) {
                        y0Var.g(c0Var2).k();
                    }
                }
                y0Var.h = null;
                y0Var.e0();
                if (y0.J(3)) {
                    Log.d("FragmentManager", "Op is being set to null");
                    Log.d("FragmentManager", "OnBackPressedCallback enabled=" + p0Var.f834a + " for  FragmentManager " + y0Var);
                    return;
                }
                return;
            default:
                AppPlugin appPlugin = (AppPlugin) this.f600e;
                if (!appPlugin.hasListeners("backButton")) {
                    if (((Plugin) appPlugin).bridge.getWebView().canGoBack()) {
                        ((Plugin) appPlugin).bridge.getWebView().goBack();
                        return;
                    }
                    return;
                } else {
                    JSObject jSObject = new JSObject();
                    jSObject.put("canGoBack", ((Plugin) appPlugin).bridge.getWebView().canGoBack());
                    appPlugin.notifyListeners("backButton", jSObject, true);
                    ((Plugin) appPlugin).bridge.triggerJSEvent("backbutton", "document");
                    return;
                }
        }
    }

    @Override // b.y
    public void c(b.b bVar) {
        switch (this.f599d) {
            case 0:
                y0 y0Var = (y0) this.f600e;
                if (y0.J(2)) {
                    Log.v("FragmentManager", "handleOnBackProgressed. PREDICTIVE_BACK = true fragment manager " + y0Var);
                }
                if (y0Var.h != null) {
                    for (o oVar : y0Var.f(new ArrayList(Collections.singletonList(y0Var.h)), 0, 1)) {
                        oVar.getClass();
                        d7.g.f("backEvent", bVar);
                        if (y0.J(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Processing Progress " + bVar.f776c);
                        }
                        ArrayList arrayList = oVar.f591c;
                        ArrayList arrayList2 = new ArrayList();
                        int size = arrayList.size();
                        int i6 = 0;
                        while (i6 < size) {
                            Object obj = arrayList.get(i6);
                            i6++;
                            s6.m.o(arrayList2, ((l1) obj).f581k);
                        }
                        List listW = s6.g.w(s6.g.y(arrayList2));
                        int size2 = listW.size();
                        for (int i9 = 0; i9 < size2; i9++) {
                            ((k1) listW.get(i9)).c(bVar, oVar.f589a);
                        }
                    }
                    Iterator it = y0Var.f652n.iterator();
                    if (it.hasNext()) {
                        it.next().getClass();
                        throw new ClassCastException();
                    }
                    return;
                }
                return;
            default:
                super.c(bVar);
                return;
        }
    }

    @Override // b.y
    public void d(b.b bVar) {
        switch (this.f599d) {
            case 0:
                y0 y0Var = (y0) this.f600e;
                if (y0.J(3)) {
                    Log.d("FragmentManager", "handleOnBackStarted. PREDICTIVE_BACK = true fragment manager " + y0Var);
                }
                y0Var.w();
                y0Var.x(new x0(y0Var), false);
                break;
            default:
                super.d(bVar);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p0(y0 y0Var) {
        super(false);
        this.f600e = y0Var;
    }
}
