package m;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import com.YaarWin.app.R;
import com.engagelab.privates.common.constants.MTCommonConstants;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g3 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static g3 f3968k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static g3 f3969l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f3970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CharSequence f3971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f3 f3973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final f3 f3974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3975f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3976g;
    public h3 h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3977i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3978j;

    /* JADX WARN: Type inference failed for: r0v0, types: [m.f3] */
    /* JADX WARN: Type inference failed for: r0v1, types: [m.f3] */
    public g3(View view, CharSequence charSequence) {
        final int i6 = 0;
        this.f3973d = new Runnable(this) { // from class: m.f3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g3 f3961b;

            {
                this.f3961b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i6) {
                    case 0:
                        this.f3961b.c(false);
                        break;
                    default:
                        this.f3961b.a();
                        break;
                }
            }
        };
        final int i9 = 1;
        this.f3974e = new Runnable(this) { // from class: m.f3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g3 f3961b;

            {
                this.f3961b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i9) {
                    case 0:
                        this.f3961b.c(false);
                        break;
                    default:
                        this.f3961b.a();
                        break;
                }
            }
        };
        this.f3970a = view;
        this.f3971b = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        int i10 = j0.l0.f3294a;
        this.f3972c = Build.VERSION.SDK_INT >= 28 ? a0.a.i(viewConfiguration) : viewConfiguration.getScaledTouchSlop() / 2;
        this.f3978j = true;
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void b(g3 g3Var) {
        g3 g3Var2 = f3968k;
        if (g3Var2 != null) {
            g3Var2.f3970a.removeCallbacks(g3Var2.f3973d);
        }
        f3968k = g3Var;
        if (g3Var != null) {
            g3Var.f3970a.postDelayed(g3Var.f3973d, ViewConfiguration.getLongPressTimeout());
        }
    }

    public final void a() {
        g3 g3Var = f3969l;
        View view = this.f3970a;
        if (g3Var == this) {
            f3969l = null;
            h3 h3Var = this.h;
            if (h3Var != null) {
                View view2 = (View) h3Var.f3990b;
                if (view2.getParent() != null) {
                    ((WindowManager) ((Context) h3Var.f3989a).getSystemService("window")).removeView(view2);
                }
                this.h = null;
                this.f3978j = true;
                view.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f3968k == this) {
            b(null);
        }
        view.removeCallbacks(this.f3974e);
    }

    public final void c(boolean z5) {
        int height;
        int i6;
        int i9;
        boolean z8;
        int i10;
        int i11;
        long longPressTimeout;
        long j3;
        long j8;
        View view = this.f3970a;
        if (view.isAttachedToWindow()) {
            b(null);
            g3 g3Var = f3969l;
            if (g3Var != null) {
                g3Var.a();
            }
            f3969l = this;
            this.f3977i = z5;
            Context context = view.getContext();
            h3 h3Var = new h3();
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            h3Var.f3992d = layoutParams;
            h3Var.f3993e = new Rect();
            h3Var.f3994f = new int[2];
            h3Var.f3995g = new int[2];
            h3Var.f3989a = context;
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.abc_tooltip, (ViewGroup) null);
            h3Var.f3990b = viewInflate;
            h3Var.f3991c = (TextView) viewInflate.findViewById(R.id.message);
            layoutParams.setTitle(h3.class.getSimpleName());
            layoutParams.packageName = context.getPackageName();
            layoutParams.type = MTCommonConstants.MainWhat.ON_SERVICE_DISCONNECTED;
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.format = -3;
            layoutParams.windowAnimations = R.style.Animation_AppCompat_Tooltip;
            layoutParams.flags = 24;
            View view2 = (View) h3Var.f3990b;
            Context context2 = (Context) h3Var.f3989a;
            this.h = h3Var;
            int width = this.f3975f;
            int i12 = this.f3976g;
            boolean z9 = this.f3977i;
            WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) h3Var.f3992d;
            if (view2.getParent() != null && view2.getParent() != null) {
                ((WindowManager) context2.getSystemService("window")).removeView(view2);
            }
            ((TextView) h3Var.f3991c).setText(this.f3971b);
            int[] iArr = (int[]) h3Var.f3995g;
            int[] iArr2 = (int[]) h3Var.f3994f;
            Rect rect = (Rect) h3Var.f3993e;
            layoutParams2.token = view.getApplicationWindowToken();
            int dimensionPixelOffset = context2.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
            if (view.getWidth() < dimensionPixelOffset) {
                width = view.getWidth() / 2;
            }
            if (view.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = context2.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
                height = i12 + dimensionPixelOffset2;
                i6 = i12 - dimensionPixelOffset2;
            } else {
                height = view.getHeight();
                i6 = 0;
            }
            layoutParams2.gravity = 49;
            int dimensionPixelOffset3 = context2.getResources().getDimensionPixelOffset(z9 ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
            View rootView = view.getRootView();
            ViewGroup.LayoutParams layoutParams3 = rootView.getLayoutParams();
            int i13 = width;
            if (!(layoutParams3 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams3).type != 2) {
                Context context3 = view.getContext();
                while (true) {
                    if (!(context3 instanceof ContextWrapper)) {
                        break;
                    }
                    if (context3 instanceof Activity) {
                        rootView = ((Activity) context3).getWindow().getDecorView();
                        break;
                    }
                    context3 = ((ContextWrapper) context3).getBaseContext();
                }
            }
            if (rootView == null) {
                Log.e("TooltipPopup", "Cannot find app view");
                i11 = 1;
            } else {
                rootView.getWindowVisibleDisplayFrame(rect);
                if (rect.left >= 0 || rect.top >= 0) {
                    i9 = i6;
                    z8 = z9;
                    i10 = 0;
                    i11 = 1;
                } else {
                    Resources resources = context2.getResources();
                    i11 = 1;
                    i9 = i6;
                    z8 = z9;
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    i10 = 0;
                    rect.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                rootView.getLocationOnScreen(iArr);
                view.getLocationOnScreen(iArr2);
                int i14 = iArr2[i10] - iArr[i10];
                iArr2[i10] = i14;
                iArr2[i11] = iArr2[i11] - iArr[i11];
                layoutParams2.x = (i14 + i13) - (rootView.getWidth() / 2);
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i10, i10);
                view2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredHeight = view2.getMeasuredHeight();
                int i15 = iArr2[i11];
                int i16 = ((i15 + i9) - dimensionPixelOffset3) - measuredHeight;
                int i17 = i15 + height + dimensionPixelOffset3;
                if (z8) {
                    if (i16 >= 0) {
                        layoutParams2.y = i16;
                    } else {
                        layoutParams2.y = i17;
                    }
                } else if (measuredHeight + i17 <= rect.height()) {
                    layoutParams2.y = i17;
                } else {
                    layoutParams2.y = i16;
                }
            }
            ((WindowManager) context2.getSystemService("window")).addView(view2, layoutParams2);
            view.addOnAttachStateChangeListener(this);
            if (this.f3977i) {
                j8 = 2500;
            } else {
                WeakHashMap weakHashMap = j0.k0.f3286a;
                if ((view.getWindowSystemUiVisibility() & 1) == i11) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j3 = 3000;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j3 = 15000;
                }
                j8 = j3 - longPressTimeout;
            }
            f3 f3Var = this.f3974e;
            view.removeCallbacks(f3Var);
            view.postDelayed(f3Var, j8);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0066  */
    @Override // android.view.View.OnHoverListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onHover(android.view.View r4, android.view.MotionEvent r5) {
        /*
            r3 = this;
            m.h3 r4 = r3.h
            r0 = 0
            if (r4 == 0) goto La
            boolean r4 = r3.f3977i
            if (r4 == 0) goto La
            goto L6f
        La:
            android.view.View r4 = r3.f3970a
            android.content.Context r1 = r4.getContext()
            java.lang.String r2 = "accessibility"
            java.lang.Object r1 = r1.getSystemService(r2)
            android.view.accessibility.AccessibilityManager r1 = (android.view.accessibility.AccessibilityManager) r1
            boolean r2 = r1.isEnabled()
            if (r2 == 0) goto L25
            boolean r1 = r1.isTouchExplorationEnabled()
            if (r1 == 0) goto L25
            goto L6f
        L25:
            int r1 = r5.getAction()
            r2 = 7
            if (r1 == r2) goto L38
            r4 = 10
            if (r1 == r4) goto L31
            goto L6f
        L31:
            r4 = 1
            r3.f3978j = r4
            r3.a()
            return r0
        L38:
            boolean r4 = r4.isEnabled()
            if (r4 == 0) goto L6f
            m.h3 r4 = r3.h
            if (r4 != 0) goto L6f
            float r4 = r5.getX()
            int r4 = (int) r4
            float r5 = r5.getY()
            int r5 = (int) r5
            boolean r1 = r3.f3978j
            if (r1 != 0) goto L66
            int r1 = r3.f3975f
            int r1 = r4 - r1
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.f3972c
            if (r1 > r2) goto L66
            int r1 = r3.f3976g
            int r1 = r5 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r1 <= r2) goto L6f
        L66:
            r3.f3975f = r4
            r3.f3976g = r5
            r3.f3978j = r0
            b(r3)
        L6f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: m.g3.onHover(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f3975f = view.getWidth() / 2;
        this.f3976g = view.getHeight() / 2;
        c(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        a();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
