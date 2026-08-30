package m;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ColorStateList f4051a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PorterDuff.Mode f4052b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4053c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f4054d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4055e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f4056f;

    public /* synthetic */ o(TextView textView) {
        this.f4056f = textView;
    }

    public void a() {
        CompoundButton compoundButton = (CompoundButton) this.f4056f;
        Drawable buttonDrawable = compoundButton.getButtonDrawable();
        if (buttonDrawable != null) {
            if (this.f4053c || this.f4054d) {
                Drawable drawableMutate = buttonDrawable.mutate();
                if (this.f4053c) {
                    drawableMutate.setTintList(this.f4051a);
                }
                if (this.f4054d) {
                    drawableMutate.setTintMode(this.f4052b);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(drawableMutate);
            }
        }
    }

    public void b() {
        n nVar = (n) this.f4056f;
        Drawable checkMarkDrawable = nVar.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (this.f4053c || this.f4054d) {
                Drawable drawableMutate = checkMarkDrawable.mutate();
                if (this.f4053c) {
                    drawableMutate.setTintList(this.f4051a);
                }
                if (this.f4054d) {
                    drawableMutate.setTintMode(this.f4052b);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(nVar.getDrawableState());
                }
                nVar.setCheckMarkDrawable(drawableMutate);
            }
        }
    }

    public void c(AttributeSet attributeSet, int i6) {
        int resourceId;
        int resourceId2;
        CompoundButton compoundButton = (CompoundButton) this.f4056f;
        Context context = compoundButton.getContext();
        int[] iArr = f.a.f2503m;
        c5.h hVarQ = c5.h.q(context, attributeSet, iArr, i6);
        TypedArray typedArray = (TypedArray) hVarQ.f1061c;
        j0.k0.g(compoundButton, compoundButton.getContext(), iArr, attributeSet, (TypedArray) hVarQ.f1061c, i6, 0);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    compoundButton.setButtonDrawable(z7.l.j(compoundButton.getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                    if (typedArray.hasValue(0)) {
                        compoundButton.setButtonDrawable(z7.l.j(compoundButton.getContext(), resourceId));
                    }
                }
            } else if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                compoundButton.setButtonDrawable(z7.l.j(compoundButton.getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
                compoundButton.setButtonTintList(hVarQ.j(2));
            }
            if (typedArray.hasValue(3)) {
                compoundButton.setButtonTintMode(g1.b(typedArray.getInt(3, -1), null));
            }
            hVarQ.s();
        } catch (Throwable th) {
            hVarQ.s();
            throw th;
        }
    }
}
