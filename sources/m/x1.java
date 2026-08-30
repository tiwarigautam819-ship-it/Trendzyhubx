package m;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import com.YaarWin.app.R;
import com.engagelab.privates.common.constants.MTCommonConstants;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class x1 implements l.d0 {
    public static final Method H;
    public static final Method I;
    public static final Method J;
    public final v1 A;
    public final t1 B;
    public final Handler C;
    public final Rect D;
    public Rect E;
    public boolean F;
    public final v G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4154a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ListAdapter f4155b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public m1 f4156c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4157d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4158e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4159f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4160g;
    public final int h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4161i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4162j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4163k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4164l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f4165m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public u1 f4166v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public View f4167w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public AdapterView.OnItemClickListener f4168x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final t1 f4169y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final w1 f4170z;

    static {
        int i6 = Build.VERSION.SDK_INT;
        Class cls = Boolean.TYPE;
        if (i6 <= 28) {
            try {
                H = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", cls);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                J = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                I = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, cls);
            } catch (NoSuchMethodException unused3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public x1(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listPopupWindowStyle, 0);
    }

    @Override // l.d0
    public final boolean a() {
        return this.G.isShowing();
    }

    public final int b() {
        return this.f4159f;
    }

    @Override // l.d0
    public final void c() {
        int i6;
        int iA;
        int paddingBottom;
        m1 m1Var;
        m1 m1Var2 = this.f4156c;
        Context context = this.f4154a;
        v vVar = this.G;
        if (m1Var2 == null) {
            m1 m1VarQ = q(context, !this.F);
            this.f4156c = m1VarQ;
            m1VarQ.setAdapter(this.f4155b);
            this.f4156c.setOnItemClickListener(this.f4168x);
            this.f4156c.setFocusable(true);
            this.f4156c.setFocusableInTouchMode(true);
            this.f4156c.setOnItemSelectedListener(new q1(0, this));
            this.f4156c.setOnScrollListener(this.A);
            vVar.setContentView(this.f4156c);
        }
        Drawable background = vVar.getBackground();
        Rect rect = this.D;
        if (background != null) {
            background.getPadding(rect);
            int i9 = rect.top;
            i6 = rect.bottom + i9;
            if (!this.f4161i) {
                this.f4160g = -i9;
            }
        } else {
            rect.setEmpty();
            i6 = 0;
        }
        boolean z5 = vVar.getInputMethodMode() == 2;
        View view = this.f4167w;
        int i10 = this.f4160g;
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = I;
            if (method != null) {
                try {
                    iA = ((Integer) method.invoke(vVar, view, Integer.valueOf(i10), Boolean.valueOf(z5))).intValue();
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
                    iA = vVar.getMaxAvailableHeight(view, i10);
                }
            } else {
                iA = vVar.getMaxAvailableHeight(view, i10);
            }
        } else {
            iA = r1.a(vVar, view, i10, z5);
        }
        int i11 = this.f4157d;
        if (i11 == -1) {
            paddingBottom = iA + i6;
        } else {
            int i12 = this.f4158e;
            int iA2 = this.f4156c.a(i12 != -2 ? i12 != -1 ? View.MeasureSpec.makeMeasureSpec(i12, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE), iA);
            paddingBottom = iA2 + (iA2 > 0 ? this.f4156c.getPaddingBottom() + this.f4156c.getPaddingTop() + i6 : 0);
        }
        boolean z8 = vVar.getInputMethodMode() == 2;
        vVar.setWindowLayoutType(this.h);
        if (vVar.isShowing()) {
            if (this.f4167w.isAttachedToWindow()) {
                int width = this.f4158e;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = this.f4167w.getWidth();
                }
                if (i11 == -1) {
                    i11 = z8 ? paddingBottom : -1;
                    if (z8) {
                        vVar.setWidth(this.f4158e == -1 ? -1 : 0);
                        vVar.setHeight(0);
                    } else {
                        vVar.setWidth(this.f4158e == -1 ? -1 : 0);
                        vVar.setHeight(-1);
                    }
                } else if (i11 == -2) {
                    i11 = paddingBottom;
                }
                vVar.setOutsideTouchable(true);
                View view2 = this.f4167w;
                int i13 = width;
                int i14 = this.f4159f;
                int i15 = this.f4160g;
                int i16 = i13 < 0 ? -1 : i13;
                if (i11 < 0) {
                    i11 = -1;
                }
                vVar.update(view2, i14, i15, i16, i11);
                return;
            }
            return;
        }
        int width2 = this.f4158e;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = this.f4167w.getWidth();
        }
        if (i11 == -1) {
            i11 = -1;
        } else if (i11 == -2) {
            i11 = paddingBottom;
        }
        vVar.setWidth(width2);
        vVar.setHeight(i11);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = H;
            if (method2 != null) {
                try {
                    method2.invoke(vVar, Boolean.TRUE);
                } catch (Exception unused2) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            s1.b(vVar, true);
        }
        vVar.setOutsideTouchable(true);
        vVar.setTouchInterceptor(this.f4170z);
        if (this.f4163k) {
            vVar.setOverlapAnchor(this.f4162j);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method3 = J;
            if (method3 != null) {
                try {
                    method3.invoke(vVar, this.E);
                } catch (Exception e9) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e9);
                }
            }
        } else {
            s1.a(vVar, this.E);
        }
        vVar.showAsDropDown(this.f4167w, this.f4159f, this.f4160g, this.f4164l);
        this.f4156c.setSelection(-1);
        if ((!this.F || this.f4156c.isInTouchMode()) && (m1Var = this.f4156c) != null) {
            m1Var.setListSelectionHidden(true);
            m1Var.requestLayout();
        }
        if (this.F) {
            return;
        }
        this.C.post(this.B);
    }

    public final Drawable d() {
        return this.G.getBackground();
    }

    @Override // l.d0
    public final void dismiss() {
        v vVar = this.G;
        vVar.dismiss();
        vVar.setContentView(null);
        this.f4156c = null;
        this.C.removeCallbacks(this.f4169y);
    }

    @Override // l.d0
    public final m1 e() {
        return this.f4156c;
    }

    public final void g(Drawable drawable) {
        this.G.setBackgroundDrawable(drawable);
    }

    public final void h(int i6) {
        this.f4160g = i6;
        this.f4161i = true;
    }

    public final void j(int i6) {
        this.f4159f = i6;
    }

    public final int m() {
        if (this.f4161i) {
            return this.f4160g;
        }
        return 0;
    }

    public void p(ListAdapter listAdapter) {
        u1 u1Var = this.f4166v;
        if (u1Var == null) {
            this.f4166v = new u1(0, this);
        } else {
            ListAdapter listAdapter2 = this.f4155b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(u1Var);
            }
        }
        this.f4155b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f4166v);
        }
        m1 m1Var = this.f4156c;
        if (m1Var != null) {
            m1Var.setAdapter(this.f4155b);
        }
    }

    public m1 q(Context context, boolean z5) {
        return new m1(context, z5);
    }

    public final void r(int i6) {
        Drawable background = this.G.getBackground();
        if (background == null) {
            this.f4158e = i6;
            return;
        }
        Rect rect = this.D;
        background.getPadding(rect);
        this.f4158e = rect.left + rect.right + i6;
    }

    public x1(Context context, AttributeSet attributeSet, int i6, int i9) {
        int resourceId;
        this.f4157d = -2;
        this.f4158e = -2;
        this.h = MTCommonConstants.MainWhat.ON_SERVICE_DISCONNECTED;
        this.f4164l = 0;
        this.f4165m = Integer.MAX_VALUE;
        this.f4169y = new t1(this, 1);
        this.f4170z = new w1(this);
        this.A = new v1(this);
        this.B = new t1(this, 0);
        this.D = new Rect();
        this.f4154a = context;
        this.C = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.a.f2505o, i6, 0);
        this.f4159f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.f4160g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f4161i = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        v vVar = new v(context, attributeSet, i6, 0);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f.a.f2509s, i6, 0);
        if (typedArrayObtainStyledAttributes2.hasValue(2)) {
            vVar.setOverlapAnchor(typedArrayObtainStyledAttributes2.getBoolean(2, false));
        }
        vVar.setBackgroundDrawable((!typedArrayObtainStyledAttributes2.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes2.getDrawable(0) : z7.l.j(context, resourceId));
        typedArrayObtainStyledAttributes2.recycle();
        this.G = vVar;
        vVar.setInputMethodMode(1);
    }
}
