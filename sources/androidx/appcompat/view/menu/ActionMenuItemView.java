package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import f.a;
import f4.f;
import l.a0;
import l.b;
import l.c;
import l.m;
import l.n;
import l.p;
import m.i;
import m.w0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ActionMenuItemView extends w0 implements a0, View.OnClickListener, i {
    public p h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharSequence f156i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Drawable f157j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public m f158k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public b f159l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public c f160m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f161v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f162w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f163x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f164y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f165z;

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Resources resources = context.getResources();
        this.f161v = g();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f2494c, 0, 0);
        this.f163x = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f165z = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f164y = -1;
        setSaveEnabled(false);
    }

    @Override // m.i
    public final boolean a() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // l.a0
    public final void b(p pVar) {
        this.h = pVar;
        setIcon(pVar.getIcon());
        setTitle(pVar.getTitleCondensed());
        setId(pVar.f3696a);
        setVisibility(pVar.isVisible() ? 0 : 8);
        setEnabled(pVar.isEnabled());
        if (pVar.hasSubMenu() && this.f159l == null) {
            this.f159l = new b(this);
        }
    }

    @Override // m.i
    public final boolean c() {
        return !TextUtils.isEmpty(getText()) && this.h.getIcon() == null;
    }

    public final boolean g() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i6 = configuration.screenWidthDp;
        int i9 = configuration.screenHeightDp;
        if (i6 < 480) {
            return (i6 >= 640 && i9 >= 480) || configuration.orientation == 2;
        }
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // l.a0
    public p getItemData() {
        return this.h;
    }

    public final void h() {
        boolean z5 = true;
        boolean z8 = !TextUtils.isEmpty(this.f156i);
        if (this.f157j != null && ((this.h.f3719y & 4) != 4 || (!this.f161v && !this.f162w))) {
            z5 = false;
        }
        boolean z9 = z8 & z5;
        setText(z9 ? this.f156i : null);
        CharSequence charSequence = this.h.f3711q;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z9 ? null : this.h.f3700e);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.h.f3712r;
        if (TextUtils.isEmpty(charSequence2)) {
            f.e(this, z9 ? null : this.h.f3700e);
        } else {
            f.e(this, charSequence2);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        m mVar = this.f158k;
        if (mVar != null) {
            mVar.b(this.h);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f161v = g();
        h();
    }

    @Override // m.w0, android.widget.TextView, android.view.View
    public final void onMeasure(int i6, int i9) {
        int i10;
        boolean zIsEmpty = TextUtils.isEmpty(getText());
        if (!zIsEmpty && (i10 = this.f164y) >= 0) {
            super.setPadding(i10, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i6, i9);
        int mode = View.MeasureSpec.getMode(i6);
        int size = View.MeasureSpec.getSize(i6);
        int measuredWidth = getMeasuredWidth();
        int i11 = this.f163x;
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, i11) : i11;
        if (mode != 1073741824 && i11 > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i9);
        }
        if (!zIsEmpty || this.f157j == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f157j.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        b bVar;
        if (this.h.hasSubMenu() && (bVar = this.f159l) != null && bVar.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setExpandedFormat(boolean z5) {
        if (this.f162w != z5) {
            this.f162w = z5;
            p pVar = this.h;
            if (pVar != null) {
                n nVar = pVar.f3708n;
                nVar.f3679k = true;
                nVar.p(true);
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f157j = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i6 = this.f165z;
            if (intrinsicWidth > i6) {
                intrinsicHeight = (int) (intrinsicHeight * (i6 / intrinsicWidth));
                intrinsicWidth = i6;
            }
            if (intrinsicHeight > i6) {
                intrinsicWidth = (int) (intrinsicWidth * (i6 / intrinsicHeight));
            } else {
                i6 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i6);
        }
        setCompoundDrawables(drawable, null, null, null);
        h();
    }

    public void setItemInvoker(m mVar) {
        this.f158k = mVar;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i6, int i9, int i10, int i11) {
        this.f164y = i6;
        super.setPadding(i6, i9, i10, i11);
    }

    public void setPopupCallback(c cVar) {
        this.f160m = cVar;
    }

    public void setTitle(CharSequence charSequence) {
        this.f156i = charSequence;
        h();
    }

    public void setCheckable(boolean z5) {
    }

    public void setChecked(boolean z5) {
    }
}
