package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.YaarWin.app.R;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public View f185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f186c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Drawable f187d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Drawable f188e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Drawable f189f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f190g;
    public boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f191i;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBackground(new m.a(this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.a.f2492a);
        boolean z5 = false;
        this.f187d = typedArrayObtainStyledAttributes.getDrawable(0);
        this.f188e = typedArrayObtainStyledAttributes.getDrawable(2);
        this.f191i = typedArrayObtainStyledAttributes.getDimensionPixelSize(13, -1);
        if (getId() == R.id.split_action_bar) {
            this.f190g = true;
            this.f189f = typedArrayObtainStyledAttributes.getDrawable(1);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!this.f190g ? !(this.f187d != null || this.f188e != null) : this.f189f == null) {
            z5 = true;
        }
        setWillNotDraw(z5);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f187d;
        if (drawable != null && drawable.isStateful()) {
            this.f187d.setState(getDrawableState());
        }
        Drawable drawable2 = this.f188e;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f188e.setState(getDrawableState());
        }
        Drawable drawable3 = this.f189f;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f189f.setState(getDrawableState());
    }

    public View getTabContainer() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f187d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f188e;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f189f;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f185b = findViewById(R.id.action_bar);
        this.f186c = findViewById(R.id.action_context_bar);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f184a || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z5, int i6, int i9, int i10, int i11) {
        super.onLayout(z5, i6, i9, i10, i11);
        boolean z8 = true;
        if (this.f190g) {
            Drawable drawable = this.f189f;
            if (drawable != null) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z8 = false;
            }
        } else {
            if (this.f187d == null) {
                z8 = false;
            } else if (this.f185b.getVisibility() == 0) {
                this.f187d.setBounds(this.f185b.getLeft(), this.f185b.getTop(), this.f185b.getRight(), this.f185b.getBottom());
            } else {
                View view = this.f186c;
                if (view == null || view.getVisibility() != 0) {
                    this.f187d.setBounds(0, 0, 0, 0);
                } else {
                    this.f187d.setBounds(this.f186c.getLeft(), this.f186c.getTop(), this.f186c.getRight(), this.f186c.getBottom());
                }
            }
            this.h = false;
        }
        if (z8) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i6, int i9) {
        int i10;
        if (this.f185b == null && View.MeasureSpec.getMode(i9) == Integer.MIN_VALUE && (i10 = this.f191i) >= 0) {
            i9 = View.MeasureSpec.makeMeasureSpec(Math.min(i10, View.MeasureSpec.getSize(i9)), Integer.MIN_VALUE);
        }
        super.onMeasure(i6, i9);
        if (this.f185b == null) {
            return;
        }
        View.MeasureSpec.getMode(i9);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f187d;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f187d);
        }
        this.f187d = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f185b;
            if (view != null) {
                this.f187d.setBounds(view.getLeft(), this.f185b.getTop(), this.f185b.getRight(), this.f185b.getBottom());
            }
        }
        boolean z5 = false;
        if (!this.f190g ? !(this.f187d != null || this.f188e != null) : this.f189f == null) {
            z5 = true;
        }
        setWillNotDraw(z5);
        invalidate();
        invalidateOutline();
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f189f;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f189f);
        }
        this.f189f = drawable;
        boolean z5 = this.f190g;
        boolean z8 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (z5 && (drawable2 = this.f189f) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!z5 ? !(this.f187d != null || this.f188e != null) : this.f189f == null) {
            z8 = true;
        }
        setWillNotDraw(z8);
        invalidate();
        invalidateOutline();
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2 = this.f188e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f188e);
        }
        this.f188e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.h && this.f188e != null) {
                throw null;
            }
        }
        boolean z5 = false;
        if (!this.f190g ? !(this.f187d != null || this.f188e != null) : this.f189f == null) {
            z5 = true;
        }
        setWillNotDraw(z5);
        invalidate();
        invalidateOutline();
    }

    public void setTransitioning(boolean z5) {
        this.f184a = z5;
        setDescendantFocusability(z5 ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i6) {
        super.setVisibility(i6);
        boolean z5 = i6 == 0;
        Drawable drawable = this.f187d;
        if (drawable != null) {
            drawable.setVisible(z5, false);
        }
        Drawable drawable2 = this.f188e;
        if (drawable2 != null) {
            drawable2.setVisible(z5, false);
        }
        Drawable drawable3 = this.f189f;
        if (drawable3 != null) {
            drawable3.setVisible(z5, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        Drawable drawable2 = this.f187d;
        boolean z5 = this.f190g;
        if (drawable == drawable2 && !z5) {
            return true;
        }
        if (drawable == this.f188e && this.h) {
            return true;
        }
        return (drawable == this.f189f && z5) || super.verifyDrawable(drawable);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i6) {
        if (i6 != 0) {
            return super.startActionModeForChild(view, callback, i6);
        }
        return null;
    }

    public void setTabContainer(c cVar) {
    }
}
