package h1;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import java.io.IOException;
import java.util.ArrayDeque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q extends h {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final PorterDuff.Mode f2959j = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o f2960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PorterDuffColorFilter f2961c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ColorFilter f2962d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2963e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2964f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float[] f2965g;
    public final Matrix h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Rect f2966i;

    public q() {
        this.f2964f = true;
        this.f2965g = new float[9];
        this.h = new Matrix();
        this.f2966i = new Rect();
        o oVar = new o();
        oVar.f2949c = null;
        oVar.f2950d = f2959j;
        oVar.f2948b = new n();
        this.f2960b = oVar;
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f2908a;
        if (drawable == null) {
            return false;
        }
        drawable.canApplyTheme();
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Rect rect = this.f2966i;
        copyBounds(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f2962d;
        if (colorFilter == null) {
            colorFilter = this.f2961c;
        }
        Matrix matrix = this.h;
        canvas.getMatrix(matrix);
        float[] fArr = this.f2965g;
        matrix.getValues(fArr);
        float fAbs = Math.abs(fArr[0]);
        float fAbs2 = Math.abs(fArr[4]);
        float fAbs3 = Math.abs(fArr[1]);
        float fAbs4 = Math.abs(fArr[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iWidth = (int) (rect.width() * fAbs);
        int iMin = Math.min(2048, iWidth);
        int iMin2 = Math.min(2048, (int) (rect.height() * fAbs2));
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(rect.left, rect.top);
        if (isAutoMirrored() && getLayoutDirection() == 1) {
            canvas.translate(rect.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        rect.offsetTo(0, 0);
        o oVar = this.f2960b;
        Bitmap bitmap = oVar.f2952f;
        if (bitmap == null || iMin != bitmap.getWidth() || iMin2 != oVar.f2952f.getHeight()) {
            oVar.f2952f = Bitmap.createBitmap(iMin, iMin2, Bitmap.Config.ARGB_8888);
            oVar.f2956k = true;
        }
        if (this.f2964f) {
            o oVar2 = this.f2960b;
            if (oVar2.f2956k || oVar2.f2953g != oVar2.f2949c || oVar2.h != oVar2.f2950d || oVar2.f2955j != oVar2.f2951e || oVar2.f2954i != oVar2.f2948b.getRootAlpha()) {
                o oVar3 = this.f2960b;
                oVar3.f2952f.eraseColor(0);
                Canvas canvas2 = new Canvas(oVar3.f2952f);
                n nVar = oVar3.f2948b;
                nVar.a(nVar.f2939g, n.f2932p, canvas2, iMin, iMin2);
                o oVar4 = this.f2960b;
                oVar4.f2953g = oVar4.f2949c;
                oVar4.h = oVar4.f2950d;
                oVar4.f2954i = oVar4.f2948b.getRootAlpha();
                oVar4.f2955j = oVar4.f2951e;
                oVar4.f2956k = false;
            }
        } else {
            o oVar5 = this.f2960b;
            oVar5.f2952f.eraseColor(0);
            Canvas canvas3 = new Canvas(oVar5.f2952f);
            n nVar2 = oVar5.f2948b;
            nVar2.a(nVar2.f2939g, n.f2932p, canvas3, iMin, iMin2);
        }
        o oVar6 = this.f2960b;
        if (oVar6.f2948b.getRootAlpha() >= 255 && colorFilter == null) {
            paint = null;
        } else {
            if (oVar6.f2957l == null) {
                Paint paint2 = new Paint();
                oVar6.f2957l = paint2;
                paint2.setFilterBitmap(true);
            }
            oVar6.f2957l.setAlpha(oVar6.f2948b.getRootAlpha());
            oVar6.f2957l.setColorFilter(colorFilter);
            paint = oVar6.f2957l;
        }
        canvas.drawBitmap(oVar6.f2952f, (Rect) null, rect, paint);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f2908a;
        return drawable != null ? drawable.getAlpha() : this.f2960b.f2948b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f2908a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f2960b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.f2908a;
        return drawable != null ? drawable.getColorFilter() : this.f2962d;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f2908a != null && Build.VERSION.SDK_INT >= 24) {
            return new p(this.f2908a.getConstantState());
        }
        this.f2960b.f2947a = getChangingConfigurations();
        return this.f2960b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f2908a;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f2960b.f2948b.f2940i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f2908a;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f2960b.f2948b.h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f2908a;
        return drawable != null ? drawable.isAutoMirrored() : this.f2960b.f2951e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (super.isStateful()) {
            return true;
        }
        o oVar = this.f2960b;
        if (oVar == null) {
            return false;
        }
        n nVar = oVar.f2948b;
        if (nVar.f2945n == null) {
            nVar.f2945n = Boolean.valueOf(nVar.f2939g.a());
        }
        if (nVar.f2945n.booleanValue()) {
            return true;
        }
        ColorStateList colorStateList = this.f2960b.f2949c;
        return colorStateList != null && colorStateList.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f2963e && super.mutate() == this) {
            o oVar = this.f2960b;
            o oVar2 = new o();
            oVar2.f2949c = null;
            oVar2.f2950d = f2959j;
            if (oVar != null) {
                oVar2.f2947a = oVar.f2947a;
                n nVar = new n(oVar.f2948b);
                oVar2.f2948b = nVar;
                if (oVar.f2948b.f2937e != null) {
                    nVar.f2937e = new Paint(oVar.f2948b.f2937e);
                }
                if (oVar.f2948b.f2936d != null) {
                    oVar2.f2948b.f2936d = new Paint(oVar.f2948b.f2936d);
                }
                oVar2.f2949c = oVar.f2949c;
                oVar2.f2950d = oVar.f2950d;
                oVar2.f2951e = oVar.f2951e;
            }
            this.f2960b = oVar2;
            this.f2963e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z5;
        PorterDuff.Mode mode;
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        o oVar = this.f2960b;
        ColorStateList colorStateList = oVar.f2949c;
        if (colorStateList == null || (mode = oVar.f2950d) == null) {
            z5 = false;
        } else {
            this.f2961c = a(colorStateList, mode);
            invalidateSelf();
            z5 = true;
        }
        n nVar = oVar.f2948b;
        if (nVar.f2945n == null) {
            nVar.f2945n = Boolean.valueOf(nVar.f2939g.a());
        }
        if (nVar.f2945n.booleanValue()) {
            boolean zB = oVar.f2948b.f2939g.b(iArr);
            oVar.f2956k |= zB;
            if (zB) {
                invalidateSelf();
                return true;
            }
        }
        return z5;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j3) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j3);
        } else {
            super.scheduleSelf(runnable, j3);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.setAlpha(i6);
        } else if (this.f2960b.f2948b.getRootAlpha() != i6) {
            this.f2960b.f2948b.setRootAlpha(i6);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z5) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.setAutoMirrored(z5);
        } else {
            this.f2960b.f2951e = z5;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f2962d = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i6) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            android.support.v4.media.session.a.k(drawable, i6);
        } else {
            setTintList(ColorStateList.valueOf(i6));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
            return;
        }
        o oVar = this.f2960b;
        if (oVar.f2949c != colorStateList) {
            oVar.f2949c = colorStateList;
            this.f2961c = a(colorStateList, oVar.f2950d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.setTintMode(mode);
            return;
        }
        o oVar = this.f2960b;
        if (oVar.f2950d != mode) {
            oVar.f2950d = mode;
            this.f2961c = a(oVar.f2949c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z5, boolean z8) {
        Drawable drawable = this.f2908a;
        return drawable != null ? drawable.setVisible(z5, z8) : super.setVisible(z5, z8);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int i6;
        char c8;
        int i9;
        Paint.Cap cap;
        Paint.Join join;
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
            return;
        }
        o oVar = this.f2960b;
        oVar.f2948b = new n();
        TypedArray typedArrayF = b0.b.f(resources, theme, attributeSet, a.f2886a);
        o oVar2 = this.f2960b;
        n nVar = oVar2.f2948b;
        int i10 = !b0.b.c(xmlPullParser, "tintMode") ? -1 : typedArrayF.getInt(6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        if (i10 == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (i10 != 5) {
            if (i10 != 9) {
                switch (i10) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        oVar2.f2950d = mode;
        ColorStateList colorStateListA = null;
        int i11 = 1;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "tint") != null) {
            TypedValue typedValue = new TypedValue();
            typedArrayF.getValue(1, typedValue);
            int i12 = typedValue.type;
            if (i12 == 2) {
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue);
            }
            if (i12 >= 28 && i12 <= 31) {
                colorStateListA = ColorStateList.valueOf(typedValue.data);
            } else {
                Resources resources2 = typedArrayF.getResources();
                int resourceId = typedArrayF.getResourceId(1, 0);
                ThreadLocal threadLocal = b0.c.f852a;
                try {
                    colorStateListA = b0.c.a(resources2, resources2.getXml(resourceId), theme);
                } catch (Exception e9) {
                    Log.e("CSLCompat", "Failed to inflate ColorStateList.", e9);
                }
            }
        }
        ColorStateList colorStateList = colorStateListA;
        if (colorStateList != null) {
            oVar2.f2949c = colorStateList;
        }
        boolean z5 = oVar2.f2951e;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "autoMirrored") != null) {
            z5 = typedArrayF.getBoolean(5, z5);
        }
        oVar2.f2951e = z5;
        float f9 = nVar.f2941j;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "viewportWidth") != null) {
            f9 = typedArrayF.getFloat(7, f9);
        }
        nVar.f2941j = f9;
        float f10 = nVar.f2942k;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "viewportHeight") != null) {
            f10 = typedArrayF.getFloat(8, f10);
        }
        nVar.f2942k = f10;
        if (nVar.f2941j <= 0.0f) {
            throw new XmlPullParserException(typedArrayF.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f10 > 0.0f) {
            nVar.h = typedArrayF.getDimension(3, nVar.h);
            float dimension = typedArrayF.getDimension(2, nVar.f2940i);
            nVar.f2940i = dimension;
            if (nVar.h <= 0.0f) {
                throw new XmlPullParserException(typedArrayF.getPositionDescription() + "<vector> tag requires width > 0");
            }
            if (dimension > 0.0f) {
                float alpha = nVar.getAlpha();
                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "alpha") != null) {
                    alpha = typedArrayF.getFloat(4, alpha);
                }
                nVar.setAlpha(alpha);
                String string = typedArrayF.getString(0);
                if (string != null) {
                    nVar.f2944m = string;
                    nVar.f2946o.put(string, nVar);
                }
                typedArrayF.recycle();
                oVar.f2947a = getChangingConfigurations();
                oVar.f2956k = true;
                o oVar3 = this.f2960b;
                n nVar2 = oVar3.f2948b;
                ArrayDeque arrayDeque = new ArrayDeque();
                k kVar = nVar2.f2939g;
                s.e eVar = nVar2.f2946o;
                arrayDeque.push(kVar);
                int eventType = xmlPullParser.getEventType();
                int depth = xmlPullParser.getDepth() + 1;
                boolean z8 = true;
                while (eventType != i11 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
                    if (eventType == 2) {
                        String name = xmlPullParser.getName();
                        k kVar2 = (k) arrayDeque.peek();
                        i6 = depth;
                        if ("path".equals(name)) {
                            j jVar = new j();
                            jVar.f2910e = 0.0f;
                            jVar.f2912g = 1.0f;
                            jVar.h = 1.0f;
                            jVar.f2913i = 0.0f;
                            jVar.f2914j = 1.0f;
                            jVar.f2915k = 0.0f;
                            Paint.Cap cap2 = Paint.Cap.BUTT;
                            jVar.f2916l = cap2;
                            Paint.Join join2 = Paint.Join.MITER;
                            jVar.f2917m = join2;
                            jVar.f2918n = 4.0f;
                            TypedArray typedArrayF2 = b0.b.f(resources, theme, attributeSet, a.f2888c);
                            if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null) {
                                String string2 = typedArrayF2.getString(0);
                                if (string2 != null) {
                                    jVar.f2930b = string2;
                                }
                                String string3 = typedArrayF2.getString(2);
                                if (string3 != null) {
                                    jVar.f2929a = t4.b.d(string3);
                                }
                                jVar.f2911f = b0.b.a(typedArrayF2, xmlPullParser, theme, "fillColor", 1);
                                float f11 = jVar.h;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillAlpha") != null) {
                                    f11 = typedArrayF2.getFloat(12, f11);
                                }
                                jVar.h = f11;
                                int i13 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeLineCap") != null ? typedArrayF2.getInt(8, -1) : -1;
                                Paint.Cap cap3 = jVar.f2916l;
                                if (i13 == 0) {
                                    cap = cap2;
                                } else if (i13 != 1) {
                                    cap = i13 != 2 ? cap3 : Paint.Cap.SQUARE;
                                } else {
                                    cap = Paint.Cap.ROUND;
                                }
                                jVar.f2916l = cap;
                                int i14 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeLineJoin") != null ? typedArrayF2.getInt(9, -1) : -1;
                                Paint.Join join3 = jVar.f2917m;
                                if (i14 == 0) {
                                    join = join2;
                                } else if (i14 != 1) {
                                    join = i14 != 2 ? join3 : Paint.Join.BEVEL;
                                } else {
                                    join = Paint.Join.ROUND;
                                }
                                jVar.f2917m = join;
                                float f12 = jVar.f2918n;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeMiterLimit") != null) {
                                    f12 = typedArrayF2.getFloat(10, f12);
                                }
                                jVar.f2918n = f12;
                                jVar.f2909d = b0.b.a(typedArrayF2, xmlPullParser, theme, "strokeColor", 3);
                                float f13 = jVar.f2912g;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeAlpha") != null) {
                                    f13 = typedArrayF2.getFloat(11, f13);
                                }
                                jVar.f2912g = f13;
                                float f14 = jVar.f2910e;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeWidth") != null) {
                                    f14 = typedArrayF2.getFloat(4, f14);
                                }
                                jVar.f2910e = f14;
                                float f15 = jVar.f2914j;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathEnd") != null) {
                                    f15 = typedArrayF2.getFloat(6, f15);
                                }
                                jVar.f2914j = f15;
                                float f16 = jVar.f2915k;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathOffset") != null) {
                                    f16 = typedArrayF2.getFloat(7, f16);
                                }
                                jVar.f2915k = f16;
                                float f17 = jVar.f2913i;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathStart") != null) {
                                    f17 = typedArrayF2.getFloat(5, f17);
                                }
                                jVar.f2913i = f17;
                                int i15 = jVar.f2931c;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillType") != null) {
                                    i15 = typedArrayF2.getInt(13, i15);
                                }
                                jVar.f2931c = i15;
                            }
                            typedArrayF2.recycle();
                            kVar2.f2920b.add(jVar);
                            if (jVar.getPathName() != null) {
                                eVar.put(jVar.getPathName(), jVar);
                            }
                            oVar3.f2947a = oVar3.f2947a;
                            z8 = false;
                            c8 = '\b';
                        } else {
                            c8 = '\b';
                            if ("clip-path".equals(name)) {
                                i iVar = new i();
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null) {
                                    TypedArray typedArrayF3 = b0.b.f(resources, theme, attributeSet, a.f2889d);
                                    String string4 = typedArrayF3.getString(0);
                                    if (string4 != null) {
                                        iVar.f2930b = string4;
                                    }
                                    String string5 = typedArrayF3.getString(1);
                                    if (string5 != null) {
                                        iVar.f2929a = t4.b.d(string5);
                                    }
                                    iVar.f2931c = !b0.b.c(xmlPullParser, "fillType") ? 0 : typedArrayF3.getInt(2, 0);
                                    typedArrayF3.recycle();
                                }
                                kVar2.f2920b.add(iVar);
                                if (iVar.getPathName() != null) {
                                    eVar.put(iVar.getPathName(), iVar);
                                }
                                oVar3.f2947a = oVar3.f2947a;
                            } else if ("group".equals(name)) {
                                k kVar3 = new k();
                                TypedArray typedArrayF4 = b0.b.f(resources, theme, attributeSet, a.f2887b);
                                float f18 = kVar3.f2921c;
                                if (b0.b.c(xmlPullParser, "rotation")) {
                                    f18 = typedArrayF4.getFloat(5, f18);
                                }
                                kVar3.f2921c = f18;
                                kVar3.f2922d = typedArrayF4.getFloat(1, kVar3.f2922d);
                                kVar3.f2923e = typedArrayF4.getFloat(2, kVar3.f2923e);
                                float f19 = kVar3.f2924f;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "scaleX") != null) {
                                    f19 = typedArrayF4.getFloat(3, f19);
                                }
                                kVar3.f2924f = f19;
                                float f20 = kVar3.f2925g;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "scaleY") != null) {
                                    f20 = typedArrayF4.getFloat(4, f20);
                                }
                                kVar3.f2925g = f20;
                                float f21 = kVar3.h;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "translateX") != null) {
                                    f21 = typedArrayF4.getFloat(6, f21);
                                }
                                kVar3.h = f21;
                                float f22 = kVar3.f2926i;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "translateY") != null) {
                                    f22 = typedArrayF4.getFloat(7, f22);
                                }
                                kVar3.f2926i = f22;
                                String string6 = typedArrayF4.getString(0);
                                if (string6 != null) {
                                    kVar3.f2928k = string6;
                                }
                                kVar3.c();
                                typedArrayF4.recycle();
                                kVar2.f2920b.add(kVar3);
                                arrayDeque.push(kVar3);
                                if (kVar3.getGroupName() != null) {
                                    eVar.put(kVar3.getGroupName(), kVar3);
                                }
                                oVar3.f2947a = oVar3.f2947a;
                            }
                        }
                        i9 = 1;
                    } else {
                        i6 = depth;
                        c8 = '\b';
                        i9 = 1;
                        if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                            arrayDeque.pop();
                        }
                    }
                    eventType = xmlPullParser.next();
                    i11 = i9;
                    depth = i6;
                }
                if (!z8) {
                    this.f2961c = a(oVar.f2949c, oVar.f2950d);
                    return;
                }
                throw new XmlPullParserException("no path defined");
            }
            throw new XmlPullParserException(typedArrayF.getPositionDescription() + "<vector> tag requires height > 0");
        }
        throw new XmlPullParserException(typedArrayF.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
    }

    public q(o oVar) {
        this.f2964f = true;
        this.f2965g = new float[9];
        this.h = new Matrix();
        this.f2966i = new Rect();
        this.f2960b = oVar;
        this.f2961c = a(oVar.f2949c, oVar.f2950d);
    }
}
