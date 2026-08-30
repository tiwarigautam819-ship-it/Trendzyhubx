package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;
import m.j3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewStubCompat extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f293a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference f295c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public LayoutInflater f296d;

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f293a = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.a.A, 0, 0);
        this.f294b = typedArrayObtainStyledAttributes.getResourceId(2, -1);
        this.f293a = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        setId(typedArrayObtainStyledAttributes.getResourceId(0, -1));
        typedArrayObtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    public final View a() {
        ViewParent parent = getParent();
        if (!(parent instanceof ViewGroup)) {
            throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        }
        if (this.f293a == 0) {
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        LayoutInflater layoutInflaterFrom = this.f296d;
        if (layoutInflaterFrom == null) {
            layoutInflaterFrom = LayoutInflater.from(getContext());
        }
        View viewInflate = layoutInflaterFrom.inflate(this.f293a, viewGroup, false);
        int i6 = this.f294b;
        if (i6 != -1) {
            viewInflate.setId(i6);
        }
        int iIndexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(viewInflate, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(viewInflate, iIndexOfChild);
        }
        this.f295c = new WeakReference(viewInflate);
        return viewInflate;
    }

    public int getInflatedId() {
        return this.f294b;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f296d;
    }

    public int getLayoutResource() {
        return this.f293a;
    }

    @Override // android.view.View
    public final void onMeasure(int i6, int i9) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i6) {
        this.f294b = i6;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f296d = layoutInflater;
    }

    public void setLayoutResource(int i6) {
        this.f293a = i6;
    }

    @Override // android.view.View
    public void setVisibility(int i6) {
        WeakReference weakReference = this.f295c;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            if (view == null) {
                throw new IllegalStateException("setVisibility called on un-referenced view");
            }
            view.setVisibility(i6);
            return;
        }
        super.setVisibility(i6);
        if (i6 == 0 || i6 == 4) {
            a();
        }
    }

    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
    }

    public void setOnInflateListener(j3 j3Var) {
    }
}
