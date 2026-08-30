package b;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.q0;
import androidx.lifecycle.r0;
import androidx.lifecycle.s0;
import androidx.lifecycle.t0;
import com.YaarWin.app.R;
import com.getcapacitor.PluginMethod;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class p extends y.h implements t0, androidx.lifecycle.i, e1.g, j0 {
    private static final String ACTIVITY_RESULT_TAG = "android:support:activity-result";
    private static final i Companion = new i();
    private s0 _viewModelStore;
    private final d.h activityResultRegistry;
    private int contentLayoutId;
    private final c.a contextAwareHelper = new c.a();
    private final r6.c defaultViewModelProviderFactory$delegate;
    private boolean dispatchingOnMultiWindowModeChanged;
    private boolean dispatchingOnPictureInPictureModeChanged;
    private final r6.c fullyDrawnReporter$delegate;
    private final j0.l menuHostHelper;
    private final AtomicInteger nextLocalRequestCode;
    private final r6.c onBackPressedDispatcher$delegate;
    private final CopyOnWriteArrayList<i0.a> onConfigurationChangedListeners;
    private final CopyOnWriteArrayList<i0.a> onMultiWindowModeChangedListeners;
    private final CopyOnWriteArrayList<i0.a> onNewIntentListeners;
    private final CopyOnWriteArrayList<i0.a> onPictureInPictureModeChangedListeners;
    private final CopyOnWriteArrayList<i0.a> onTrimMemoryListeners;
    private final CopyOnWriteArrayList<Runnable> onUserLeaveHintListeners;
    private final k reportFullyDrawnExecutor;
    private final e1.f savedStateRegistryController;

    public p() {
        final androidx.fragment.app.h0 h0Var = (androidx.fragment.app.h0) this;
        this.menuHostHelper = new j0.l(new d(h0Var, 0));
        e1.f fVar = new e1.f(this);
        this.savedStateRegistryController = fVar;
        this.reportFullyDrawnExecutor = new l(h0Var);
        this.fullyDrawnReporter$delegate = new r6.g(new o(h0Var, 2));
        this.nextLocalRequestCode = new AtomicInteger();
        this.activityResultRegistry = new n(h0Var);
        this.onConfigurationChangedListeners = new CopyOnWriteArrayList<>();
        this.onTrimMemoryListeners = new CopyOnWriteArrayList<>();
        this.onNewIntentListeners = new CopyOnWriteArrayList<>();
        this.onMultiWindowModeChangedListeners = new CopyOnWriteArrayList<>();
        this.onPictureInPictureModeChangedListeners = new CopyOnWriteArrayList<>();
        this.onUserLeaveHintListeners = new CopyOnWriteArrayList<>();
        if (getLifecycle() == null) {
            throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
        }
        getLifecycle().a(new e(0, h0Var));
        getLifecycle().a(new e(1, h0Var));
        getLifecycle().a(new e1.b(4, h0Var));
        fVar.a();
        androidx.lifecycle.j0.d(this);
        if (Build.VERSION.SDK_INT <= 23) {
            getLifecycle().a(new x(h0Var));
        }
        getSavedStateRegistry().c(ACTIVITY_RESULT_TAG, new androidx.lifecycle.g0(1, h0Var));
        addOnContextAvailableListener(new c.b() { // from class: b.f
            @Override // c.b
            public final void a(p pVar) {
                p.a(h0Var, pVar);
            }
        });
        this.defaultViewModelProviderFactory$delegate = new r6.g(new o(h0Var, 0));
        this.onBackPressedDispatcher$delegate = new r6.g(new o(h0Var, 3));
    }

    public static void a(androidx.fragment.app.h0 h0Var, Context context) {
        d7.g.f("it", context);
        Bundle bundleA = h0Var.getSavedStateRegistry().a(ACTIVITY_RESULT_TAG);
        if (bundleA != null) {
            d.h hVar = ((p) h0Var).activityResultRegistry;
            LinkedHashMap linkedHashMap = hVar.f2205b;
            LinkedHashMap linkedHashMap2 = hVar.f2204a;
            Bundle bundle = hVar.f2210g;
            ArrayList<Integer> integerArrayList = bundleA.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
            ArrayList<String> stringArrayList = bundleA.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
            if (stringArrayList == null || integerArrayList == null) {
                return;
            }
            ArrayList<String> stringArrayList2 = bundleA.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
            if (stringArrayList2 != null) {
                hVar.f2207d.addAll(stringArrayList2);
            }
            Bundle bundle2 = bundleA.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
            if (bundle2 != null) {
                bundle.putAll(bundle2);
            }
            int size = stringArrayList.size();
            for (int i6 = 0; i6 < size; i6++) {
                String str = stringArrayList.get(i6);
                if (linkedHashMap.containsKey(str)) {
                    Integer num = (Integer) linkedHashMap.remove(str);
                    if (!bundle.containsKey(str)) {
                        d7.o.a(linkedHashMap2);
                        linkedHashMap2.remove(num);
                    }
                }
                Integer num2 = integerArrayList.get(i6);
                d7.g.e("rcs[i]", num2);
                int iIntValue = num2.intValue();
                String str2 = stringArrayList.get(i6);
                d7.g.e("keys[i]", str2);
                String str3 = str2;
                linkedHashMap2.put(Integer.valueOf(iIntValue), str3);
                hVar.f2205b.put(str3, Integer.valueOf(iIntValue));
            }
        }
    }

    public static final void access$ensureViewModelStore(p pVar) {
        if (pVar._viewModelStore == null) {
            j jVar = (j) pVar.getLastNonConfigurationInstance();
            if (jVar != null) {
                pVar._viewModelStore = jVar.f810b;
            }
            if (pVar._viewModelStore == null) {
                pVar._viewModelStore = new s0();
            }
        }
    }

    public static void b(androidx.fragment.app.h0 h0Var, androidx.lifecycle.t tVar, androidx.lifecycle.m mVar) {
        if (mVar == androidx.lifecycle.m.ON_DESTROY) {
            ((p) h0Var).contextAwareHelper.f986b = null;
            if (!h0Var.isChangingConfigurations()) {
                h0Var.getViewModelStore().a();
            }
            l lVar = (l) ((p) h0Var).reportFullyDrawnExecutor;
            androidx.fragment.app.h0 h0Var2 = lVar.f814d;
            h0Var2.getWindow().getDecorView().removeCallbacks(lVar);
            h0Var2.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(lVar);
        }
    }

    public static Bundle c(androidx.fragment.app.h0 h0Var) {
        Bundle bundle = new Bundle();
        d.h hVar = ((p) h0Var).activityResultRegistry;
        hVar.getClass();
        LinkedHashMap linkedHashMap = hVar.f2205b;
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(linkedHashMap.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(linkedHashMap.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(hVar.f2207d));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", new Bundle(hVar.f2210g));
        return bundle;
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        k kVar = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        d7.g.e("window.decorView", decorView);
        ((l) kVar).a(decorView);
        super.addContentView(view, layoutParams);
    }

    public void addMenuProvider(j0.m mVar) {
        d7.g.f("provider", mVar);
        j0.l lVar = this.menuHostHelper;
        lVar.f3292b.add(mVar);
        lVar.f3291a.run();
    }

    public final void addOnConfigurationChangedListener(i0.a aVar) {
        d7.g.f("listener", aVar);
        this.onConfigurationChangedListeners.add(aVar);
    }

    public final void addOnContextAvailableListener(c.b bVar) {
        d7.g.f("listener", bVar);
        c.a aVar = this.contextAwareHelper;
        aVar.getClass();
        p pVar = aVar.f986b;
        if (pVar != null) {
            bVar.a(pVar);
        }
        aVar.f985a.add(bVar);
    }

    public final void addOnMultiWindowModeChangedListener(i0.a aVar) {
        d7.g.f("listener", aVar);
        this.onMultiWindowModeChangedListeners.add(aVar);
    }

    public final void addOnNewIntentListener(i0.a aVar) {
        d7.g.f("listener", aVar);
        this.onNewIntentListeners.add(aVar);
    }

    public final void addOnPictureInPictureModeChangedListener(i0.a aVar) {
        d7.g.f("listener", aVar);
        this.onPictureInPictureModeChangedListeners.add(aVar);
    }

    public final void addOnTrimMemoryListener(i0.a aVar) {
        d7.g.f("listener", aVar);
        this.onTrimMemoryListeners.add(aVar);
    }

    public final void addOnUserLeaveHintListener(Runnable runnable) {
        d7.g.f("listener", runnable);
        this.onUserLeaveHintListeners.add(runnable);
    }

    public final d.h getActivityResultRegistry() {
        return this.activityResultRegistry;
    }

    @Override // androidx.lifecycle.i
    public v0.b getDefaultViewModelCreationExtras() {
        v0.c cVar = new v0.c(0);
        Application application = getApplication();
        LinkedHashMap linkedHashMap = cVar.f5530a;
        if (application != null) {
            Application application2 = getApplication();
            d7.g.e("application", application2);
            linkedHashMap.put(q0.f734e, application2);
        }
        linkedHashMap.put(androidx.lifecycle.j0.f707a, this);
        linkedHashMap.put(androidx.lifecycle.j0.f708b, this);
        Intent intent = getIntent();
        Bundle extras = intent != null ? intent.getExtras() : null;
        if (extras != null) {
            linkedHashMap.put(androidx.lifecycle.j0.f709c, extras);
        }
        return cVar;
    }

    public r0 getDefaultViewModelProviderFactory() {
        return (r0) this.defaultViewModelProviderFactory$delegate.getValue();
    }

    public s getFullyDrawnReporter() {
        return (s) this.fullyDrawnReporter$delegate.getValue();
    }

    public Object getLastCustomNonConfigurationInstance() {
        j jVar = (j) getLastNonConfigurationInstance();
        if (jVar != null) {
            return jVar.f809a;
        }
        return null;
    }

    @Override // y.h, androidx.lifecycle.t
    public androidx.lifecycle.o getLifecycle() {
        return super.getLifecycle();
    }

    public final i0 getOnBackPressedDispatcher() {
        return (i0) this.onBackPressedDispatcher$delegate.getValue();
    }

    @Override // e1.g
    public final e1.e getSavedStateRegistry() {
        return this.savedStateRegistryController.f2314b;
    }

    @Override // androidx.lifecycle.t0
    public s0 getViewModelStore() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this._viewModelStore == null) {
            j jVar = (j) getLastNonConfigurationInstance();
            if (jVar != null) {
                this._viewModelStore = jVar.f810b;
            }
            if (this._viewModelStore == null) {
                this._viewModelStore = new s0();
            }
        }
        s0 s0Var = this._viewModelStore;
        d7.g.c(s0Var);
        return s0Var;
    }

    public void initializeViewTreeOwners() {
        View decorView = getWindow().getDecorView();
        d7.g.e("window.decorView", decorView);
        androidx.lifecycle.j0.f(decorView, this);
        View decorView2 = getWindow().getDecorView();
        d7.g.e("window.decorView", decorView2);
        decorView2.setTag(R.id.view_tree_view_model_store_owner, this);
        View decorView3 = getWindow().getDecorView();
        d7.g.e("window.decorView", decorView3);
        f4.f.d(decorView3, this);
        View decorView4 = getWindow().getDecorView();
        d7.g.e("window.decorView", decorView4);
        i2.t.l(decorView4, this);
        View decorView5 = getWindow().getDecorView();
        d7.g.e("window.decorView", decorView5);
        decorView5.setTag(R.id.report_drawn, this);
    }

    public void invalidateMenu() {
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i6, int i9, Intent intent) {
        if (this.activityResultRegistry.a(i6, i9, intent)) {
            return;
        }
        super.onActivityResult(i6, i9, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        getOnBackPressedDispatcher().c();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        d7.g.f("newConfig", configuration);
        super.onConfigurationChanged(configuration);
        Iterator<i0.a> it = this.onConfigurationChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(configuration);
        }
    }

    @Override // y.h, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.savedStateRegistryController.b(bundle);
        c.a aVar = this.contextAwareHelper;
        aVar.getClass();
        aVar.f986b = this;
        Iterator it = aVar.f985a.iterator();
        while (it.hasNext()) {
            ((c.b) it.next()).a(this);
        }
        super.onCreate(bundle);
        int i6 = androidx.lifecycle.f0.f694b;
        androidx.lifecycle.d0.b(this);
        int i9 = this.contentLayoutId;
        if (i9 != 0) {
            setContentView(i9);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i6, Menu menu) {
        d7.g.f("menu", menu);
        if (i6 != 0) {
            return true;
        }
        super.onCreatePanelMenu(i6, menu);
        j0.l lVar = this.menuHostHelper;
        getMenuInflater();
        Iterator it = lVar.f3292b.iterator();
        while (it.hasNext()) {
            ((androidx.fragment.app.q0) ((j0.m) it.next())).f603a.k();
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i6, MenuItem menuItem) {
        d7.g.f("item", menuItem);
        if (super.onMenuItemSelected(i6, menuItem)) {
            return true;
        }
        if (i6 == 0) {
            return this.menuHostHelper.a();
        }
        return false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z5) {
        if (this.dispatchingOnMultiWindowModeChanged) {
            return;
        }
        Iterator<i0.a> it = this.onMultiWindowModeChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(new y.i(z5));
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        d7.g.f("intent", intent);
        super.onNewIntent(intent);
        Iterator<i0.a> it = this.onNewIntentListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i6, Menu menu) {
        d7.g.f("menu", menu);
        Iterator it = this.menuHostHelper.f3292b.iterator();
        while (it.hasNext()) {
            ((androidx.fragment.app.q0) ((j0.m) it.next())).f603a.q();
        }
        super.onPanelClosed(i6, menu);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z5) {
        if (this.dispatchingOnPictureInPictureModeChanged) {
            return;
        }
        Iterator<i0.a> it = this.onPictureInPictureModeChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(new y.v(z5));
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i6, View view, Menu menu) {
        d7.g.f("menu", menu);
        if (i6 != 0) {
            return true;
        }
        super.onPreparePanel(i6, view, menu);
        Iterator it = this.menuHostHelper.f3292b.iterator();
        while (it.hasNext()) {
            ((androidx.fragment.app.q0) ((j0.m) it.next())).f603a.t();
        }
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i6, String[] strArr, int[] iArr) {
        d7.g.f("permissions", strArr);
        d7.g.f("grantResults", iArr);
        if (this.activityResultRegistry.a(i6, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            return;
        }
        super.onRequestPermissionsResult(i6, strArr, iArr);
    }

    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        j jVar;
        Object objOnRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        s0 s0Var = this._viewModelStore;
        if (s0Var == null && (jVar = (j) getLastNonConfigurationInstance()) != null) {
            s0Var = jVar.f810b;
        }
        if (s0Var == null && objOnRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        j jVar2 = new j();
        jVar2.f809a = objOnRetainCustomNonConfigurationInstance;
        jVar2.f810b = s0Var;
        return jVar2;
    }

    @Override // y.h, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        d7.g.f("outState", bundle);
        if (getLifecycle() instanceof androidx.lifecycle.v) {
            androidx.lifecycle.o lifecycle = getLifecycle();
            d7.g.d("null cannot be cast to non-null type androidx.lifecycle.LifecycleRegistry", lifecycle);
            ((androidx.lifecycle.v) lifecycle).g();
        }
        super.onSaveInstanceState(bundle);
        this.savedStateRegistryController.c(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i6) {
        super.onTrimMemory(i6);
        Iterator<i0.a> it = this.onTrimMemoryListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(Integer.valueOf(i6));
        }
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        super.onUserLeaveHint();
        Iterator<Runnable> it = this.onUserLeaveHintListeners.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
    }

    public Context peekAvailableContext() {
        return this.contextAwareHelper.f986b;
    }

    public final <I, O> d.c registerForActivityResult(e.a aVar, d.h hVar, d.b bVar) {
        d7.g.f("contract", aVar);
        d7.g.f("registry", hVar);
        d7.g.f(PluginMethod.RETURN_CALLBACK, bVar);
        return hVar.c("activity_rq#" + this.nextLocalRequestCode.getAndIncrement(), this, aVar, bVar);
    }

    public void removeMenuProvider(j0.m mVar) {
        d7.g.f("provider", mVar);
        this.menuHostHelper.b(mVar);
    }

    public final void removeOnConfigurationChangedListener(i0.a aVar) {
        d7.g.f("listener", aVar);
        this.onConfigurationChangedListeners.remove(aVar);
    }

    public final void removeOnContextAvailableListener(c.b bVar) {
        d7.g.f("listener", bVar);
        c.a aVar = this.contextAwareHelper;
        aVar.getClass();
        aVar.f985a.remove(bVar);
    }

    public final void removeOnMultiWindowModeChangedListener(i0.a aVar) {
        d7.g.f("listener", aVar);
        this.onMultiWindowModeChangedListeners.remove(aVar);
    }

    public final void removeOnNewIntentListener(i0.a aVar) {
        d7.g.f("listener", aVar);
        this.onNewIntentListeners.remove(aVar);
    }

    public final void removeOnPictureInPictureModeChangedListener(i0.a aVar) {
        d7.g.f("listener", aVar);
        this.onPictureInPictureModeChangedListeners.remove(aVar);
    }

    public final void removeOnTrimMemoryListener(i0.a aVar) {
        d7.g.f("listener", aVar);
        this.onTrimMemoryListeners.remove(aVar);
    }

    public final void removeOnUserLeaveHintListener(Runnable runnable) {
        d7.g.f("listener", runnable);
        this.onUserLeaveHintListeners.remove(runnable);
    }

    @Override // android.app.Activity
    public void reportFullyDrawn() {
        try {
            if (z7.d.f()) {
                z7.d.a("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
            s fullyDrawnReporter = getFullyDrawnReporter();
            synchronized (fullyDrawnReporter.f824a) {
                try {
                    fullyDrawnReporter.f825b = true;
                    ArrayList arrayList = fullyDrawnReporter.f826c;
                    int size = arrayList.size();
                    int i6 = 0;
                    while (i6 < size) {
                        Object obj = arrayList.get(i6);
                        i6++;
                        ((c7.a) obj).b();
                    }
                    fullyDrawnReporter.f826c.clear();
                } finally {
                }
            }
            Trace.endSection();
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i6) {
        initializeViewTreeOwners();
        k kVar = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        d7.g.e("window.decorView", decorView);
        ((l) kVar).a(decorView);
        super.setContentView(i6);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i6) {
        d7.g.f("intent", intent);
        super.startActivityForResult(intent, i6);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i6, Intent intent, int i9, int i10, int i11) throws IntentSender.SendIntentException {
        d7.g.f("intent", intentSender);
        super.startIntentSenderForResult(intentSender, i6, intent, i9, i10, i11);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i6, Bundle bundle) {
        d7.g.f("intent", intent);
        super.startActivityForResult(intent, i6, bundle);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i6, Intent intent, int i9, int i10, int i11, Bundle bundle) {
        d7.g.f("intent", intentSender);
        super.startIntentSenderForResult(intentSender, i6, intent, i9, i10, i11, bundle);
    }

    public final <I, O> d.c registerForActivityResult(e.a aVar, d.b bVar) {
        d7.g.f("contract", aVar);
        d7.g.f(PluginMethod.RETURN_CALLBACK, bVar);
        return registerForActivityResult(aVar, this.activityResultRegistry, bVar);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z5, Configuration configuration) {
        d7.g.f("newConfig", configuration);
        this.dispatchingOnMultiWindowModeChanged = true;
        try {
            super.onMultiWindowModeChanged(z5, configuration);
            this.dispatchingOnMultiWindowModeChanged = false;
            Iterator<i0.a> it = this.onMultiWindowModeChangedListeners.iterator();
            while (it.hasNext()) {
                it.next().accept(new y.i(z5));
            }
        } catch (Throwable th) {
            this.dispatchingOnMultiWindowModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z5, Configuration configuration) {
        d7.g.f("newConfig", configuration);
        this.dispatchingOnPictureInPictureModeChanged = true;
        try {
            super.onPictureInPictureModeChanged(z5, configuration);
            this.dispatchingOnPictureInPictureModeChanged = false;
            Iterator<i0.a> it = this.onPictureInPictureModeChangedListeners.iterator();
            while (it.hasNext()) {
                it.next().accept(new y.v(z5));
            }
        } catch (Throwable th) {
            this.dispatchingOnPictureInPictureModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        initializeViewTreeOwners();
        k kVar = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        d7.g.e("window.decorView", decorView);
        ((l) kVar).a(decorView);
        super.setContentView(view);
    }

    public void addMenuProvider(j0.m mVar, androidx.lifecycle.t tVar) {
        d7.g.f("provider", mVar);
        d7.g.f("owner", tVar);
        j0.l lVar = this.menuHostHelper;
        lVar.f3292b.add(mVar);
        lVar.f3291a.run();
        androidx.lifecycle.o lifecycle = tVar.getLifecycle();
        HashMap map = lVar.f3293c;
        j0.k kVar = (j0.k) map.remove(mVar);
        if (kVar != null) {
            kVar.f3284a.b(kVar.f3285b);
            kVar.f3285b = null;
        }
        map.put(mVar, new j0.k(lifecycle, new g(lVar, 1, mVar)));
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        k kVar = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        d7.g.e("window.decorView", decorView);
        ((l) kVar).a(decorView);
        super.setContentView(view, layoutParams);
    }

    public void addMenuProvider(final j0.m mVar, androidx.lifecycle.t tVar, final androidx.lifecycle.n nVar) {
        d7.g.f("provider", mVar);
        d7.g.f("owner", tVar);
        d7.g.f("state", nVar);
        final j0.l lVar = this.menuHostHelper;
        lVar.getClass();
        androidx.lifecycle.o lifecycle = tVar.getLifecycle();
        HashMap map = lVar.f3293c;
        j0.k kVar = (j0.k) map.remove(mVar);
        if (kVar != null) {
            kVar.f3284a.b(kVar.f3285b);
            kVar.f3285b = null;
        }
        map.put(mVar, new j0.k(lifecycle, new androidx.lifecycle.r() { // from class: j0.j
            @Override // androidx.lifecycle.r
            public final void a(androidx.lifecycle.t tVar2, androidx.lifecycle.m mVar2) {
                l lVar2 = lVar;
                lVar2.getClass();
                Runnable runnable = lVar2.f3291a;
                CopyOnWriteArrayList copyOnWriteArrayList = lVar2.f3292b;
                androidx.lifecycle.m.Companion.getClass();
                androidx.lifecycle.n nVar2 = nVar;
                int iOrdinal = nVar2.ordinal();
                androidx.lifecycle.m mVar3 = null;
                androidx.lifecycle.m mVar4 = iOrdinal != 2 ? iOrdinal != 3 ? iOrdinal != 4 ? null : androidx.lifecycle.m.ON_RESUME : androidx.lifecycle.m.ON_START : androidx.lifecycle.m.ON_CREATE;
                m mVar5 = mVar;
                if (mVar2 == mVar4) {
                    copyOnWriteArrayList.add(mVar5);
                    runnable.run();
                    return;
                }
                androidx.lifecycle.m mVar6 = androidx.lifecycle.m.ON_DESTROY;
                if (mVar2 == mVar6) {
                    lVar2.b(mVar5);
                    return;
                }
                int iOrdinal2 = nVar2.ordinal();
                if (iOrdinal2 == 2) {
                    mVar3 = mVar6;
                } else if (iOrdinal2 == 3) {
                    mVar3 = androidx.lifecycle.m.ON_STOP;
                } else if (iOrdinal2 == 4) {
                    mVar3 = androidx.lifecycle.m.ON_PAUSE;
                }
                if (mVar2 == mVar3) {
                    copyOnWriteArrayList.remove(mVar5);
                    runnable.run();
                }
            }
        }));
    }

    public static /* synthetic */ void getOnBackPressedDispatcher$annotations() {
    }
}
