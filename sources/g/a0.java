package g;

import android.content.Context;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a0 implements Window.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Window.Callback f2639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public l0 f2640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2641c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2642d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2643e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ f0 f2644f;

    public a0(f0 f0Var, Window.Callback callback) {
        this.f2644f = f0Var;
        if (callback == null) {
            throw new IllegalArgumentException("Window callback may not be null");
        }
        this.f2639a = callback;
    }

    public final void a(Window.Callback callback) {
        try {
            this.f2641c = true;
            callback.onContentChanged();
        } finally {
            this.f2641c = false;
        }
    }

    public final boolean b(int i6, Menu menu) {
        return this.f2639a.onMenuOpened(i6, menu);
    }

    public final void c(int i6, Menu menu) {
        this.f2639a.onPanelClosed(i6, menu);
    }

    public final void d(List list, Menu menu, int i6) {
        k.m.a(this.f2639a, list, menu, i6);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.f2639a.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z5 = this.f2642d;
        Window.Callback callback = this.f2639a;
        return z5 ? callback.dispatchKeyEvent(keyEvent) : this.f2644f.v(keyEvent) || callback.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        if (!this.f2639a.dispatchKeyShortcutEvent(keyEvent)) {
            int keyCode = keyEvent.getKeyCode();
            f0 f0Var = this.f2644f;
            f0Var.C();
            b bVar = f0Var.f2702w;
            if (bVar == null || !bVar.i(keyCode, keyEvent)) {
                e0 e0Var = f0Var.U;
                if (e0Var == null || !f0Var.H(e0Var, keyEvent.getKeyCode(), keyEvent)) {
                    if (f0Var.U == null) {
                        e0 e0VarB = f0Var.B(0);
                        f0Var.I(e0VarB, keyEvent);
                        boolean zH = f0Var.H(e0VarB, keyEvent.getKeyCode(), keyEvent);
                        e0VarB.f2664k = false;
                        if (zH) {
                        }
                    }
                    return false;
                }
                e0 e0Var2 = f0Var.U;
                if (e0Var2 != null) {
                    e0Var2.f2665l = true;
                    return true;
                }
            }
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.f2639a.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.f2639a.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.f2639a.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeFinished(ActionMode actionMode) {
        this.f2639a.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeStarted(ActionMode actionMode) {
        this.f2639a.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onAttachedToWindow() {
        this.f2639a.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public final void onContentChanged() {
        if (this.f2641c) {
            this.f2639a.onContentChanged();
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i6, Menu menu) {
        if (i6 != 0 || (menu instanceof l.n)) {
            return this.f2639a.onCreatePanelMenu(i6, menu);
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public final View onCreatePanelView(int i6) {
        l0 l0Var = this.f2640b;
        if (l0Var != null) {
            View view = i6 == 0 ? new View(l0Var.f2749a.f2753a.f327a.getContext()) : null;
            if (view != null) {
                return view;
            }
        }
        return this.f2639a.onCreatePanelView(i6);
    }

    @Override // android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.f2639a.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuItemSelected(int i6, MenuItem menuItem) {
        return this.f2639a.onMenuItemSelected(i6, menuItem);
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuOpened(int i6, Menu menu) {
        b(i6, menu);
        f0 f0Var = this.f2644f;
        if (i6 == 108) {
            f0Var.C();
            b bVar = f0Var.f2702w;
            if (bVar != null) {
                bVar.c(true);
            }
        } else {
            f0Var.getClass();
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final void onPanelClosed(int i6, Menu menu) {
        if (this.f2643e) {
            this.f2639a.onPanelClosed(i6, menu);
            return;
        }
        c(i6, menu);
        f0 f0Var = this.f2644f;
        if (i6 == 108) {
            f0Var.C();
            b bVar = f0Var.f2702w;
            if (bVar != null) {
                bVar.c(false);
                return;
            }
            return;
        }
        if (i6 == 0) {
            e0 e0VarB = f0Var.B(i6);
            if (e0VarB.f2666m) {
                f0Var.t(e0VarB, false);
            }
        }
    }

    @Override // android.view.Window.Callback
    public final void onPointerCaptureChanged(boolean z5) {
        k.n.a(this.f2639a, z5);
    }

    @Override // android.view.Window.Callback
    public final boolean onPreparePanel(int i6, View view, Menu menu) {
        l.n nVar = menu instanceof l.n ? (l.n) menu : null;
        if (i6 == 0 && nVar == null) {
            return false;
        }
        if (nVar != null) {
            nVar.f3692x = true;
        }
        l0 l0Var = this.f2640b;
        if (l0Var != null && i6 == 0) {
            n0 n0Var = l0Var.f2749a;
            if (!n0Var.f2756d) {
                n0Var.f2753a.f337l = true;
                n0Var.f2756d = true;
            }
        }
        boolean zOnPreparePanel = this.f2639a.onPreparePanel(i6, view, menu);
        if (nVar != null) {
            nVar.f3692x = false;
        }
        return zOnPreparePanel;
    }

    @Override // android.view.Window.Callback
    public final void onProvideKeyboardShortcuts(List list, Menu menu, int i6) {
        l.n nVar = this.f2644f.B(0).h;
        if (nVar != null) {
            d(list, nVar, i6);
        } else {
            d(list, menu, i6);
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested(SearchEvent searchEvent) {
        return k.l.a(this.f2639a, searchEvent);
    }

    @Override // android.view.Window.Callback
    public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.f2639a.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z5) {
        this.f2639a.onWindowFocusChanged(z5);
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i6) {
        if (i6 != 0) {
            return k.l.b(this.f2639a, callback, i6);
        }
        f0 f0Var = this.f2644f;
        Context context = f0Var.f2693k;
        com.google.firebase.messaging.y yVar = new com.google.firebase.messaging.y();
        yVar.f2163b = context;
        yVar.f2162a = callback;
        yVar.f2164c = new ArrayList();
        yVar.f2165d = new s.j(0);
        k.b bVarN = f0Var.n(yVar);
        if (bVarN != null) {
            return yVar.q(bVarN);
        }
        return null;
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested() {
        return this.f2639a.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return null;
    }
}
