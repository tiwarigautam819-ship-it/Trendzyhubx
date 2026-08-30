package m;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f4083a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public x2 f4084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public x2 f4085c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public x2 f4086d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public x2 f4087e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public x2 f4088f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public x2 f4089g;
    public x2 h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b1 f4090i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4091j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4092k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Typeface f4093l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f4094m;

    public s0(TextView textView) {
        this.f4083a = textView;
        this.f4090i = new b1(textView);
    }

    public static x2 c(Context context, p pVar, int i6) {
        ColorStateList colorStateListI;
        synchronized (pVar) {
            colorStateListI = pVar.f4061a.i(context, i6);
        }
        if (colorStateListI == null) {
            return null;
        }
        x2 x2Var = new x2();
        x2Var.f4172b = true;
        x2Var.f4173c = colorStateListI;
        return x2Var;
    }

    public static void h(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 30 || inputConnection == null) {
            return;
        }
        CharSequence text = textView.getText();
        if (i6 >= 30) {
            l0.b.a(editorInfo, text);
            return;
        }
        text.getClass();
        if (i6 >= 30) {
            l0.b.a(editorInfo, text);
            return;
        }
        int i9 = editorInfo.initialSelStart;
        int i10 = editorInfo.initialSelEnd;
        int i11 = i9 > i10 ? i10 : i9;
        if (i9 <= i10) {
            i9 = i10;
        }
        int length = text.length();
        if (i11 < 0 || i9 > length) {
            l0.c.a(editorInfo, null, 0, 0);
            return;
        }
        int i12 = editorInfo.inputType & 4095;
        if (i12 == 129 || i12 == 225 || i12 == 18) {
            l0.c.a(editorInfo, null, 0, 0);
            return;
        }
        if (length <= 2048) {
            l0.c.a(editorInfo, text, i11, i9);
            return;
        }
        int i13 = i9 - i11;
        int i14 = i13 > 1024 ? 0 : i13;
        int i15 = 2048 - i14;
        int iMin = Math.min(text.length() - i9, i15 - Math.min(i11, (int) (((double) i15) * 0.8d)));
        int iMin2 = Math.min(i11, i15 - iMin);
        int i16 = i11 - iMin2;
        if (Character.isLowSurrogate(text.charAt(i16))) {
            i16++;
            iMin2--;
        }
        if (Character.isHighSurrogate(text.charAt((i9 + iMin) - 1))) {
            iMin--;
        }
        int i17 = iMin2 + i14;
        l0.c.a(editorInfo, i14 != i13 ? TextUtils.concat(text.subSequence(i16, i16 + iMin2), text.subSequence(i9, iMin + i9)) : text.subSequence(i16, i17 + iMin + i16), iMin2, i17);
    }

    public final void a(Drawable drawable, x2 x2Var) {
        if (drawable == null || x2Var == null) {
            return;
        }
        p.d(drawable, x2Var, this.f4083a.getDrawableState());
    }

    public final void b() {
        x2 x2Var = this.f4084b;
        TextView textView = this.f4083a;
        if (x2Var != null || this.f4085c != null || this.f4086d != null || this.f4087e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.f4084b);
            a(compoundDrawables[1], this.f4085c);
            a(compoundDrawables[2], this.f4086d);
            a(compoundDrawables[3], this.f4087e);
        }
        if (this.f4088f == null && this.f4089g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        a(compoundDrawablesRelative[0], this.f4088f);
        a(compoundDrawablesRelative[2], this.f4089g);
    }

    public final ColorStateList d() {
        x2 x2Var = this.h;
        if (x2Var != null) {
            return (ColorStateList) x2Var.f4173c;
        }
        return null;
    }

    public final PorterDuff.Mode e() {
        x2 x2Var = this.h;
        if (x2Var != null) {
            return (PorterDuff.Mode) x2Var.f4174d;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:242:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:257:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void f(android.util.AttributeSet r26, int r27) {
        /*
            Method dump skipped, instruction units count: 1038
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: m.s0.f(android.util.AttributeSet, int):void");
    }

    public final void g(Context context, int i6) {
        String string;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i6, f.a.f2513w);
        c5.h hVar = new c5.h(context, typedArrayObtainStyledAttributes);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(14);
        TextView textView = this.f4083a;
        if (zHasValue) {
            textView.setAllCaps(typedArrayObtainStyledAttributes.getBoolean(14, false));
        }
        int i9 = Build.VERSION.SDK_INT;
        if (typedArrayObtainStyledAttributes.hasValue(0) && typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        n(context, hVar);
        if (i9 >= 26 && typedArrayObtainStyledAttributes.hasValue(13) && (string = typedArrayObtainStyledAttributes.getString(13)) != null) {
            q0.d(textView, string);
        }
        hVar.s();
        Typeface typeface = this.f4093l;
        if (typeface != null) {
            textView.setTypeface(typeface, this.f4091j);
        }
    }

    public final void i(int i6, int i9, int i10, int i11) {
        b1 b1Var = this.f4090i;
        if (b1Var.j()) {
            DisplayMetrics displayMetrics = b1Var.f3926j.getResources().getDisplayMetrics();
            b1Var.k(TypedValue.applyDimension(i11, i6, displayMetrics), TypedValue.applyDimension(i11, i9, displayMetrics), TypedValue.applyDimension(i11, i10, displayMetrics));
            if (b1Var.h()) {
                b1Var.a();
            }
        }
    }

    public final void j(int[] iArr, int i6) {
        b1 b1Var = this.f4090i;
        if (b1Var.j()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i6 == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = b1Var.f3926j.getResources().getDisplayMetrics();
                    for (int i9 = 0; i9 < length; i9++) {
                        iArrCopyOf[i9] = Math.round(TypedValue.applyDimension(i6, iArr[i9], displayMetrics));
                    }
                }
                b1Var.f3923f = b1.b(iArrCopyOf);
                if (!b1Var.i()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                b1Var.f3924g = false;
            }
            if (b1Var.h()) {
                b1Var.a();
            }
        }
    }

    public final void k(int i6) {
        b1 b1Var = this.f4090i;
        if (b1Var.j()) {
            if (i6 == 0) {
                b1Var.f3918a = 0;
                b1Var.f3921d = -1.0f;
                b1Var.f3922e = -1.0f;
                b1Var.f3920c = -1.0f;
                b1Var.f3923f = new int[0];
                b1Var.f3919b = false;
                return;
            }
            if (i6 != 1) {
                throw new IllegalArgumentException(a1.a.i(i6, "Unknown auto-size text type: "));
            }
            DisplayMetrics displayMetrics = b1Var.f3926j.getResources().getDisplayMetrics();
            b1Var.k(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (b1Var.h()) {
                b1Var.a();
            }
        }
    }

    public final void l(ColorStateList colorStateList) {
        if (this.h == null) {
            this.h = new x2();
        }
        x2 x2Var = this.h;
        x2Var.f4173c = colorStateList;
        x2Var.f4172b = colorStateList != null;
        this.f4084b = x2Var;
        this.f4085c = x2Var;
        this.f4086d = x2Var;
        this.f4087e = x2Var;
        this.f4088f = x2Var;
        this.f4089g = x2Var;
    }

    public final void m(PorterDuff.Mode mode) {
        if (this.h == null) {
            this.h = new x2();
        }
        x2 x2Var = this.h;
        x2Var.f4174d = mode;
        x2Var.f4171a = mode != null;
        this.f4084b = x2Var;
        this.f4085c = x2Var;
        this.f4086d = x2Var;
        this.f4087e = x2Var;
        this.f4088f = x2Var;
        this.f4089g = x2Var;
    }

    public final void n(Context context, c5.h hVar) {
        String string;
        int i6 = this.f4091j;
        TypedArray typedArray = (TypedArray) hVar.f1061c;
        this.f4091j = typedArray.getInt(2, i6);
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 28) {
            int i10 = typedArray.getInt(11, -1);
            this.f4092k = i10;
            if (i10 != -1) {
                this.f4091j &= 2;
            }
        }
        if (!typedArray.hasValue(10) && !typedArray.hasValue(12)) {
            if (typedArray.hasValue(1)) {
                this.f4094m = false;
                int i11 = typedArray.getInt(1, 1);
                if (i11 == 1) {
                    this.f4093l = Typeface.SANS_SERIF;
                    return;
                } else if (i11 == 2) {
                    this.f4093l = Typeface.SERIF;
                    return;
                } else {
                    if (i11 != 3) {
                        return;
                    }
                    this.f4093l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f4093l = null;
        int i12 = typedArray.hasValue(12) ? 12 : 10;
        int i13 = this.f4092k;
        int i14 = this.f4091j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceM = hVar.m(i12, this.f4091j, new e6.b(this, i13, i14, new WeakReference(this.f4083a)));
                if (typefaceM != null) {
                    if (i9 < 28 || this.f4092k == -1) {
                        this.f4093l = typefaceM;
                    } else {
                        this.f4093l = r0.a(Typeface.create(typefaceM, 0), this.f4092k, (this.f4091j & 2) != 0);
                    }
                }
                this.f4094m = this.f4093l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f4093l != null || (string = typedArray.getString(i12)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f4092k == -1) {
            this.f4093l = Typeface.create(string, this.f4091j);
        } else {
            this.f4093l = r0.a(Typeface.create(string, 0), this.f4092k, (this.f4091j & 2) != 0);
        }
    }
}
