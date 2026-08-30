package g;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.ContentFrameLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;
import m.e1;
import m.l3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f0 extends s implements l.l, LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final s.j f2679p0 = new s.j(0);

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static final int[] f2680q0 = {R.attr.windowBackground};

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static final boolean f2681r0 = !"robolectric".equals(Build.FINGERPRINT);
    public u A;
    public v B;
    public k.b C;
    public ActionBarContextView D;
    public PopupWindow E;
    public t F;
    public boolean H;
    public ViewGroup I;
    public TextView J;
    public View K;
    public boolean L;
    public boolean M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public e0[] T;
    public e0 U;
    public boolean V;
    public boolean W;
    public boolean X;
    public boolean Y;
    public Configuration Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int f2682a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f2683b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f2684c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f2685d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public b0 f2686e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public b0 f2687f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f2688g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f2689h0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f2691j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f2692j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Context f2693k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public Rect f2694k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Window f2695l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public Rect f2696l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public a0 f2697m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public i0 f2698m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public OnBackInvokedDispatcher f2699n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public OnBackInvokedCallback f2700o0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Object f2701v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public b f2702w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public k.i f2703x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public CharSequence f2704y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public e1 f2705z;
    public j0.o0 G = null;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final t f2690i0 = new t(this, 0);

    public f0(Context context, Window window, n nVar, Object obj) {
        m mVar = null;
        this.f2682a0 = -100;
        this.f2693k = context;
        this.f2701v = nVar;
        this.f2691j = obj;
        if (obj instanceof Dialog) {
            while (true) {
                if (context != null) {
                    if (!(context instanceof m)) {
                        if (!(context instanceof ContextWrapper)) {
                            break;
                        } else {
                            context = ((ContextWrapper) context).getBaseContext();
                        }
                    } else {
                        mVar = (m) context;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (mVar != null) {
                this.f2682a0 = ((f0) mVar.getDelegate()).f2682a0;
            }
        }
        if (this.f2682a0 == -100) {
            String name = this.f2691j.getClass().getName();
            s.j jVar = f2679p0;
            Integer num = (Integer) jVar.get(name);
            if (num != null) {
                this.f2682a0 = num.intValue();
                jVar.remove(this.f2691j.getClass().getName());
            }
        }
        if (window != null) {
            p(window);
        }
        m.p.c();
    }

    public static f0.f A(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? y.b(configuration) : f0.f.b(x.b(configuration.locale));
    }

    public static f0.f q(Context context) {
        f0.f fVar;
        f0.f fVarB;
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 33 || (fVar = s.f2780c) == null) {
            return null;
        }
        f0.h hVar = fVar.f2520a;
        f0.f fVarA = A(context.getApplicationContext().getResources().getConfiguration());
        int i9 = 0;
        if (i6 < 24) {
            fVarB = hVar.isEmpty() ? f0.f.f2519b : f0.f.b(x.b(hVar.get(0)));
        } else if (hVar.isEmpty()) {
            fVarB = f0.f.f2519b;
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (i9 < fVarA.f2520a.size() + hVar.size()) {
                Locale locale = i9 < hVar.size() ? hVar.get(i9) : fVarA.f2520a.get(i9 - hVar.size());
                if (locale != null) {
                    linkedHashSet.add(locale);
                }
                i9++;
            }
            fVarB = f0.f.a((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
        }
        return fVarB.f2520a.isEmpty() ? fVarA : fVarB;
    }

    public static Configuration u(Context context, int i6, f0.f fVar, Configuration configuration, boolean z5) {
        int i9 = i6 != 1 ? i6 != 2 ? z5 ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i9 | (configuration2.uiMode & (-49));
        if (fVar != null) {
            f0.h hVar = fVar.f2520a;
            if (Build.VERSION.SDK_INT >= 24) {
                y.d(configuration2, fVar);
                return configuration2;
            }
            configuration2.setLocale(hVar.get(0));
            configuration2.setLayoutDirection(hVar.get(0));
        }
        return configuration2;
    }

    public final e0 B(int i6) {
        e0[] e0VarArr = this.T;
        if (e0VarArr == null || e0VarArr.length <= i6) {
            e0[] e0VarArr2 = new e0[i6 + 1];
            if (e0VarArr != null) {
                System.arraycopy(e0VarArr, 0, e0VarArr2, 0, e0VarArr.length);
            }
            this.T = e0VarArr2;
            e0VarArr = e0VarArr2;
        }
        e0 e0Var = e0VarArr[i6];
        if (e0Var != null) {
            return e0Var;
        }
        e0 e0Var2 = new e0();
        e0Var2.f2655a = i6;
        e0Var2.f2667n = false;
        e0VarArr[i6] = e0Var2;
        return e0Var2;
    }

    public final void C() {
        x();
        if (this.N && this.f2702w == null) {
            Object obj = this.f2691j;
            if (obj instanceof Activity) {
                this.f2702w = new s0((Activity) obj, this.O);
            } else if (obj instanceof Dialog) {
                this.f2702w = new s0((Dialog) obj);
            }
            b bVar = this.f2702w;
            if (bVar != null) {
                bVar.l(this.f2692j0);
            }
        }
    }

    public final void D(int i6) {
        this.f2689h0 = (1 << i6) | this.f2689h0;
        if (this.f2688g0) {
            return;
        }
        View decorView = this.f2695l.getDecorView();
        WeakHashMap weakHashMap = j0.k0.f3286a;
        decorView.postOnAnimation(this.f2690i0);
        this.f2688g0 = true;
    }

    public final int E(Context context, int i6) {
        if (i6 != -100) {
            if (i6 != -1) {
                if (i6 != 0) {
                    if (i6 != 1 && i6 != 2) {
                        if (i6 != 3) {
                            throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                        }
                        if (this.f2687f0 == null) {
                            this.f2687f0 = new b0(this, context);
                        }
                        return this.f2687f0.e();
                    }
                } else if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return z(context).e();
                }
            }
            return i6;
        }
        return -1;
    }

    public final boolean F() {
        boolean z5 = this.V;
        this.V = false;
        e0 e0VarB = B(0);
        if (!e0VarB.f2666m) {
            k.b bVar = this.C;
            if (bVar != null) {
                bVar.a();
                return true;
            }
            C();
            b bVar2 = this.f2702w;
            if (bVar2 == null || !bVar2.b()) {
                return false;
            }
        } else if (!z5) {
            t(e0VarB, true);
            return true;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x0175, code lost:
    
        if (r2.f3662f.getCount() > 0) goto L88;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:105:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void G(g.e0 r18, android.view.KeyEvent r19) {
        /*
            Method dump skipped, instruction units count: 473
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g.f0.G(g.e0, android.view.KeyEvent):void");
    }

    public final boolean H(e0 e0Var, int i6, KeyEvent keyEvent) {
        l.n nVar;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((e0Var.f2664k || I(e0Var, keyEvent)) && (nVar = e0Var.h) != null) {
            return nVar.performShortcut(i6, keyEvent, 1);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean I(g.e0 r13, android.view.KeyEvent r14) {
        /*
            Method dump skipped, instruction units count: 368
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g.f0.I(g.e0, android.view.KeyEvent):boolean");
    }

    public final void J() {
        if (this.H) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void K() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z5 = false;
            if (this.f2699n0 != null && (B(0).f2666m || this.C != null)) {
                z5 = true;
            }
            if (z5 && this.f2700o0 == null) {
                this.f2700o0 = z.b(this.f2699n0, this);
            } else {
                if (z5 || (onBackInvokedCallback = this.f2700o0) == null) {
                    return;
                }
                z.c(this.f2699n0, onBackInvokedCallback);
                this.f2700o0 = null;
            }
        }
    }

    @Override // g.s
    public final void a() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f2693k);
        if (layoutInflaterFrom.getFactory() == null) {
            layoutInflaterFrom.setFactory2(this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof f0) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // g.s
    public final void b() {
        if (this.f2702w != null) {
            C();
            if (this.f2702w.f()) {
                return;
            }
            D(0);
        }
    }

    @Override // l.l
    public final boolean d(l.n nVar, MenuItem menuItem) {
        e0 e0Var;
        Window.Callback callback = this.f2695l.getCallback();
        if (callback != null && !this.Y) {
            l.n nVarK = nVar.k();
            e0[] e0VarArr = this.T;
            int length = e0VarArr != null ? e0VarArr.length : 0;
            int i6 = 0;
            while (true) {
                if (i6 < length) {
                    e0Var = e0VarArr[i6];
                    if (e0Var != null && e0Var.h == nVarK) {
                        break;
                    }
                    i6++;
                } else {
                    e0Var = null;
                    break;
                }
            }
            if (e0Var != null) {
                return callback.onMenuItemSelected(e0Var.f2655a, menuItem);
            }
        }
        return false;
    }

    @Override // g.s
    public final void e() throws IllegalAccessException {
        String strC;
        this.W = true;
        o(false, true);
        y();
        Object obj = this.f2691j;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    strC = y.e.c(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e9) {
                    throw new IllegalArgumentException(e9);
                }
            } catch (IllegalArgumentException unused) {
                strC = null;
            }
            if (strC != null) {
                b bVar = this.f2702w;
                if (bVar == null) {
                    this.f2692j0 = true;
                } else {
                    bVar.l(true);
                }
            }
            synchronized (s.h) {
                s.g(this);
                s.f2784g.add(new WeakReference(this));
            }
        }
        this.Z = new Configuration(this.f2693k.getResources().getConfiguration());
        this.X = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    @Override // g.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void f() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f2691j
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L11
            java.lang.Object r0 = g.s.h
            monitor-enter(r0)
            g.s.g(r3)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            goto L11
        Le:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            throw r1
        L11:
            boolean r0 = r3.f2688g0
            if (r0 == 0) goto L20
            android.view.Window r0 = r3.f2695l
            android.view.View r0 = r0.getDecorView()
            g.t r1 = r3.f2690i0
            r0.removeCallbacks(r1)
        L20:
            r0 = 1
            r3.Y = r0
            int r0 = r3.f2682a0
            r1 = -100
            if (r0 == r1) goto L4d
            java.lang.Object r0 = r3.f2691j
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L4d
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L4d
            s.j r0 = g.f0.f2679p0
            java.lang.Object r1 = r3.f2691j
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.f2682a0
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L5c
        L4d:
            s.j r0 = g.f0.f2679p0
            java.lang.Object r1 = r3.f2691j
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L5c:
            g.b r0 = r3.f2702w
            if (r0 == 0) goto L63
            r0.h()
        L63:
            g.b0 r0 = r3.f2686e0
            if (r0 == 0) goto L6a
            r0.c()
        L6a:
            g.b0 r0 = r3.f2687f0
            if (r0 == 0) goto L71
            r0.c()
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: g.f0.f():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (r6.e() != false) goto L20;
     */
    @Override // l.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void h(l.n r6) {
        /*
            Method dump skipped, instruction units count: 225
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g.f0.h(l.n):void");
    }

    @Override // g.s
    public final boolean i(int i6) {
        if (i6 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i6 = 108;
        } else if (i6 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i6 = 109;
        }
        if (this.R && i6 == 108) {
            return false;
        }
        if (this.N && i6 == 1) {
            this.N = false;
        }
        if (i6 == 1) {
            J();
            this.R = true;
            return true;
        }
        if (i6 == 2) {
            J();
            this.L = true;
            return true;
        }
        if (i6 == 5) {
            J();
            this.M = true;
            return true;
        }
        if (i6 == 10) {
            J();
            this.P = true;
            return true;
        }
        if (i6 == 108) {
            J();
            this.N = true;
            return true;
        }
        if (i6 != 109) {
            return this.f2695l.requestFeature(i6);
        }
        J();
        this.O = true;
        return true;
    }

    @Override // g.s
    public final void j(int i6) {
        x();
        ViewGroup viewGroup = (ViewGroup) this.I.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f2693k).inflate(i6, viewGroup);
        this.f2697m.a(this.f2695l.getCallback());
    }

    @Override // g.s
    public final void k(View view) {
        x();
        ViewGroup viewGroup = (ViewGroup) this.I.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f2697m.a(this.f2695l.getCallback());
    }

    @Override // g.s
    public final void l(View view, ViewGroup.LayoutParams layoutParams) {
        x();
        ViewGroup viewGroup = (ViewGroup) this.I.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f2697m.a(this.f2695l.getCallback());
    }

    @Override // g.s
    public final void m(CharSequence charSequence) {
        this.f2704y = charSequence;
        e1 e1Var = this.f2705z;
        if (e1Var != null) {
            e1Var.setWindowTitle(charSequence);
            return;
        }
        b bVar = this.f2702w;
        if (bVar != null) {
            bVar.n(charSequence);
            return;
        }
        TextView textView = this.J;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01a2  */
    /* JADX WARN: Type inference failed for: r1v0, types: [g.n, java.lang.Object] */
    @Override // g.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final k.b n(k.a r9) {
        /*
            Method dump skipped, instruction units count: 442
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g.f0.n(k.a):k.b");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0101  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean o(boolean r18, boolean r19) throws java.lang.IllegalAccessException {
        /*
            Method dump skipped, instruction units count: 659
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g.f0.o(boolean, boolean):boolean");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:117:0x01e5
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1182)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    @Override // android.view.LayoutInflater.Factory2
    public final android.view.View onCreateView(android.view.View r9, java.lang.String r10, android.content.Context r11, android.util.AttributeSet r12) {
        /*
            Method dump skipped, instruction units count: 728
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g.f0.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void p(android.view.Window r8) {
        /*
            r7 = this;
            java.lang.String r0 = "AppCompat has already installed itself into the Window"
            android.view.Window r1 = r7.f2695l
            if (r1 != 0) goto L80
            android.view.Window$Callback r1 = r8.getCallback()
            boolean r2 = r1 instanceof g.a0
            if (r2 != 0) goto L7a
            g.a0 r0 = new g.a0
            r0.<init>(r7, r1)
            r7.f2697m = r0
            r8.setCallback(r0)
            android.content.Context r0 = r7.f2693k
            int[] r1 = g.f0.f2680q0
            r2 = 0
            android.content.res.TypedArray r1 = r0.obtainStyledAttributes(r2, r1)
            r3 = 0
            boolean r4 = r1.hasValue(r3)
            if (r4 == 0) goto L3f
            int r3 = r1.getResourceId(r3, r3)
            if (r3 == 0) goto L3f
            m.p r4 = m.p.a()
            monitor-enter(r4)
            m.f2 r5 = r4.f4061a     // Catch: java.lang.Throwable -> L3c
            r6 = 1
            android.graphics.drawable.Drawable r0 = r5.g(r0, r3, r6)     // Catch: java.lang.Throwable -> L3c
            monitor-exit(r4)
            goto L40
        L3c:
            r8 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L3c
            throw r8
        L3f:
            r0 = r2
        L40:
            if (r0 == 0) goto L45
            r8.setBackgroundDrawable(r0)
        L45:
            r1.recycle()
            r7.f2695l = r8
            int r8 = android.os.Build.VERSION.SDK_INT
            r0 = 33
            if (r8 < r0) goto L79
            android.window.OnBackInvokedDispatcher r8 = r7.f2699n0
            if (r8 != 0) goto L79
            java.lang.Object r0 = r7.f2691j
            if (r8 == 0) goto L61
            android.window.OnBackInvokedCallback r1 = r7.f2700o0
            if (r1 == 0) goto L61
            g.z.c(r8, r1)
            r7.f2700o0 = r2
        L61:
            boolean r8 = r0 instanceof android.app.Activity
            if (r8 == 0) goto L74
            android.app.Activity r0 = (android.app.Activity) r0
            android.view.Window r8 = r0.getWindow()
            if (r8 == 0) goto L74
            android.window.OnBackInvokedDispatcher r8 = g.z.a(r0)
            r7.f2699n0 = r8
            goto L76
        L74:
            r7.f2699n0 = r2
        L76:
            r7.K()
        L79:
            return
        L7a:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>(r0)
            throw r8
        L80:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: g.f0.p(android.view.Window):void");
    }

    public final void r(int i6, e0 e0Var, l.n nVar) {
        if (nVar == null) {
            if (e0Var == null && i6 >= 0) {
                e0[] e0VarArr = this.T;
                if (i6 < e0VarArr.length) {
                    e0Var = e0VarArr[i6];
                }
            }
            if (e0Var != null) {
                nVar = e0Var.h;
            }
        }
        if ((e0Var == null || e0Var.f2666m) && !this.Y) {
            a0 a0Var = this.f2697m;
            Window.Callback callback = this.f2695l.getCallback();
            a0Var.getClass();
            try {
                a0Var.f2643e = true;
                callback.onPanelClosed(i6, nVar);
            } finally {
                a0Var.f2643e = false;
            }
        }
    }

    public final void s(l.n nVar) {
        androidx.appcompat.widget.a aVar;
        if (this.S) {
            return;
        }
        this.S = true;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f2705z;
        actionBarOverlayLayout.k();
        ActionMenuView actionMenuView = ((androidx.appcompat.widget.i) actionBarOverlayLayout.f213e).f327a.f270a;
        if (actionMenuView != null && (aVar = actionMenuView.B) != null) {
            aVar.c();
            m.e eVar = aVar.B;
            if (eVar != null && eVar.b()) {
                eVar.f3739i.dismiss();
            }
        }
        Window.Callback callback = this.f2695l.getCallback();
        if (callback != null && !this.Y) {
            callback.onPanelClosed(108, nVar);
        }
        this.S = false;
    }

    public final void t(e0 e0Var, boolean z5) {
        d0 d0Var;
        e1 e1Var;
        if (z5 && e0Var.f2655a == 0 && (e1Var = this.f2705z) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) e1Var;
            actionBarOverlayLayout.k();
            if (((androidx.appcompat.widget.i) actionBarOverlayLayout.f213e).f327a.o()) {
                s(e0Var.h);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.f2693k.getSystemService("window");
        if (windowManager != null && e0Var.f2666m && (d0Var = e0Var.f2659e) != null) {
            windowManager.removeView(d0Var);
            if (z5) {
                r(e0Var.f2655a, e0Var, null);
            }
        }
        e0Var.f2664k = false;
        e0Var.f2665l = false;
        e0Var.f2666m = false;
        e0Var.f2660f = null;
        e0Var.f2667n = true;
        if (this.U == e0Var) {
            this.U = null;
        }
        if (e0Var.f2655a == 0) {
            K();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x011b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean v(android.view.KeyEvent r7) {
        /*
            Method dump skipped, instruction units count: 317
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g.f0.v(android.view.KeyEvent):boolean");
    }

    public final void w(int i6) {
        e0 e0VarB = B(i6);
        if (e0VarB.h != null) {
            Bundle bundle = new Bundle();
            e0VarB.h.t(bundle);
            if (bundle.size() > 0) {
                e0VarB.f2669p = bundle;
            }
            e0VarB.h.w();
            e0VarB.h.clear();
        }
        e0VarB.f2668o = true;
        e0VarB.f2667n = true;
        if ((i6 == 108 || i6 == 0) && this.f2705z != null) {
            e0 e0VarB2 = B(0);
            e0VarB2.f2664k = false;
            I(e0VarB2, null);
        }
    }

    public final void x() {
        ViewGroup viewGroup;
        if (this.H) {
            return;
        }
        Context context = this.f2693k;
        int[] iArr = f.a.f2500j;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!typedArrayObtainStyledAttributes.hasValue(117)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(126, false)) {
            i(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(117, false)) {
            i(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(118, false)) {
            i(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(119, false)) {
            i(10);
        }
        this.Q = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        y();
        this.f2695l.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        if (this.R) {
            viewGroup = this.P ? (ViewGroup) layoutInflaterFrom.inflate(com.YaarWin.app.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(com.YaarWin.app.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.Q) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(com.YaarWin.app.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.O = false;
            this.N = false;
        } else if (this.N) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(com.YaarWin.app.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new k.d(context, typedValue.resourceId) : context).inflate(com.YaarWin.app.R.layout.abc_screen_toolbar, (ViewGroup) null);
            e1 e1Var = (e1) viewGroup.findViewById(com.YaarWin.app.R.id.decor_content_parent);
            this.f2705z = e1Var;
            e1Var.setWindowCallback(this.f2695l.getCallback());
            if (this.O) {
                ((ActionBarOverlayLayout) this.f2705z).j(109);
            }
            if (this.L) {
                ((ActionBarOverlayLayout) this.f2705z).j(2);
            }
            if (this.M) {
                ((ActionBarOverlayLayout) this.f2705z).j(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.N + ", windowActionBarOverlay: " + this.O + ", android:windowIsFloating: " + this.Q + ", windowActionModeOverlay: " + this.P + ", windowNoTitle: " + this.R + " }");
        }
        u uVar = new u(this);
        WeakHashMap weakHashMap = j0.k0.f3286a;
        j0.d0.i(viewGroup, uVar);
        if (this.f2705z == null) {
            this.J = (TextView) viewGroup.findViewById(com.YaarWin.app.R.id.title);
        }
        boolean z5 = l3.f4025a;
        try {
            Method method = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", null);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(viewGroup, null);
        } catch (IllegalAccessException e9) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e9);
        } catch (NoSuchMethodException unused) {
            Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
        } catch (InvocationTargetException e10) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e10);
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(com.YaarWin.app.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f2695l.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f2695l.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new v(this));
        this.I = viewGroup;
        Object obj = this.f2691j;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.f2704y;
        if (!TextUtils.isEmpty(title)) {
            e1 e1Var2 = this.f2705z;
            if (e1Var2 != null) {
                e1Var2.setWindowTitle(title);
            } else {
                b bVar = this.f2702w;
                if (bVar != null) {
                    bVar.n(title);
                } else {
                    TextView textView = this.J;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.I.findViewById(R.id.content);
        View decorView = this.f2695l.getDecorView();
        contentFrameLayout2.f248g.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        if (contentFrameLayout2.isLaidOut()) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
        typedArrayObtainStyledAttributes2.getValue(124, contentFrameLayout2.getMinWidthMajor());
        typedArrayObtainStyledAttributes2.getValue(125, contentFrameLayout2.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes2.hasValue(122)) {
            typedArrayObtainStyledAttributes2.getValue(122, contentFrameLayout2.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(123)) {
            typedArrayObtainStyledAttributes2.getValue(123, contentFrameLayout2.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(120)) {
            typedArrayObtainStyledAttributes2.getValue(120, contentFrameLayout2.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(121)) {
            typedArrayObtainStyledAttributes2.getValue(121, contentFrameLayout2.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.H = true;
        e0 e0VarB = B(0);
        if (this.Y || e0VarB.h != null) {
            return;
        }
        D(108);
    }

    public final void y() {
        if (this.f2695l == null) {
            Object obj = this.f2691j;
            if (obj instanceof Activity) {
                p(((Activity) obj).getWindow());
            }
        }
        if (this.f2695l == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public final c0 z(Context context) {
        if (this.f2686e0 == null) {
            if (c5.h.f1058e == null) {
                Context applicationContext = context.getApplicationContext();
                c5.h.f1058e = new c5.h(applicationContext, (LocationManager) applicationContext.getSystemService(FirebaseAnalytics.Param.LOCATION));
            }
            this.f2686e0 = new b0(this, c5.h.f1058e);
        }
        return this.f2686e0;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
