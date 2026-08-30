package g;

import android.R;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import m.i3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class m extends androidx.fragment.app.h0 implements n, y.x {
    private static final String DELEGATE_TAG = "androidx:appcompat";
    private s mDelegate;
    private Resources mResources;

    public m() {
        getSavedStateRegistry().c(DELEGATE_TAG, new e1.a(this));
        addOnContextAvailableListener(new l(this));
    }

    @Override // b.p, android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        e();
        f0 f0Var = (f0) getDelegate();
        f0Var.x();
        ((ViewGroup) f0Var.I.findViewById(R.id.content)).addView(view, layoutParams);
        f0Var.f2697m.a(f0Var.f2695l.getCallback());
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a7  */
    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void attachBaseContext(android.content.Context r10) {
        /*
            Method dump skipped, instruction units count: 536
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g.m.attachBaseContext(android.content.Context):void");
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        b supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.a()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // y.h, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        b supportActionBar = getSupportActionBar();
        if (keyCode == 82 && supportActionBar != null && supportActionBar.j(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public final void e() {
        androidx.lifecycle.j0.f(getWindow().getDecorView(), this);
        View decorView = getWindow().getDecorView();
        d7.g.f("<this>", decorView);
        decorView.setTag(com.YaarWin.app.R.id.view_tree_view_model_store_owner, this);
        f4.f.d(getWindow().getDecorView(), this);
        i2.t.l(getWindow().getDecorView(), this);
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i6) {
        f0 f0Var = (f0) getDelegate();
        f0Var.x();
        return (T) f0Var.f2695l.findViewById(i6);
    }

    public s getDelegate() {
        if (this.mDelegate == null) {
            q qVar = s.f2778a;
            this.mDelegate = new f0(this, null, this, this);
        }
        return this.mDelegate;
    }

    public c getDrawerToggleDelegate() {
        ((f0) getDelegate()).getClass();
        return new e5.e(22);
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        f0 f0Var = (f0) getDelegate();
        if (f0Var.f2703x == null) {
            f0Var.C();
            b bVar = f0Var.f2702w;
            f0Var.f2703x = new k.i(bVar != null ? bVar.e() : f0Var.f2693k);
        }
        return f0Var.f2703x;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        Resources resources = this.mResources;
        if (resources == null) {
            int i6 = i3.f4001a;
        }
        return resources == null ? super.getResources() : resources;
    }

    public b getSupportActionBar() {
        f0 f0Var = (f0) getDelegate();
        f0Var.C();
        return f0Var.f2702w;
    }

    @Override // y.x
    public Intent getSupportParentActivityIntent() {
        return y.e.a(this);
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        getDelegate().b();
    }

    @Override // b.p, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) throws IllegalAccessException {
        super.onConfigurationChanged(configuration);
        f0 f0Var = (f0) getDelegate();
        if (f0Var.N && f0Var.H) {
            f0Var.C();
            b bVar = f0Var.f2702w;
            if (bVar != null) {
                bVar.g();
            }
        }
        m.p pVarA = m.p.a();
        Context context = f0Var.f2693k;
        synchronized (pVarA) {
            pVarA.f4061a.l(context);
        }
        f0Var.Z = new Configuration(f0Var.f2693k.getResources().getConfiguration());
        f0Var.o(false, false);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(super.getResources().getConfiguration(), super.getResources().getDisplayMetrics());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        onSupportContentChanged();
    }

    public void onCreateSupportNavigateUpTaskStack(y.y yVar) {
        ArrayList arrayList = yVar.f6093a;
        m mVar = yVar.f6094b;
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = y.e.a(this);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component = supportParentActivityIntent.getComponent();
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(mVar.getPackageManager());
            }
            int size = arrayList.size();
            try {
                for (Intent intentB = y.e.b(mVar, component); intentB != null; intentB = y.e.b(mVar, intentB.getComponent())) {
                    arrayList.add(size, intentB);
                }
                arrayList.add(supportParentActivityIntent);
            } catch (PackageManager.NameNotFoundException e9) {
                Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                throw new IllegalArgumentException(e9);
            }
        }
    }

    @Override // androidx.fragment.app.h0, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        getDelegate().f();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i6, KeyEvent keyEvent) {
        Window window;
        if (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) {
            return super.onKeyDown(i6, keyEvent);
        }
        return true;
    }

    @Override // androidx.fragment.app.h0, b.p, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i6, MenuItem menuItem) {
        if (super.onMenuItemSelected(i6, menuItem)) {
            return true;
        }
        b supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() != 16908332 || supportActionBar == null || (supportActionBar.d() & 4) == 0) {
            return false;
        }
        return onSupportNavigateUp();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i6, Menu menu) {
        return super.onMenuOpened(i6, menu);
    }

    @Override // b.p, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i6, Menu menu) {
        super.onPanelClosed(i6, menu);
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((f0) getDelegate()).x();
    }

    @Override // androidx.fragment.app.h0, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        f0 f0Var = (f0) getDelegate();
        f0Var.C();
        b bVar = f0Var.f2702w;
        if (bVar != null) {
            bVar.m(true);
        }
    }

    @Override // androidx.fragment.app.h0, android.app.Activity
    public void onStart() throws IllegalAccessException {
        super.onStart();
        ((f0) getDelegate()).o(true, false);
    }

    @Override // androidx.fragment.app.h0, android.app.Activity
    public void onStop() {
        super.onStop();
        f0 f0Var = (f0) getDelegate();
        f0Var.C();
        b bVar = f0Var.f2702w;
        if (bVar != null) {
            bVar.m(false);
        }
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            return false;
        }
        if (!supportShouldUpRecreateTask(supportParentActivityIntent)) {
            supportNavigateUpTo(supportParentActivityIntent);
            return true;
        }
        y.y yVar = new y.y(this);
        onCreateSupportNavigateUpTaskStack(yVar);
        onPrepareSupportNavigateUpTaskStack(yVar);
        ArrayList arrayList = yVar.f6093a;
        if (arrayList.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        yVar.f6094b.startActivities(intentArr, null);
        try {
            finishAffinity();
            return true;
        } catch (IllegalStateException unused) {
            finish();
            return true;
        }
    }

    @Override // android.app.Activity
    public void onTitleChanged(CharSequence charSequence, int i6) {
        super.onTitleChanged(charSequence, i6);
        getDelegate().m(charSequence);
    }

    @Override // g.n
    public k.b onWindowStartingSupportActionMode(k.a aVar) {
        return null;
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        b supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.k()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // b.p, android.app.Activity
    public void setContentView(int i6) {
        e();
        getDelegate().j(i6);
    }

    public void setSupportActionBar(Toolbar toolbar) {
        f0 f0Var = (f0) getDelegate();
        if (f0Var.f2691j instanceof Activity) {
            f0Var.C();
            b bVar = f0Var.f2702w;
            if (bVar instanceof s0) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            f0Var.f2703x = null;
            if (bVar != null) {
                bVar.h();
            }
            f0Var.f2702w = null;
            if (toolbar != null) {
                Object obj = f0Var.f2691j;
                n0 n0Var = new n0(toolbar, obj instanceof Activity ? ((Activity) obj).getTitle() : f0Var.f2704y, f0Var.f2697m);
                f0Var.f2702w = n0Var;
                f0Var.f2697m.f2640b = n0Var.f2755c;
                toolbar.setBackInvokedCallbackEnabled(true);
            } else {
                f0Var.f2697m.f2640b = null;
            }
            f0Var.b();
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i6) {
        super.setTheme(i6);
        ((f0) getDelegate()).f2683b0 = i6;
    }

    public k.b startSupportActionMode(k.a aVar) {
        return getDelegate().n(aVar);
    }

    public void supportInvalidateOptionsMenu() {
        getDelegate().b();
    }

    public void supportNavigateUpTo(Intent intent) {
        navigateUpTo(intent);
    }

    public boolean supportRequestWindowFeature(int i6) {
        return getDelegate().i(i6);
    }

    public boolean supportShouldUpRecreateTask(Intent intent) {
        return shouldUpRecreateTask(intent);
    }

    @Override // b.p, android.app.Activity
    public void setContentView(View view) {
        e();
        getDelegate().k(view);
    }

    @Override // b.p, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        e();
        getDelegate().l(view, layoutParams);
    }

    @Deprecated
    public void onSupportContentChanged() {
    }

    public void onLocalesChanged(f0.f fVar) {
    }

    public void onNightModeChanged(int i6) {
    }

    public void onPrepareSupportNavigateUpTaskStack(y.y yVar) {
    }

    @Override // g.n
    public void onSupportActionModeFinished(k.b bVar) {
    }

    @Override // g.n
    public void onSupportActionModeStarted(k.b bVar) {
    }

    @Deprecated
    public void setSupportProgress(int i6) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminate(boolean z5) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z5) {
    }

    @Deprecated
    public void setSupportProgressBarVisibility(boolean z5) {
    }
}
