package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.fragment.app.p;
import androidx.fragment.app.q0;
import com.YaarWin.app.R;
import g.m0;
import j0.k0;
import j0.l;
import j0.m;
import java.util.ArrayList;
import java.util.Iterator;
import l.n;
import m.a3;
import m.b3;
import m.c3;
import m.f1;
import m.h2;
import m.l3;
import m.t;
import m.w0;
import m.z2;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    public int A;
    public h2 B;
    public int C;
    public int D;
    public final int E;
    public CharSequence F;
    public CharSequence G;
    public ColorStateList H;
    public ColorStateList I;
    public boolean J;
    public boolean K;
    public final ArrayList L;
    public final ArrayList M;
    public final int[] N;
    public final l O;
    public ArrayList P;
    public b3 Q;
    public final o5.c R;
    public i S;
    public androidx.appcompat.widget.a T;
    public h U;
    public m0 V;
    public o5.c W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ActionMenuView f270a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f271a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public w0 f272b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public OnBackInvokedCallback f273b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public w0 f274c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public OnBackInvokedDispatcher f275c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public t f276d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f277d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AppCompatImageView f278e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final p f279e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Drawable f280f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final CharSequence f281g;
    public t h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public View f282i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Context f283j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f284k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f285l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f286m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f287v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f288w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f289x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f290y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f291z;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class a extends g.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f292b;

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f292b = 0;
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.toolbarStyle);
        this.E = 8388627;
        this.L = new ArrayList();
        this.M = new ArrayList();
        this.N = new int[2];
        this.O = new l(new z2(this, 1));
        this.P = new ArrayList();
        this.R = new o5.c(19, this);
        this.f279e0 = new p(7, this);
        Context context2 = getContext();
        int[] iArr = f.a.f2514x;
        c5.h hVarQ = c5.h.q(context2, attributeSet, iArr, R.attr.toolbarStyle);
        k0.g(this, context, iArr, attributeSet, (TypedArray) hVarQ.f1061c, R.attr.toolbarStyle, 0);
        TypedArray typedArray = (TypedArray) hVarQ.f1061c;
        this.f285l = typedArray.getResourceId(28, 0);
        this.f286m = typedArray.getResourceId(19, 0);
        this.E = typedArray.getInteger(0, 8388627);
        this.f287v = typedArray.getInteger(2, 48);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(22, 0);
        dimensionPixelOffset = typedArray.hasValue(27) ? typedArray.getDimensionPixelOffset(27, dimensionPixelOffset) : dimensionPixelOffset;
        this.A = dimensionPixelOffset;
        this.f291z = dimensionPixelOffset;
        this.f290y = dimensionPixelOffset;
        this.f289x = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(25, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.f289x = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(24, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.f290y = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(26, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.f291z = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(23, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.A = dimensionPixelOffset5;
        }
        this.f288w = typedArray.getDimensionPixelSize(13, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(9, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(5, Integer.MIN_VALUE);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(7, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, 0);
        d();
        h2 h2Var = this.B;
        h2Var.h = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            h2Var.f3986e = dimensionPixelSize;
            h2Var.f3982a = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            h2Var.f3987f = dimensionPixelSize2;
            h2Var.f3983b = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            h2Var.a(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.C = typedArray.getDimensionPixelOffset(10, Integer.MIN_VALUE);
        this.D = typedArray.getDimensionPixelOffset(6, Integer.MIN_VALUE);
        this.f280f = hVarQ.k(4);
        this.f281g = typedArray.getText(3);
        CharSequence text = typedArray.getText(21);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(18);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.f283j = getContext();
        setPopupTheme(typedArray.getResourceId(17, 0));
        Drawable drawableK = hVarQ.k(16);
        if (drawableK != null) {
            setNavigationIcon(drawableK);
        }
        CharSequence text3 = typedArray.getText(15);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable drawableK2 = hVarQ.k(11);
        if (drawableK2 != null) {
            setLogo(drawableK2);
        }
        CharSequence text4 = typedArray.getText(12);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(29)) {
            setTitleTextColor(hVarQ.j(29));
        }
        if (typedArray.hasValue(20)) {
            setSubtitleTextColor(hVarQ.j(20));
        }
        if (typedArray.hasValue(14)) {
            getMenuInflater().inflate(typedArray.getResourceId(14, 0), getMenu());
        }
        hVarQ.s();
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i6 = 0; i6 < menu.size(); i6++) {
            arrayList.add(menu.getItem(i6));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new k.i(getContext());
    }

    public static a h() {
        a aVar = new a(-2, -2);
        aVar.f292b = 0;
        aVar.f2638a = 8388627;
        return aVar;
    }

    public static a i(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof a) {
            a aVar = (a) layoutParams;
            a aVar2 = new a(aVar);
            aVar2.f292b = 0;
            aVar2.f292b = aVar.f292b;
            return aVar2;
        }
        if (layoutParams instanceof g.a) {
            a aVar3 = new a((g.a) layoutParams);
            aVar3.f292b = 0;
            return aVar3;
        }
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            a aVar4 = new a(layoutParams);
            aVar4.f292b = 0;
            return aVar4;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        a aVar5 = new a(marginLayoutParams);
        aVar5.f292b = 0;
        ((ViewGroup.MarginLayoutParams) aVar5).leftMargin = marginLayoutParams.leftMargin;
        ((ViewGroup.MarginLayoutParams) aVar5).topMargin = marginLayoutParams.topMargin;
        ((ViewGroup.MarginLayoutParams) aVar5).rightMargin = marginLayoutParams.rightMargin;
        ((ViewGroup.MarginLayoutParams) aVar5).bottomMargin = marginLayoutParams.bottomMargin;
        return aVar5;
    }

    public static int k(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
    }

    public static int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void a(ArrayList arrayList, int i6) {
        boolean z5 = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i6, getLayoutDirection());
        arrayList.clear();
        if (!z5) {
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = getChildAt(i9);
                a aVar = (a) childAt.getLayoutParams();
                if (aVar.f292b == 0 && t(childAt)) {
                    int i10 = aVar.f2638a;
                    int layoutDirection = getLayoutDirection();
                    int absoluteGravity2 = Gravity.getAbsoluteGravity(i10, layoutDirection) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = layoutDirection == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i11 = childCount - 1; i11 >= 0; i11--) {
            View childAt2 = getChildAt(i11);
            a aVar2 = (a) childAt2.getLayoutParams();
            if (aVar2.f292b == 0 && t(childAt2)) {
                int i12 = aVar2.f2638a;
                int layoutDirection2 = getLayoutDirection();
                int absoluteGravity3 = Gravity.getAbsoluteGravity(i12, layoutDirection2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = layoutDirection2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    public final void b(View view, boolean z5) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        a aVarH = layoutParams == null ? h() : !checkLayoutParams(layoutParams) ? i(layoutParams) : (a) layoutParams;
        aVarH.f292b = 1;
        if (!z5 || this.f282i == null) {
            addView(view, aVarH);
        } else {
            view.setLayoutParams(aVarH);
            this.M.add(view);
        }
    }

    public final void c() {
        if (this.h == null) {
            t tVar = new t(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.h = tVar;
            tVar.setImageDrawable(this.f280f);
            this.h.setContentDescription(this.f281g);
            a aVarH = h();
            aVarH.f2638a = (this.f287v & 112) | 8388611;
            aVarH.f292b = 2;
            this.h.setLayoutParams(aVarH);
            this.h.setOnClickListener(new g.d(2, this));
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof a);
    }

    public final void d() {
        if (this.B == null) {
            h2 h2Var = new h2();
            h2Var.f3982a = 0;
            h2Var.f3983b = 0;
            h2Var.f3984c = Integer.MIN_VALUE;
            h2Var.f3985d = Integer.MIN_VALUE;
            h2Var.f3986e = 0;
            h2Var.f3987f = 0;
            h2Var.f3988g = false;
            h2Var.h = false;
            this.B = h2Var;
        }
    }

    public final void e() {
        f();
        ActionMenuView actionMenuView = this.f270a;
        if (actionMenuView.f226x == null) {
            n nVar = (n) actionMenuView.getMenu();
            if (this.U == null) {
                this.U = new h(this);
            }
            this.f270a.setExpandedActionViewsExclusive(true);
            nVar.b(this.U, this.f283j);
            v();
        }
    }

    public final void f() {
        if (this.f270a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.f270a = actionMenuView;
            actionMenuView.setPopupTheme(this.f284k);
            this.f270a.setOnMenuItemClickListener(this.R);
            ActionMenuView actionMenuView2 = this.f270a;
            m0 m0Var = this.V;
            k1.h hVar = new k1.h(19, this);
            actionMenuView2.C = m0Var;
            actionMenuView2.D = hVar;
            a aVarH = h();
            aVarH.f2638a = (this.f287v & 112) | 8388613;
            this.f270a.setLayoutParams(aVarH);
            b(this.f270a, false);
        }
    }

    public final void g() {
        if (this.f276d == null) {
            this.f276d = new t(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            a aVarH = h();
            aVarH.f2638a = (this.f287v & 112) | 8388611;
            this.f276d.setLayoutParams(aVarH);
        }
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return i(layoutParams);
    }

    public CharSequence getCollapseContentDescription() {
        t tVar = this.h;
        if (tVar != null) {
            return tVar.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        t tVar = this.h;
        if (tVar != null) {
            return tVar.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        h2 h2Var = this.B;
        if (h2Var != null) {
            return h2Var.f3988g ? h2Var.f3982a : h2Var.f3983b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i6 = this.D;
        return i6 != Integer.MIN_VALUE ? i6 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        h2 h2Var = this.B;
        if (h2Var != null) {
            return h2Var.f3982a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        h2 h2Var = this.B;
        if (h2Var != null) {
            return h2Var.f3983b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        h2 h2Var = this.B;
        if (h2Var != null) {
            return h2Var.f3988g ? h2Var.f3983b : h2Var.f3982a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i6 = this.C;
        return i6 != Integer.MIN_VALUE ? i6 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        n nVar;
        ActionMenuView actionMenuView = this.f270a;
        return (actionMenuView == null || (nVar = actionMenuView.f226x) == null || !nVar.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.D, 0));
    }

    public int getCurrentContentInsetLeft() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.C, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        AppCompatImageView appCompatImageView = this.f278e;
        if (appCompatImageView != null) {
            return appCompatImageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        AppCompatImageView appCompatImageView = this.f278e;
        if (appCompatImageView != null) {
            return appCompatImageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.f270a.getMenu();
    }

    public View getNavButtonView() {
        return this.f276d;
    }

    public CharSequence getNavigationContentDescription() {
        t tVar = this.f276d;
        if (tVar != null) {
            return tVar.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        t tVar = this.f276d;
        if (tVar != null) {
            return tVar.getDrawable();
        }
        return null;
    }

    public androidx.appcompat.widget.a getOuterActionMenuPresenter() {
        return this.T;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.f270a.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.f283j;
    }

    public int getPopupTheme() {
        return this.f284k;
    }

    public CharSequence getSubtitle() {
        return this.G;
    }

    public final TextView getSubtitleTextView() {
        return this.f274c;
    }

    public CharSequence getTitle() {
        return this.F;
    }

    public int getTitleMarginBottom() {
        return this.A;
    }

    public int getTitleMarginEnd() {
        return this.f290y;
    }

    public int getTitleMarginStart() {
        return this.f289x;
    }

    public int getTitleMarginTop() {
        return this.f291z;
    }

    public final TextView getTitleTextView() {
        return this.f272b;
    }

    public f1 getWrapper() {
        if (this.S == null) {
            this.S = new i(this, true);
        }
        return this.S;
    }

    public final int j(View view, int i6) {
        a aVar = (a) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i9 = i6 > 0 ? (measuredHeight - i6) / 2 : 0;
        int i10 = aVar.f2638a & 112;
        if (i10 != 16 && i10 != 48 && i10 != 80) {
            i10 = this.E & 112;
        }
        if (i10 == 48) {
            return getPaddingTop() - i9;
        }
        if (i10 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) aVar).bottomMargin) - i9;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i11 = ((ViewGroup.MarginLayoutParams) aVar).topMargin;
        if (iMax < i11) {
            iMax = i11;
        } else {
            int i12 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i13 = ((ViewGroup.MarginLayoutParams) aVar).bottomMargin;
            if (i12 < i13) {
                iMax = Math.max(0, iMax - (i13 - i12));
            }
        }
        return paddingTop + iMax;
    }

    public final void m() {
        ArrayList arrayList = this.P;
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            getMenu().removeItem(((MenuItem) obj).getItemId());
        }
        getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        getMenuInflater();
        Iterator it = this.O.f3292b.iterator();
        while (it.hasNext()) {
            ((q0) ((m) it.next())).f603a.k();
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.P = currentMenuItems2;
    }

    public final boolean n(View view) {
        return view.getParent() == this || this.M.contains(view);
    }

    public final boolean o() {
        androidx.appcompat.widget.a aVar;
        ActionMenuView actionMenuView = this.f270a;
        return (actionMenuView == null || (aVar = actionMenuView.B) == null || !aVar.e()) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        v();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f279e0);
        v();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.K = false;
        }
        if (!this.K) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.K = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.K = false;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x028f A[LOOP:0: B:102:0x028d->B:103:0x028f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02a7 A[LOOP:1: B:105:0x02a5->B:106:0x02a7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02c7 A[LOOP:2: B:108:0x02c5->B:109:0x02c7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x031a A[LOOP:3: B:117:0x0318->B:118:0x031a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0218  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instruction units count: 811
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public final void onMeasure(int i6, int i9) {
        char c8;
        Object[] objArr;
        int iK;
        int iMax;
        int iCombineMeasuredStates;
        int iK2;
        int iL;
        int iCombineMeasuredStates2;
        int iMax2;
        boolean z5 = l3.f4025a;
        int i10 = 0;
        if (getLayoutDirection() == 1) {
            objArr = true;
            c8 = 0;
        } else {
            c8 = 1;
            objArr = false;
        }
        if (t(this.f276d)) {
            s(this.f276d, i6, 0, i9, this.f288w);
            iK = k(this.f276d) + this.f276d.getMeasuredWidth();
            iMax = Math.max(0, l(this.f276d) + this.f276d.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.f276d.getMeasuredState());
        } else {
            iK = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (t(this.h)) {
            s(this.h, i6, 0, i9, this.f288w);
            iK = k(this.h) + this.h.getMeasuredWidth();
            iMax = Math.max(iMax, l(this.h) + this.h.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = Math.max(currentContentInsetStart, iK);
        int iMax4 = Math.max(0, currentContentInsetStart - iK);
        Object[] objArr2 = objArr;
        int[] iArr = this.N;
        iArr[objArr2 == true ? 1 : 0] = iMax4;
        if (t(this.f270a)) {
            s(this.f270a, i6, iMax3, i9, this.f288w);
            iK2 = k(this.f270a) + this.f270a.getMeasuredWidth();
            iMax = Math.max(iMax, l(this.f270a) + this.f270a.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f270a.getMeasuredState());
        } else {
            iK2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax5 = iMax3 + Math.max(currentContentInsetEnd, iK2);
        iArr[c8] = Math.max(0, currentContentInsetEnd - iK2);
        if (t(this.f282i)) {
            iMax5 += r(this.f282i, i6, iMax5, i9, 0, iArr);
            iMax = Math.max(iMax, l(this.f282i) + this.f282i.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f282i.getMeasuredState());
        }
        if (t(this.f278e)) {
            iMax5 += r(this.f278e, i6, iMax5, i9, 0, iArr);
            iMax = Math.max(iMax, l(this.f278e) + this.f278e.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f278e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (((a) childAt.getLayoutParams()).f292b == 0 && t(childAt)) {
                iMax5 += r(childAt, i6, iMax5, i9, 0, iArr);
                int iMax6 = Math.max(iMax, l(childAt) + childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
                iMax = iMax6;
            } else {
                iMax5 = iMax5;
            }
        }
        int i12 = iMax5;
        int i13 = this.f291z + this.A;
        int i14 = this.f289x + this.f290y;
        if (t(this.f272b)) {
            r(this.f272b, i6, i12 + i14, i9, i13, iArr);
            int iK3 = k(this.f272b) + this.f272b.getMeasuredWidth();
            iL = l(this.f272b) + this.f272b.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f272b.getMeasuredState());
            iMax2 = iK3;
        } else {
            iL = 0;
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
        }
        if (t(this.f274c)) {
            iMax2 = Math.max(iMax2, r(this.f274c, i6, i12 + i14, i9, i13 + iL, iArr));
            iL += l(this.f274c) + this.f274c.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.f274c.getMeasuredState());
        }
        int iMax7 = Math.max(iMax, iL);
        int paddingRight = getPaddingRight() + getPaddingLeft() + i12 + iMax2;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + iMax7;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i6, (-16777216) & iCombineMeasuredStates2);
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i9, iCombineMeasuredStates2 << 16);
        if (!this.f271a0) {
            i10 = iResolveSizeAndState2;
            break;
        }
        int childCount2 = getChildCount();
        for (int i15 = 0; i15 < childCount2; i15++) {
            View childAt2 = getChildAt(i15);
            if (t(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                i10 = iResolveSizeAndState2;
                break;
            }
        }
        setMeasuredDimension(iResolveSizeAndState, i10);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof c3)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        c3 c3Var = (c3) parcelable;
        super.onRestoreInstanceState(c3Var.f4395a);
        ActionMenuView actionMenuView = this.f270a;
        n nVar = actionMenuView != null ? actionMenuView.f226x : null;
        int i6 = c3Var.f3937c;
        if (i6 != 0 && this.U != null && nVar != null && (menuItemFindItem = nVar.findItem(i6)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (c3Var.f3938d) {
            p pVar = this.f279e0;
            removeCallbacks(pVar);
            post(pVar);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i6) {
        super.onRtlPropertiesChanged(i6);
        d();
        h2 h2Var = this.B;
        boolean z5 = i6 == 1;
        if (z5 == h2Var.f3988g) {
            return;
        }
        h2Var.f3988g = z5;
        if (!h2Var.h) {
            h2Var.f3982a = h2Var.f3986e;
            h2Var.f3983b = h2Var.f3987f;
            return;
        }
        if (z5) {
            int i9 = h2Var.f3985d;
            if (i9 == Integer.MIN_VALUE) {
                i9 = h2Var.f3986e;
            }
            h2Var.f3982a = i9;
            int i10 = h2Var.f3984c;
            if (i10 == Integer.MIN_VALUE) {
                i10 = h2Var.f3987f;
            }
            h2Var.f3983b = i10;
            return;
        }
        int i11 = h2Var.f3984c;
        if (i11 == Integer.MIN_VALUE) {
            i11 = h2Var.f3986e;
        }
        h2Var.f3982a = i11;
        int i12 = h2Var.f3985d;
        if (i12 == Integer.MIN_VALUE) {
            i12 = h2Var.f3987f;
        }
        h2Var.f3983b = i12;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        l.p pVar;
        c3 c3Var = new c3(super.onSaveInstanceState());
        h hVar = this.U;
        if (hVar != null && (pVar = hVar.f325b) != null) {
            c3Var.f3937c = pVar.f3696a;
        }
        c3Var.f3938d = o();
        return c3Var;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.J = false;
        }
        if (!this.J) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.J = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.J = false;
        return true;
    }

    public final int p(View view, int i6, int i9, int[] iArr) {
        a aVar = (a) view.getLayoutParams();
        int i10 = ((ViewGroup.MarginLayoutParams) aVar).leftMargin - iArr[0];
        int iMax = Math.max(0, i10) + i6;
        iArr[0] = Math.max(0, -i10);
        int iJ = j(view, i9);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iJ, iMax + measuredWidth, view.getMeasuredHeight() + iJ);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) aVar).rightMargin + iMax;
    }

    public final int q(View view, int i6, int i9, int[] iArr) {
        a aVar = (a) view.getLayoutParams();
        int i10 = ((ViewGroup.MarginLayoutParams) aVar).rightMargin - iArr[1];
        int iMax = i6 - Math.max(0, i10);
        iArr[1] = Math.max(0, -i10);
        int iJ = j(view, i9);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iJ, iMax, view.getMeasuredHeight() + iJ);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) aVar).leftMargin);
    }

    public final int r(View view, int i6, int i9, int i10, int i11, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i12 = marginLayoutParams.leftMargin - iArr[0];
        int i13 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i13) + Math.max(0, i12);
        iArr[0] = Math.max(0, -i12);
        iArr[1] = Math.max(0, -i13);
        view.measure(ViewGroup.getChildMeasureSpec(i6, getPaddingRight() + getPaddingLeft() + iMax + i9, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i10, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i11, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    public final void s(View view, int i6, int i9, int i10, int i11) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i6, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i9, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i10, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i11 >= 0) {
            if (mode != 0) {
                i11 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i11);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i11, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public void setBackInvokedCallbackEnabled(boolean z5) {
        if (this.f277d0 != z5) {
            this.f277d0 = z5;
            v();
        }
    }

    public void setCollapseContentDescription(int i6) {
        setCollapseContentDescription(i6 != 0 ? getContext().getText(i6) : null);
    }

    public void setCollapseIcon(int i6) {
        setCollapseIcon(z7.l.j(getContext(), i6));
    }

    public void setCollapsible(boolean z5) {
        this.f271a0 = z5;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i6) {
        if (i6 < 0) {
            i6 = Integer.MIN_VALUE;
        }
        if (i6 != this.D) {
            this.D = i6;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i6) {
        if (i6 < 0) {
            i6 = Integer.MIN_VALUE;
        }
        if (i6 != this.C) {
            this.C = i6;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i6) {
        setLogo(z7.l.j(getContext(), i6));
    }

    public void setLogoDescription(int i6) {
        setLogoDescription(getContext().getText(i6));
    }

    public void setNavigationContentDescription(int i6) {
        setNavigationContentDescription(i6 != 0 ? getContext().getText(i6) : null);
    }

    public void setNavigationIcon(int i6) {
        setNavigationIcon(z7.l.j(getContext(), i6));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.f276d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(b3 b3Var) {
        this.Q = b3Var;
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.f270a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i6) {
        if (this.f284k != i6) {
            this.f284k = i6;
            if (i6 == 0) {
                this.f283j = getContext();
            } else {
                this.f283j = new ContextThemeWrapper(getContext(), i6);
            }
        }
    }

    public void setSubtitle(int i6) {
        setSubtitle(getContext().getText(i6));
    }

    public void setSubtitleTextColor(int i6) {
        setSubtitleTextColor(ColorStateList.valueOf(i6));
    }

    public void setTitle(int i6) {
        setTitle(getContext().getText(i6));
    }

    public void setTitleMarginBottom(int i6) {
        this.A = i6;
        requestLayout();
    }

    public void setTitleMarginEnd(int i6) {
        this.f290y = i6;
        requestLayout();
    }

    public void setTitleMarginStart(int i6) {
        this.f289x = i6;
        requestLayout();
    }

    public void setTitleMarginTop(int i6) {
        this.f291z = i6;
        requestLayout();
    }

    public void setTitleTextColor(int i6) {
        setTitleTextColor(ColorStateList.valueOf(i6));
    }

    public final boolean t(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public final boolean u() {
        androidx.appcompat.widget.a aVar;
        ActionMenuView actionMenuView = this.f270a;
        return (actionMenuView == null || (aVar = actionMenuView.B) == null || !aVar.l()) ? false : true;
    }

    public final void v() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcherA = a3.a(this);
            h hVar = this.U;
            boolean z5 = (hVar == null || hVar.f325b == null || onBackInvokedDispatcherA == null || !isAttachedToWindow() || !this.f277d0) ? false : true;
            if (z5 && this.f275c0 == null) {
                if (this.f273b0 == null) {
                    this.f273b0 = a3.b(new z2(this, 0));
                }
                a3.c(onBackInvokedDispatcherA, this.f273b0);
                this.f275c0 = onBackInvokedDispatcherA;
                return;
            }
            if (z5 || (onBackInvokedDispatcher = this.f275c0) == null) {
                return;
            }
            a3.d(onBackInvokedDispatcher, this.f273b0);
            this.f275c0 = null;
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        t tVar = this.h;
        if (tVar != null) {
            tVar.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.h.setImageDrawable(drawable);
        } else {
            t tVar = this.h;
            if (tVar != null) {
                tVar.setImageDrawable(this.f280f);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.f278e == null) {
                this.f278e = new AppCompatImageView(getContext(), null);
            }
            if (!n(this.f278e)) {
                b(this.f278e, true);
            }
        } else {
            AppCompatImageView appCompatImageView = this.f278e;
            if (appCompatImageView != null && n(appCompatImageView)) {
                removeView(this.f278e);
                this.M.remove(this.f278e);
            }
        }
        AppCompatImageView appCompatImageView2 = this.f278e;
        if (appCompatImageView2 != null) {
            appCompatImageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.f278e == null) {
            this.f278e = new AppCompatImageView(getContext(), null);
        }
        AppCompatImageView appCompatImageView = this.f278e;
        if (appCompatImageView != null) {
            appCompatImageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        t tVar = this.f276d;
        if (tVar != null) {
            tVar.setContentDescription(charSequence);
            f4.f.e(this.f276d, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!n(this.f276d)) {
                b(this.f276d, true);
            }
        } else {
            t tVar = this.f276d;
            if (tVar != null && n(tVar)) {
                removeView(this.f276d);
                this.M.remove(this.f276d);
            }
        }
        t tVar2 = this.f276d;
        if (tVar2 != null) {
            tVar2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            w0 w0Var = this.f274c;
            if (w0Var != null && n(w0Var)) {
                removeView(this.f274c);
                this.M.remove(this.f274c);
            }
        } else {
            if (this.f274c == null) {
                Context context = getContext();
                w0 w0Var2 = new w0(context, null);
                this.f274c = w0Var2;
                w0Var2.setSingleLine();
                this.f274c.setEllipsize(TextUtils.TruncateAt.END);
                int i6 = this.f286m;
                if (i6 != 0) {
                    this.f274c.setTextAppearance(context, i6);
                }
                ColorStateList colorStateList = this.I;
                if (colorStateList != null) {
                    this.f274c.setTextColor(colorStateList);
                }
            }
            if (!n(this.f274c)) {
                b(this.f274c, true);
            }
        }
        w0 w0Var3 = this.f274c;
        if (w0Var3 != null) {
            w0Var3.setText(charSequence);
        }
        this.G = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.I = colorStateList;
        w0 w0Var = this.f274c;
        if (w0Var != null) {
            w0Var.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            w0 w0Var = this.f272b;
            if (w0Var != null && n(w0Var)) {
                removeView(this.f272b);
                this.M.remove(this.f272b);
            }
        } else {
            if (this.f272b == null) {
                Context context = getContext();
                w0 w0Var2 = new w0(context, null);
                this.f272b = w0Var2;
                w0Var2.setSingleLine();
                this.f272b.setEllipsize(TextUtils.TruncateAt.END);
                int i6 = this.f285l;
                if (i6 != 0) {
                    this.f272b.setTextAppearance(context, i6);
                }
                ColorStateList colorStateList = this.H;
                if (colorStateList != null) {
                    this.f272b.setTextColor(colorStateList);
                }
            }
            if (!n(this.f272b)) {
                b(this.f272b, true);
            }
        }
        w0 w0Var3 = this.f272b;
        if (w0Var3 != null) {
            w0Var3.setText(charSequence);
        }
        this.F = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.H = colorStateList;
        w0 w0Var = this.f272b;
        if (w0Var != null) {
            w0Var.setTextColor(colorStateList);
        }
    }
}
