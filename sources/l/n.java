package l;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import j0.l0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class n implements Menu {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f3669y = {1, 4, 5, 3, 2, 0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Resources f3671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3672c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f3673d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public l f3674e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f3675f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f3676g;
    public boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f3677i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f3678j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3679k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public CharSequence f3681m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Drawable f3682n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f3683o;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public p f3690v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f3692x;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3680l = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f3684p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f3685q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f3686r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f3687s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ArrayList f3688t = new ArrayList();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final CopyOnWriteArrayList f3689u = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f3691w = false;

    public n(Context context) {
        boolean zN;
        boolean z5 = false;
        this.f3670a = context;
        Resources resources = context.getResources();
        this.f3671b = resources;
        this.f3675f = new ArrayList();
        this.f3676g = new ArrayList();
        this.h = true;
        this.f3677i = new ArrayList();
        this.f3678j = new ArrayList();
        this.f3679k = true;
        if (resources.getConfiguration().keyboard != 1) {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int i6 = l0.f3294a;
            if (Build.VERSION.SDK_INT >= 28) {
                zN = a0.a.n(viewConfiguration);
            } else {
                Resources resources2 = context.getResources();
                int identifier = resources2.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", "android");
                zN = identifier != 0 && resources2.getBoolean(identifier);
            }
            if (zN) {
                z5 = true;
            }
        }
        this.f3673d = z5;
    }

    public final p a(int i6, int i9, int i10, CharSequence charSequence) {
        int i11;
        int i12 = ((-65536) & i10) >> 16;
        if (i12 < 0 || i12 >= 6) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        int i13 = (f3669y[i12] << 16) | (65535 & i10);
        p pVar = new p(this, i6, i9, i10, i13, charSequence, this.f3680l);
        ArrayList arrayList = this.f3675f;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                i11 = 0;
                break;
            }
            if (((p) arrayList.get(size)).f3699d <= i13) {
                i11 = size + 1;
                break;
            }
            size--;
        }
        arrayList.add(i11, pVar);
        p(true);
        return pVar;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i6, int i9, int i10, ComponentName componentName, Intent[] intentArr, Intent intent, int i11, MenuItem[] menuItemArr) {
        int i12;
        PackageManager packageManager = this.f3670a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i11 & 1) == 0) {
            removeGroup(i6);
        }
        for (int i13 = 0; i13 < size; i13++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i13);
            int i14 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i14 < 0 ? intent : intentArr[i14]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            p pVarA = a(i6, i9, i10, resolveInfo.loadLabel(packageManager));
            pVarA.setIcon(resolveInfo.loadIcon(packageManager));
            pVarA.f3702g = intent2;
            if (menuItemArr != null && (i12 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i12] = pVarA;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public final void b(z zVar, Context context) {
        this.f3689u.add(new WeakReference(zVar));
        zVar.h(context, this);
        this.f3679k = true;
    }

    public final void c(boolean z5) {
        if (this.f3687s) {
            return;
        }
        this.f3687s = true;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f3689u;
        for (WeakReference weakReference : copyOnWriteArrayList) {
            z zVar = (z) weakReference.get();
            if (zVar == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                zVar.b(this, z5);
            }
        }
        this.f3687s = false;
    }

    @Override // android.view.Menu
    public final void clear() {
        p pVar = this.f3690v;
        if (pVar != null) {
            d(pVar);
        }
        this.f3675f.clear();
        p(true);
    }

    public final void clearHeader() {
        this.f3682n = null;
        this.f3681m = null;
        this.f3683o = null;
        p(false);
    }

    @Override // android.view.Menu
    public final void close() {
        c(true);
    }

    public boolean d(p pVar) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f3689u;
        boolean zK = false;
        if (!copyOnWriteArrayList.isEmpty() && this.f3690v == pVar) {
            w();
            for (WeakReference weakReference : copyOnWriteArrayList) {
                z zVar = (z) weakReference.get();
                if (zVar != null) {
                    zK = zVar.k(pVar);
                    if (zK) {
                        break;
                    }
                } else {
                    copyOnWriteArrayList.remove(weakReference);
                }
            }
            v();
            if (zK) {
                this.f3690v = null;
            }
        }
        return zK;
    }

    public boolean e(n nVar, MenuItem menuItem) {
        l lVar = this.f3674e;
        return lVar != null && lVar.d(nVar, menuItem);
    }

    public boolean f(p pVar) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f3689u;
        boolean zG = false;
        if (copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        w();
        for (WeakReference weakReference : copyOnWriteArrayList) {
            z zVar = (z) weakReference.get();
            if (zVar != null) {
                zG = zVar.g(pVar);
                if (zG) {
                    break;
                }
            } else {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
        v();
        if (zG) {
            this.f3690v = pVar;
        }
        return zG;
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i6) {
        MenuItem menuItemFindItem;
        ArrayList arrayList = this.f3675f;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            p pVar = (p) arrayList.get(i9);
            if (pVar.f3696a == i6) {
                return pVar;
            }
            if (pVar.hasSubMenu() && (menuItemFindItem = pVar.f3709o.findItem(i6)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    public final p g(int i6, KeyEvent keyEvent) {
        ArrayList arrayList = this.f3688t;
        arrayList.clear();
        h(arrayList, i6, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (p) arrayList.get(0);
        }
        boolean zN = n();
        for (int i9 = 0; i9 < size; i9++) {
            p pVar = (p) arrayList.get(i9);
            char c8 = zN ? pVar.f3704j : pVar.h;
            char[] cArr = keyData.meta;
            if ((c8 == cArr[0] && (metaState & 2) == 0) || ((c8 == cArr[2] && (metaState & 2) != 0) || (zN && c8 == '\b' && i6 == 67))) {
                return pVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i6) {
        return (MenuItem) this.f3675f.get(i6);
    }

    public final void h(List list, int i6, KeyEvent keyEvent) {
        boolean zN = n();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i6 == 67) {
            ArrayList arrayList = this.f3675f;
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                p pVar = (p) arrayList.get(i9);
                if (pVar.hasSubMenu()) {
                    pVar.f3709o.h(list, i6, keyEvent);
                }
                char c8 = zN ? pVar.f3704j : pVar.h;
                if ((modifiers & 69647) == ((zN ? pVar.f3705k : pVar.f3703i) & 69647) && c8 != 0) {
                    char[] cArr = keyData.meta;
                    if ((c8 == cArr[0] || c8 == cArr[2] || (zN && c8 == '\b' && i6 == 67)) && pVar.isEnabled()) {
                        list.add(pVar);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        if (this.f3692x) {
            return true;
        }
        ArrayList arrayList = this.f3675f;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            if (((p) arrayList.get(i6)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final void i() {
        ArrayList arrayListL = l();
        if (this.f3679k) {
            CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f3689u;
            boolean zI = false;
            for (WeakReference weakReference : copyOnWriteArrayList) {
                z zVar = (z) weakReference.get();
                if (zVar == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    zI |= zVar.i();
                }
            }
            ArrayList arrayList = this.f3677i;
            ArrayList arrayList2 = this.f3678j;
            if (zI) {
                arrayList.clear();
                arrayList2.clear();
                int size = arrayListL.size();
                for (int i6 = 0; i6 < size; i6++) {
                    p pVar = (p) arrayListL.get(i6);
                    if ((pVar.f3718x & 32) == 32) {
                        arrayList.add(pVar);
                    } else {
                        arrayList2.add(pVar);
                    }
                }
            } else {
                arrayList.clear();
                arrayList2.clear();
                arrayList2.addAll(l());
            }
            this.f3679k = false;
        }
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i6, KeyEvent keyEvent) {
        return g(i6, keyEvent) != null;
    }

    public String j() {
        return "android:menu:actionviewstates";
    }

    public final ArrayList l() {
        boolean z5 = this.h;
        ArrayList arrayList = this.f3676g;
        if (!z5) {
            return arrayList;
        }
        arrayList.clear();
        ArrayList arrayList2 = this.f3675f;
        int size = arrayList2.size();
        for (int i6 = 0; i6 < size; i6++) {
            p pVar = (p) arrayList2.get(i6);
            if (pVar.isVisible()) {
                arrayList.add(pVar);
            }
        }
        this.h = false;
        this.f3679k = true;
        return arrayList;
    }

    public boolean m() {
        return this.f3691w;
    }

    public boolean n() {
        return this.f3672c;
    }

    public boolean o() {
        return this.f3673d;
    }

    public final void p(boolean z5) {
        if (this.f3684p) {
            this.f3685q = true;
            if (z5) {
                this.f3686r = true;
                return;
            }
            return;
        }
        if (z5) {
            this.h = true;
            this.f3679k = true;
        }
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f3689u;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        w();
        for (WeakReference weakReference : copyOnWriteArrayList) {
            z zVar = (z) weakReference.get();
            if (zVar == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                zVar.d();
            }
        }
        v();
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i6, int i9) {
        return q(findItem(i6), null, i9);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i6, KeyEvent keyEvent, int i9) {
        p pVarG = g(i6, keyEvent);
        boolean zQ = pVarG != null ? q(pVarG, null, i9) : false;
        if ((i9 & 2) != 0) {
            c(true);
        }
        return zQ;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean q(android.view.MenuItem r7, l.z r8, int r9) {
        /*
            Method dump skipped, instruction units count: 211
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: l.n.q(android.view.MenuItem, l.z, int):boolean");
    }

    public final void r(z zVar) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f3689u;
        for (WeakReference weakReference : copyOnWriteArrayList) {
            z zVar2 = (z) weakReference.get();
            if (zVar2 == null || zVar2 == zVar) {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
    }

    @Override // android.view.Menu
    public final void removeGroup(int i6) {
        ArrayList arrayList = this.f3675f;
        int size = arrayList.size();
        int i9 = 0;
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                i10 = -1;
                break;
            } else if (((p) arrayList.get(i10)).f3697b == i6) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 >= 0) {
            int size2 = arrayList.size() - i10;
            while (true) {
                int i11 = i9 + 1;
                if (i9 >= size2 || ((p) arrayList.get(i10)).f3697b != i6) {
                    break;
                }
                if (i10 >= 0 && i10 < arrayList.size()) {
                    arrayList.remove(i10);
                }
                i9 = i11;
            }
            p(true);
        }
    }

    @Override // android.view.Menu
    public final void removeItem(int i6) {
        ArrayList arrayList = this.f3675f;
        int size = arrayList.size();
        int i9 = 0;
        while (true) {
            if (i9 >= size) {
                i9 = -1;
                break;
            } else if (((p) arrayList.get(i9)).f3696a == i6) {
                break;
            } else {
                i9++;
            }
        }
        if (i9 < 0 || i9 >= arrayList.size()) {
            return;
        }
        arrayList.remove(i9);
        p(true);
    }

    public final void s(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(j());
        int size = this.f3675f.size();
        for (int i6 = 0; i6 < size; i6++) {
            MenuItem item = getItem(i6);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((f0) item.getSubMenu()).s(bundle);
            }
        }
        int i9 = bundle.getInt("android:menu:expandedactionview");
        if (i9 <= 0 || (menuItemFindItem = findItem(i9)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i6, boolean z5, boolean z8) {
        ArrayList arrayList = this.f3675f;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            p pVar = (p) arrayList.get(i9);
            if (pVar.f3697b == i6) {
                pVar.f3718x = (pVar.f3718x & (-5)) | (z8 ? 4 : 0);
                pVar.setCheckable(z5);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z5) {
        this.f3691w = z5;
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i6, boolean z5) {
        ArrayList arrayList = this.f3675f;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            p pVar = (p) arrayList.get(i9);
            if (pVar.f3697b == i6) {
                pVar.setEnabled(z5);
            }
        }
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i6, boolean z5) {
        ArrayList arrayList = this.f3675f;
        int size = arrayList.size();
        boolean z8 = false;
        for (int i9 = 0; i9 < size; i9++) {
            p pVar = (p) arrayList.get(i9);
            if (pVar.f3697b == i6) {
                int i10 = pVar.f3718x;
                int i11 = (i10 & (-9)) | (z5 ? 0 : 8);
                pVar.f3718x = i11;
                if (i10 != i11) {
                    z8 = true;
                }
            }
        }
        if (z8) {
            p(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z5) {
        this.f3672c = z5;
        p(false);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f3675f.size();
    }

    public final void t(Bundle bundle) {
        int size = this.f3675f.size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i6 = 0; i6 < size; i6++) {
            MenuItem item = getItem(i6);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((f0) item.getSubMenu()).t(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(j(), sparseArray);
        }
    }

    public final void u(int i6, CharSequence charSequence, int i9, Drawable drawable, View view) {
        if (view != null) {
            this.f3683o = view;
            this.f3681m = null;
            this.f3682n = null;
        } else {
            if (i6 > 0) {
                this.f3681m = this.f3671b.getText(i6);
            } else if (charSequence != null) {
                this.f3681m = charSequence;
            }
            if (i9 > 0) {
                this.f3682n = this.f3670a.getDrawable(i9);
            } else if (drawable != null) {
                this.f3682n = drawable;
            }
            this.f3683o = null;
        }
        p(false);
    }

    public final void v() {
        this.f3684p = false;
        if (this.f3685q) {
            this.f3685q = false;
            p(this.f3686r);
        }
    }

    public final void w() {
        if (this.f3684p) {
            return;
        }
        this.f3684p = true;
        this.f3685q = false;
        this.f3686r = false;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i6) {
        return a(0, 0, 0, this.f3671b.getString(i6));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i6) {
        return addSubMenu(0, 0, 0, this.f3671b.getString(i6));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i6, int i9, int i10, CharSequence charSequence) {
        return a(i6, i9, i10, charSequence);
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i6, int i9, int i10, CharSequence charSequence) {
        p pVarA = a(i6, i9, i10, charSequence);
        f0 f0Var = new f0(this.f3670a, this, pVarA);
        pVarA.f3709o = f0Var;
        f0Var.setHeaderTitle(pVarA.f3700e);
        return f0Var;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i6, int i9, int i10, int i11) {
        return a(i6, i9, i10, this.f3671b.getString(i11));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i6, int i9, int i10, int i11) {
        return addSubMenu(i6, i9, i10, this.f3671b.getString(i11));
    }

    public n k() {
        return this;
    }
}
