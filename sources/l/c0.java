package l;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class c0 extends g.c0 implements Menu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final n f3605c;

    public c0(Context context, n nVar) {
        super(context);
        if (nVar == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f3605c = nVar;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return f(this.f3605c.a(0, 0, 0, charSequence));
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i6, int i9, int i10, ComponentName componentName, Intent[] intentArr, Intent intent, int i11, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int iAddIntentOptions = this.f3605c.addIntentOptions(i6, i9, i10, componentName, intentArr, intent, i11, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i12 = 0; i12 < length; i12++) {
                menuItemArr[i12] = f(menuItemArr2[i12]);
            }
        }
        return iAddIntentOptions;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return this.f3605c.addSubMenu(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final void clear() {
        s.j jVar = (s.j) this.f2649b;
        if (jVar != null) {
            jVar.clear();
        }
        this.f3605c.clear();
    }

    @Override // android.view.Menu
    public final void close() {
        this.f3605c.close();
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i6) {
        return f(this.f3605c.findItem(i6));
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i6) {
        return f(this.f3605c.getItem(i6));
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        return this.f3605c.hasVisibleItems();
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i6, KeyEvent keyEvent) {
        return this.f3605c.isShortcutKey(i6, keyEvent);
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i6, int i9) {
        return this.f3605c.performIdentifierAction(i6, i9);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i6, KeyEvent keyEvent, int i9) {
        return this.f3605c.performShortcut(i6, keyEvent, i9);
    }

    @Override // android.view.Menu
    public final void removeGroup(int i6) {
        if (((s.j) this.f2649b) != null) {
            int i9 = 0;
            while (true) {
                s.j jVar = (s.j) this.f2649b;
                if (i9 >= jVar.f5198c) {
                    break;
                }
                if (((e0.a) jVar.e(i9)).getGroupId() == i6) {
                    ((s.j) this.f2649b).f(i9);
                    i9--;
                }
                i9++;
            }
        }
        this.f3605c.removeGroup(i6);
    }

    @Override // android.view.Menu
    public final void removeItem(int i6) {
        if (((s.j) this.f2649b) != null) {
            int i9 = 0;
            while (true) {
                s.j jVar = (s.j) this.f2649b;
                if (i9 >= jVar.f5198c) {
                    break;
                }
                if (((e0.a) jVar.e(i9)).getItemId() == i6) {
                    ((s.j) this.f2649b).f(i9);
                    break;
                }
                i9++;
            }
        }
        this.f3605c.removeItem(i6);
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i6, boolean z5, boolean z8) {
        this.f3605c.setGroupCheckable(i6, z5, z8);
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i6, boolean z5) {
        this.f3605c.setGroupEnabled(i6, z5);
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i6, boolean z5) {
        this.f3605c.setGroupVisible(i6, z5);
    }

    @Override // android.view.Menu
    public final void setQwertyMode(boolean z5) {
        this.f3605c.setQwertyMode(z5);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f3605c.size();
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i6) {
        return this.f3605c.addSubMenu(i6);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i6) {
        return f(this.f3605c.add(i6));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i6, int i9, int i10, CharSequence charSequence) {
        return this.f3605c.addSubMenu(i6, i9, i10, charSequence);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i6, int i9, int i10, CharSequence charSequence) {
        return f(this.f3605c.a(i6, i9, i10, charSequence));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i6, int i9, int i10, int i11) {
        return this.f3605c.addSubMenu(i6, i9, i10, i11);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i6, int i9, int i10, int i11) {
        return f(this.f3605c.add(i6, i9, i10, i11));
    }
}
