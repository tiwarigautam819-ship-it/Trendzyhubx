package h1;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.InflateException;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f2886a = {R.attr.name, R.attr.tint, R.attr.height, R.attr.width, R.attr.alpha, R.attr.autoMirrored, R.attr.tintMode, R.attr.viewportWidth, R.attr.viewportHeight};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f2887b = {R.attr.name, R.attr.pivotX, R.attr.pivotY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.translateX, R.attr.translateY};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f2888c = {R.attr.name, R.attr.fillColor, R.attr.pathData, R.attr.strokeColor, R.attr.strokeWidth, R.attr.trimPathStart, R.attr.trimPathEnd, R.attr.trimPathOffset, R.attr.strokeLineCap, R.attr.strokeLineJoin, R.attr.strokeMiterLimit, R.attr.strokeAlpha, R.attr.fillAlpha, R.attr.fillType};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f2889d = {R.attr.name, R.attr.pathData, R.attr.fillType};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f2890e = {R.attr.drawable};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f2891f = {R.attr.name, R.attr.animation};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[] f2892g = {R.attr.interpolator, R.attr.duration, R.attr.startOffset, R.attr.repeatCount, R.attr.repeatMode, R.attr.valueFrom, R.attr.valueTo, R.attr.valueType};
    public static final int[] h = {R.attr.ordering};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f2893i = {R.attr.valueFrom, R.attr.valueTo, R.attr.valueType, R.attr.propertyName};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[] f2894j = {R.attr.value, R.attr.interpolator, R.attr.valueType, R.attr.fraction};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f2895k = {R.attr.propertyName, R.attr.pathData, R.attr.propertyXName, R.attr.propertyYName};

    /* JADX WARN: Code restructure failed: missing block: B:203:0x039f, code lost:
    
        if (r32 == null) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x03a1, code lost:
    
        if (r10 == null) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x03a3, code lost:
    
        r2 = new android.animation.Animator[r10.size()];
        r3 = r10.size();
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x03ae, code lost:
    
        if (r1 >= r3) goto L220;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x03b0, code lost:
    
        r4 = r10.get(r1);
        r1 = r1 + 1;
        r2[r11] = (android.animation.Animator) r4;
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x03be, code lost:
    
        if (r33 != 0) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x03c0, code lost:
    
        r32.playTogether(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x03c3, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x03c4, code lost:
    
        r32.playSequentially(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x03c7, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0377 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x037b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.animation.Animator a(android.content.Context r27, android.content.res.Resources r28, android.content.res.Resources.Theme r29, org.xmlpull.v1.XmlPullParser r30, android.util.AttributeSet r31, android.animation.AnimatorSet r32, int r33) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 968
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: h1.a.a(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int):android.animation.Animator");
    }

    public static PropertyValuesHolder b(TypedArray typedArray, int i6, int i9, int i10, String str) {
        PropertyValuesHolder propertyValuesHolderOfFloat;
        TypedValue typedValuePeekValue = typedArray.peekValue(i9);
        boolean z5 = typedValuePeekValue != null;
        int i11 = z5 ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i10);
        boolean z8 = typedValuePeekValue2 != null;
        int i12 = z8 ? typedValuePeekValue2.type : 0;
        if (i6 == 4) {
            i6 = ((z5 && c(i11)) || (z8 && c(i12))) ? 3 : 0;
        }
        boolean z9 = i6 == 0;
        PropertyValuesHolder propertyValuesHolderOfInt = null;
        if (i6 == 2) {
            String string = typedArray.getString(i9);
            String string2 = typedArray.getString(i10);
            c0.e[] eVarArrD = t4.b.d(string);
            c0.e[] eVarArrD2 = t4.b.d(string2);
            if (eVarArrD != null || eVarArrD2 != null) {
                if (eVarArrD != null) {
                    f fVar = new f();
                    if (eVarArrD2 == null) {
                        return PropertyValuesHolder.ofObject(str, fVar, eVarArrD);
                    }
                    if (t4.b.a(eVarArrD, eVarArrD2)) {
                        return PropertyValuesHolder.ofObject(str, fVar, eVarArrD, eVarArrD2);
                    }
                    throw new InflateException(" Can't morph from " + string + " to " + string2);
                }
                if (eVarArrD2 != null) {
                    return PropertyValuesHolder.ofObject(str, new f(), eVarArrD2);
                }
            }
            return null;
        }
        g gVar = i6 == 3 ? g.f2907a : null;
        if (z9) {
            if (z5) {
                float dimension = i11 == 5 ? typedArray.getDimension(i9, 0.0f) : typedArray.getFloat(i9, 0.0f);
                if (z8) {
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension, i12 == 5 ? typedArray.getDimension(i10, 0.0f) : typedArray.getFloat(i10, 0.0f));
                } else {
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension);
                }
            } else {
                propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, i12 == 5 ? typedArray.getDimension(i10, 0.0f) : typedArray.getFloat(i10, 0.0f));
            }
            propertyValuesHolderOfInt = propertyValuesHolderOfFloat;
        } else if (z5) {
            int dimension2 = i11 == 5 ? (int) typedArray.getDimension(i9, 0.0f) : c(i11) ? typedArray.getColor(i9, 0) : typedArray.getInt(i9, 0);
            if (z8) {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, dimension2, i12 == 5 ? (int) typedArray.getDimension(i10, 0.0f) : c(i12) ? typedArray.getColor(i10, 0) : typedArray.getInt(i10, 0));
            } else {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, dimension2);
            }
        } else if (z8) {
            propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, i12 == 5 ? (int) typedArray.getDimension(i10, 0.0f) : c(i12) ? typedArray.getColor(i10, 0) : typedArray.getInt(i10, 0));
        }
        if (propertyValuesHolderOfInt != null && gVar != null) {
            propertyValuesHolderOfInt.setEvaluator(gVar);
        }
        return propertyValuesHolderOfInt;
    }

    public static boolean c(int i6) {
        return i6 >= 28 && i6 <= 31;
    }

    public static ValueAnimator d(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ObjectAnimator objectAnimator, XmlPullParser xmlPullParser) {
        ValueAnimator valueAnimator;
        int i6;
        ValueAnimator valueAnimator2;
        TypedArray typedArrayF = b0.b.f(resources, theme, attributeSet, f2892g);
        TypedArray typedArrayF2 = b0.b.f(resources, theme, attributeSet, f2895k);
        ValueAnimator valueAnimator3 = objectAnimator == null ? new ValueAnimator() : objectAnimator;
        long j3 = b0.b.c(xmlPullParser, "duration") ? typedArrayF.getInt(1, 300) : 300;
        long j8 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "startOffset") != null ? typedArrayF.getInt(2, 0) : 0;
        int i9 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "valueType") != null ? typedArrayF.getInt(7, 4) : 4;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "valueFrom") != null && xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "valueTo") != null) {
            if (i9 == 4) {
                TypedValue typedValuePeekValue = typedArrayF.peekValue(5);
                boolean z5 = typedValuePeekValue != null;
                int i10 = z5 ? typedValuePeekValue.type : 0;
                TypedValue typedValuePeekValue2 = typedArrayF.peekValue(6);
                boolean z8 = typedValuePeekValue2 != null;
                i9 = ((z5 && c(i10)) || (z8 && c(z8 ? typedValuePeekValue2.type : 0))) ? 3 : 0;
            }
            PropertyValuesHolder propertyValuesHolderB = b(typedArrayF, i9, 5, 6, "");
            if (propertyValuesHolderB != null) {
                valueAnimator3.setValues(propertyValuesHolderB);
            }
        }
        valueAnimator3.setDuration(j3);
        valueAnimator3.setStartDelay(j8);
        valueAnimator3.setRepeatCount(xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "repeatCount") != null ? typedArrayF.getInt(3, 0) : 0);
        valueAnimator3.setRepeatMode(xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "repeatMode") != null ? typedArrayF.getInt(4, 1) : 1);
        if (typedArrayF2 != null) {
            ObjectAnimator objectAnimator2 = (ObjectAnimator) valueAnimator3;
            String strB = b0.b.b(typedArrayF2, xmlPullParser, "pathData", 1);
            if (strB != null) {
                String strB2 = b0.b.b(typedArrayF2, xmlPullParser, "propertyXName", 2);
                String strB3 = b0.b.b(typedArrayF2, xmlPullParser, "propertyYName", 3);
                if (i9 != 2) {
                }
                if (strB2 == null && strB3 == null) {
                    throw new InflateException(typedArrayF2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path path = new Path();
                try {
                    c0.e.b(t4.b.d(strB), path);
                    PathMeasure pathMeasure = new PathMeasure(path, false);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(Float.valueOf(0.0f));
                    float length = 0.0f;
                    do {
                        length += pathMeasure.getLength();
                        arrayList.add(Float.valueOf(length));
                    } while (pathMeasure.nextContour());
                    PathMeasure pathMeasure2 = new PathMeasure(path, false);
                    int iMin = Math.min(100, ((int) (length / 0.5f)) + 1);
                    float[] fArr = new float[iMin];
                    float[] fArr2 = new float[iMin];
                    float[] fArr3 = new float[2];
                    float f9 = length / (iMin - 1);
                    int i11 = 0;
                    valueAnimator = valueAnimator3;
                    float f10 = 0.0f;
                    int i12 = 0;
                    while (true) {
                        if (i12 >= iMin) {
                            break;
                        }
                        int i13 = iMin;
                        pathMeasure2.getPosTan(f10 - ((Float) arrayList.get(i11)).floatValue(), fArr3, null);
                        fArr[i12] = fArr3[0];
                        fArr2[i12] = fArr3[1];
                        int i14 = i11 + 1;
                        f10 += f9;
                        if (i14 < arrayList.size() && f10 > ((Float) arrayList.get(i14)).floatValue()) {
                            pathMeasure2.nextContour();
                            i11 = i14;
                        }
                        i12++;
                        iMin = i13;
                    }
                    PropertyValuesHolder propertyValuesHolderOfFloat = strB2 != null ? PropertyValuesHolder.ofFloat(strB2, fArr) : null;
                    PropertyValuesHolder propertyValuesHolderOfFloat2 = strB3 != null ? PropertyValuesHolder.ofFloat(strB3, fArr2) : null;
                    if (propertyValuesHolderOfFloat == null) {
                        objectAnimator2.setValues(propertyValuesHolderOfFloat2);
                    } else if (propertyValuesHolderOfFloat2 == null) {
                        objectAnimator2.setValues(propertyValuesHolderOfFloat);
                    } else {
                        objectAnimator2.setValues(propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2);
                    }
                    i6 = 0;
                } catch (RuntimeException e9) {
                    throw new RuntimeException("Error in parsing ".concat(strB), e9);
                }
            } else {
                valueAnimator = valueAnimator3;
                i6 = 0;
                objectAnimator2.setPropertyName(b0.b.b(typedArrayF2, xmlPullParser, "propertyName", 0));
            }
        } else {
            valueAnimator = valueAnimator3;
            i6 = 0;
        }
        int resourceId = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "interpolator") != null ? typedArrayF.getResourceId(i6, i6) : i6;
        if (resourceId > 0) {
            valueAnimator2 = valueAnimator;
            valueAnimator2.setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
        } else {
            valueAnimator2 = valueAnimator;
        }
        typedArrayF.recycle();
        if (typedArrayF2 != null) {
            typedArrayF2.recycle();
        }
        return valueAnimator2;
    }
}
