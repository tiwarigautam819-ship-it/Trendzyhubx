package m;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b1 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final RectF f3916l = new RectF();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final ConcurrentHashMap f3917m = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3918a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f3919b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f3920c = -1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f3921d = -1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f3922e = -1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f3923f = new int[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3924g = false;
    public TextPaint h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f3925i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Context f3926j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final y0 f3927k;

    public b1(TextView textView) {
        this.f3925i = textView;
        this.f3926j = textView.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            this.f3927k = new z0();
        } else {
            this.f3927k = new y0();
        }
    }

    public static int[] b(int[] iArr) {
        int length = iArr.length;
        if (length != 0) {
            Arrays.sort(iArr);
            ArrayList arrayList = new ArrayList();
            for (int i6 : iArr) {
                if (i6 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i6)) < 0) {
                    arrayList.add(Integer.valueOf(i6));
                }
            }
            if (length != arrayList.size()) {
                int size = arrayList.size();
                int[] iArr2 = new int[size];
                for (int i9 = 0; i9 < size; i9++) {
                    iArr2[i9] = ((Integer) arrayList.get(i9)).intValue();
                }
                return iArr2;
            }
        }
        return iArr;
    }

    public static Method d(String str) {
        try {
            ConcurrentHashMap concurrentHashMap = f3917m;
            Method declaredMethod = (Method) concurrentHashMap.get(str);
            if (declaredMethod != null || (declaredMethod = TextView.class.getDeclaredMethod(str, null)) == null) {
                return declaredMethod;
            }
            declaredMethod.setAccessible(true);
            concurrentHashMap.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e9) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e9);
            return null;
        }
    }

    public static Object e(String str, Object obj, Object obj2) {
        try {
            return d(str).invoke(obj, null);
        } catch (Exception e9) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e9);
            return obj2;
        }
    }

    public final void a() {
        if (f()) {
            if (this.f3919b) {
                if (this.f3925i.getMeasuredHeight() <= 0 || this.f3925i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f3927k.b(this.f3925i) ? 1048576 : (this.f3925i.getMeasuredWidth() - this.f3925i.getTotalPaddingLeft()) - this.f3925i.getTotalPaddingRight();
                int height = (this.f3925i.getHeight() - this.f3925i.getCompoundPaddingBottom()) - this.f3925i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = f3916l;
                synchronized (rectF) {
                    try {
                        rectF.setEmpty();
                        rectF.right = measuredWidth;
                        rectF.bottom = height;
                        float fC = c(rectF);
                        if (fC != this.f3925i.getTextSize()) {
                            g(0, fC);
                        }
                    } finally {
                    }
                }
            }
            this.f3919b = true;
        }
    }

    public final int c(RectF rectF) {
        CharSequence transformation;
        int length = this.f3923f.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i6 = length - 1;
        int i9 = 0;
        int i10 = 1;
        while (i10 <= i6) {
            int i11 = (i10 + i6) / 2;
            int i12 = this.f3923f[i11];
            TextView textView = this.f3925i;
            CharSequence text = textView.getText();
            TransformationMethod transformationMethod = textView.getTransformationMethod();
            CharSequence charSequence = (transformationMethod == null || (transformation = transformationMethod.getTransformation(text, textView)) == null) ? text : transformation;
            int maxLines = textView.getMaxLines();
            TextPaint textPaint = this.h;
            if (textPaint == null) {
                this.h = new TextPaint();
            } else {
                textPaint.reset();
            }
            this.h.set(textView.getPaint());
            this.h.setTextSize(i12);
            StaticLayout staticLayoutA = x0.a(charSequence, (Layout.Alignment) e("getLayoutAlignment", textView, Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines, this.f3925i, this.h, this.f3927k);
            if ((maxLines == -1 || (staticLayoutA.getLineCount() <= maxLines && staticLayoutA.getLineEnd(staticLayoutA.getLineCount() - 1) == charSequence.length())) && staticLayoutA.getHeight() <= rectF.bottom) {
                int i13 = i11 + 1;
                i9 = i10;
                i10 = i13;
            } else {
                i9 = i11 - 1;
                i6 = i9;
            }
        }
        return this.f3923f[i9];
    }

    public final boolean f() {
        return j() && this.f3918a != 0;
    }

    public final void g(int i6, float f9) {
        Context context = this.f3926j;
        float fApplyDimension = TypedValue.applyDimension(i6, f9, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics());
        TextView textView = this.f3925i;
        if (fApplyDimension != textView.getPaint().getTextSize()) {
            textView.getPaint().setTextSize(fApplyDimension);
            boolean zIsInLayout = textView.isInLayout();
            if (textView.getLayout() != null) {
                this.f3919b = false;
                try {
                    Method methodD = d("nullLayouts");
                    if (methodD != null) {
                        methodD.invoke(textView, null);
                    }
                } catch (Exception e9) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e9);
                }
                if (zIsInLayout) {
                    textView.forceLayout();
                } else {
                    textView.requestLayout();
                }
                textView.invalidate();
            }
        }
    }

    public final boolean h() {
        if (j() && this.f3918a == 1) {
            if (!this.f3924g || this.f3923f.length == 0) {
                int iFloor = ((int) Math.floor((this.f3922e - this.f3921d) / this.f3920c)) + 1;
                int[] iArr = new int[iFloor];
                for (int i6 = 0; i6 < iFloor; i6++) {
                    iArr[i6] = Math.round((i6 * this.f3920c) + this.f3921d);
                }
                this.f3923f = b(iArr);
            }
            this.f3919b = true;
        } else {
            this.f3919b = false;
        }
        return this.f3919b;
    }

    public final boolean i() {
        boolean z5 = this.f3923f.length > 0;
        this.f3924g = z5;
        if (z5) {
            this.f3918a = 1;
            this.f3921d = r0[0];
            this.f3922e = r0[r1 - 1];
            this.f3920c = -1.0f;
        }
        return z5;
    }

    public final boolean j() {
        return !(this.f3925i instanceof r);
    }

    public final void k(float f9, float f10, float f11) {
        if (f9 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f9 + "px) is less or equal to (0px)");
        }
        if (f10 <= f9) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f10 + "px) is less or equal to minimum auto-size text size (" + f9 + "px)");
        }
        if (f11 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f11 + "px) is less or equal to (0px)");
        }
        this.f3918a = 1;
        this.f3921d = f9;
        this.f3922e = f10;
        this.f3920c = f11;
        this.f3924g = false;
    }
}
