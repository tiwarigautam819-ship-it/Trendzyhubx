package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.YaarWin.app.R;
import j0.k0;
import m.d3;
import m.f1;
import m.w0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements f1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Toolbar f327a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f329c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Drawable f330d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Drawable f331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Drawable f332f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f333g;
    public CharSequence h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CharSequence f334i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CharSequence f335j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Window.Callback f336k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f337l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public a f338m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f339n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Drawable f340o;

    public i(Toolbar toolbar, boolean z5) {
        Drawable drawable;
        this.f339n = 0;
        this.f327a = toolbar;
        this.h = toolbar.getTitle();
        this.f334i = toolbar.getSubtitle();
        this.f333g = this.h != null;
        this.f332f = toolbar.getNavigationIcon();
        c5.h hVarQ = c5.h.q(toolbar.getContext(), null, f.a.f2492a, R.attr.actionBarStyle);
        TypedArray typedArray = (TypedArray) hVarQ.f1061c;
        int i6 = 15;
        this.f340o = hVarQ.k(15);
        if (z5) {
            CharSequence text = typedArray.getText(27);
            if (!TextUtils.isEmpty(text)) {
                this.f333g = true;
                this.h = text;
                if ((this.f328b & 8) != 0) {
                    toolbar.setTitle(text);
                    if (this.f333g) {
                        k0.i(toolbar.getRootView(), text);
                    }
                }
            }
            CharSequence text2 = typedArray.getText(25);
            if (!TextUtils.isEmpty(text2)) {
                this.f334i = text2;
                if ((this.f328b & 8) != 0) {
                    toolbar.setSubtitle(text2);
                }
            }
            Drawable drawableK = hVarQ.k(20);
            if (drawableK != null) {
                this.f331e = drawableK;
                c();
            }
            Drawable drawableK2 = hVarQ.k(17);
            if (drawableK2 != null) {
                this.f330d = drawableK2;
                c();
            }
            if (this.f332f == null && (drawable = this.f340o) != null) {
                this.f332f = drawable;
                if ((this.f328b & 4) != 0) {
                    toolbar.setNavigationIcon(drawable);
                } else {
                    toolbar.setNavigationIcon((Drawable) null);
                }
            }
            a(typedArray.getInt(10, 0));
            int resourceId = typedArray.getResourceId(9, 0);
            if (resourceId != 0) {
                View viewInflate = LayoutInflater.from(toolbar.getContext()).inflate(resourceId, (ViewGroup) toolbar, false);
                View view = this.f329c;
                if (view != null && (this.f328b & 16) != 0) {
                    toolbar.removeView(view);
                }
                this.f329c = viewInflate;
                if (viewInflate != null && (this.f328b & 16) != 0) {
                    toolbar.addView(viewInflate);
                }
                a(this.f328b | 16);
            }
            int layoutDimension = typedArray.getLayoutDimension(13, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = toolbar.getLayoutParams();
                layoutParams.height = layoutDimension;
                toolbar.setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = typedArray.getDimensionPixelOffset(7, -1);
            int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(3, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                int iMax = Math.max(dimensionPixelOffset, 0);
                int iMax2 = Math.max(dimensionPixelOffset2, 0);
                toolbar.d();
                toolbar.B.a(iMax, iMax2);
            }
            int resourceId2 = typedArray.getResourceId(28, 0);
            if (resourceId2 != 0) {
                Context context = toolbar.getContext();
                toolbar.f285l = resourceId2;
                w0 w0Var = toolbar.f272b;
                if (w0Var != null) {
                    w0Var.setTextAppearance(context, resourceId2);
                }
            }
            int resourceId3 = typedArray.getResourceId(26, 0);
            if (resourceId3 != 0) {
                Context context2 = toolbar.getContext();
                toolbar.f286m = resourceId3;
                w0 w0Var2 = toolbar.f274c;
                if (w0Var2 != null) {
                    w0Var2.setTextAppearance(context2, resourceId3);
                }
            }
            int resourceId4 = typedArray.getResourceId(22, 0);
            if (resourceId4 != 0) {
                toolbar.setPopupTheme(resourceId4);
            }
        } else {
            if (toolbar.getNavigationIcon() != null) {
                this.f340o = toolbar.getNavigationIcon();
            } else {
                i6 = 11;
            }
            this.f328b = i6;
        }
        hVarQ.s();
        if (R.string.abc_action_bar_up_description != this.f339n) {
            this.f339n = R.string.abc_action_bar_up_description;
            if (TextUtils.isEmpty(toolbar.getNavigationContentDescription())) {
                int i9 = this.f339n;
                this.f335j = i9 != 0 ? toolbar.getContext().getString(i9) : null;
                b();
            }
        }
        this.f335j = toolbar.getNavigationContentDescription();
        toolbar.setNavigationOnClickListener(new d3(this));
    }

    public final void a(int i6) {
        View view;
        int i9 = this.f328b ^ i6;
        this.f328b = i6;
        if (i9 != 0) {
            int i10 = i9 & 4;
            Toolbar toolbar = this.f327a;
            if (i10 != 0) {
                if ((i6 & 4) != 0) {
                    b();
                }
                if ((this.f328b & 4) != 0) {
                    Drawable drawable = this.f332f;
                    if (drawable == null) {
                        drawable = this.f340o;
                    }
                    toolbar.setNavigationIcon(drawable);
                } else {
                    toolbar.setNavigationIcon((Drawable) null);
                }
            }
            if ((i9 & 3) != 0) {
                c();
            }
            if ((i9 & 8) != 0) {
                if ((i6 & 8) != 0) {
                    toolbar.setTitle(this.h);
                    toolbar.setSubtitle(this.f334i);
                } else {
                    toolbar.setTitle((CharSequence) null);
                    toolbar.setSubtitle((CharSequence) null);
                }
            }
            if ((i9 & 16) == 0 || (view = this.f329c) == null) {
                return;
            }
            if ((i6 & 16) != 0) {
                toolbar.addView(view);
            } else {
                toolbar.removeView(view);
            }
        }
    }

    public final void b() {
        if ((this.f328b & 4) != 0) {
            boolean zIsEmpty = TextUtils.isEmpty(this.f335j);
            Toolbar toolbar = this.f327a;
            if (zIsEmpty) {
                toolbar.setNavigationContentDescription(this.f339n);
            } else {
                toolbar.setNavigationContentDescription(this.f335j);
            }
        }
    }

    public final void c() {
        Drawable drawable;
        int i6 = this.f328b;
        if ((i6 & 2) == 0) {
            drawable = null;
        } else if ((i6 & 1) == 0 || (drawable = this.f331e) == null) {
            drawable = this.f330d;
        }
        this.f327a.setLogo(drawable);
    }
}
