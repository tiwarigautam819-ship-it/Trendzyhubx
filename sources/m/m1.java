package m;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.YaarWin.app.R;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class m1 extends ListView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f4032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4034c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4035d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4036e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4037f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public k1 f4038g;
    public boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f4039i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4040j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public m0.d f4041k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public androidx.fragment.app.p f4042l;

    public m1(Context context, boolean z5) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.f4032a = new Rect();
        this.f4033b = 0;
        this.f4034c = 0;
        this.f4035d = 0;
        this.f4036e = 0;
        this.f4039i = z5;
        setCacheColorHint(0);
    }

    public final int a(int i6, int i9) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int measuredHeight = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i10 = 0;
        View view = null;
        for (int i11 = 0; i11 < count; i11++) {
            int itemViewType = adapter.getItemViewType(i11);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = adapter.getView(i11, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i12 = layoutParams.height;
            view.measure(i6, i12 > 0 ? View.MeasureSpec.makeMeasureSpec(i12, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i11 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i9) {
                return i9;
            }
        }
        return measuredHeight;
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean b(android.view.MotionEvent r18, int r19) {
        /*
            Method dump skipped, instruction units count: 396
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: m.m1.b(android.view.MotionEvent, int):boolean");
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Drawable selector;
        Rect rect = this.f4032a;
        if (!rect.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(rect);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        if (this.f4042l != null) {
            return;
        }
        super.drawableStateChanged();
        k1 k1Var = this.f4038g;
        if (k1Var != null) {
            k1Var.f4010b = true;
        }
        Drawable selector = getSelector();
        if (selector != null && this.f4040j && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean hasFocus() {
        return this.f4039i || super.hasFocus();
    }

    @Override // android.view.View
    public final boolean hasWindowFocus() {
        return this.f4039i || super.hasWindowFocus();
    }

    @Override // android.view.View
    public final boolean isFocused() {
        return this.f4039i || super.isFocused();
    }

    @Override // android.view.View
    public final boolean isInTouchMode() {
        return (this.f4039i && this.h) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f4042l = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int i6 = Build.VERSION.SDK_INT;
        if (i6 < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f4042l == null) {
            androidx.fragment.app.p pVar = new androidx.fragment.app.p(6, this);
            this.f4042l = pVar;
            post(pVar);
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked != 9 && actionMasked != 7) {
            setSelection(-1);
            return zOnHoverEvent;
        }
        int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        if (iPointToPosition != -1 && iPointToPosition != getSelectedItemPosition()) {
            View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
            if (childAt.isEnabled()) {
                requestFocus();
                if (i6 < 30 || !i1.f3999d) {
                    setSelectionFromTop(iPointToPosition, childAt.getTop() - getTop());
                } else {
                    try {
                        i1.f3996a.invoke(this, Integer.valueOf(iPointToPosition), childAt, Boolean.FALSE, -1, -1);
                        i1.f3997b.invoke(this, Integer.valueOf(iPointToPosition));
                        i1.f3998c.invoke(this, Integer.valueOf(iPointToPosition));
                    } catch (IllegalAccessException e9) {
                        e9.printStackTrace();
                    } catch (InvocationTargetException e10) {
                        e10.printStackTrace();
                    }
                }
            }
            Drawable selector = getSelector();
            if (selector != null && this.f4040j && isPressed()) {
                selector.setState(getDrawableState());
            }
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f4037f = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        androidx.fragment.app.p pVar = this.f4042l;
        if (pVar != null) {
            m1 m1Var = (m1) pVar.f598b;
            m1Var.f4042l = null;
            m1Var.removeCallbacks(pVar);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z5) {
        this.h = z5;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        k1 k1Var = null;
        if (drawable != null) {
            k1 k1Var2 = new k1();
            Drawable drawable2 = k1Var2.f4009a;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            k1Var2.f4009a = drawable;
            drawable.setCallback(k1Var2);
            k1Var2.f4010b = true;
            k1Var = k1Var2;
        }
        this.f4038g = k1Var;
        super.setSelector(k1Var);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f4033b = rect.left;
        this.f4034c = rect.top;
        this.f4035d = rect.right;
        this.f4036e = rect.bottom;
    }
}
