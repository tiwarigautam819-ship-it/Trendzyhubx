package h1;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Matrix f2932p = new Matrix();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Path f2933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Path f2934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Matrix f2935c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Paint f2936d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Paint f2937e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public PathMeasure f2938f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final k f2939g;
    public float h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f2940i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f2941j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f2942k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2943l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f2944m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Boolean f2945n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final s.e f2946o;

    public n() {
        this.f2935c = new Matrix();
        this.h = 0.0f;
        this.f2940i = 0.0f;
        this.f2941j = 0.0f;
        this.f2942k = 0.0f;
        this.f2943l = 255;
        this.f2944m = null;
        this.f2945n = null;
        this.f2946o = new s.e(0);
        this.f2939g = new k();
        this.f2933a = new Path();
        this.f2934b = new Path();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(k kVar, Matrix matrix, Canvas canvas, int i6, int i9) {
        int i10;
        float f9;
        int i11;
        float f10;
        Matrix matrix2 = kVar.f2919a;
        ArrayList arrayList = kVar.f2920b;
        matrix2.set(matrix);
        Matrix matrix3 = kVar.f2919a;
        matrix3.preConcat(kVar.f2927j);
        canvas.save();
        char c8 = 0;
        int i12 = 0;
        while (i12 < arrayList.size()) {
            l lVar = (l) arrayList.get(i12);
            if (lVar instanceof k) {
                a((k) lVar, matrix3, canvas, i6, i9);
            } else if (lVar instanceof m) {
                m mVar = (m) lVar;
                float f11 = i6 / this.f2941j;
                float f12 = i9 / this.f2942k;
                float fMin = Math.min(f11, f12);
                Matrix matrix4 = this.f2935c;
                matrix4.set(matrix3);
                matrix4.postScale(f11, f12);
                float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                matrix3.mapVectors(fArr);
                float fHypot = (float) Math.hypot(fArr[c8], fArr[1]);
                boolean z5 = c8;
                i10 = i12;
                float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                float f13 = (fArr[z5 ? 1 : 0] * fArr[3]) - (fArr[1] * fArr[2]);
                float fMax = Math.max(fHypot, fHypot2);
                float fAbs = fMax > 0.0f ? Math.abs(f13) / fMax : 0.0f;
                if (fAbs != 0.0f) {
                    Path path = this.f2933a;
                    path.reset();
                    c0.e[] eVarArr = mVar.f2929a;
                    if (eVarArr != null) {
                        c0.e.b(eVarArr, path);
                    }
                    Path path2 = this.f2934b;
                    path2.reset();
                    if (mVar instanceof i) {
                        path2.setFillType(mVar.f2931c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                        path2.addPath(path, matrix4);
                        canvas.clipPath(path2);
                    } else {
                        j jVar = (j) mVar;
                        float f14 = jVar.f2913i;
                        if (f14 != 0.0f || jVar.f2914j != 1.0f) {
                            float f15 = jVar.f2915k;
                            float f16 = (f14 + f15) % 1.0f;
                            float f17 = (jVar.f2914j + f15) % 1.0f;
                            if (this.f2938f == null) {
                                this.f2938f = new PathMeasure();
                            }
                            this.f2938f.setPath(path, z5);
                            float length = this.f2938f.getLength();
                            float f18 = f16 * length;
                            float f19 = f17 * length;
                            path.reset();
                            if (f18 > f19) {
                                this.f2938f.getSegment(f18, length, path, true);
                                f9 = 0.0f;
                                this.f2938f.getSegment(0.0f, f19, path, true);
                            } else {
                                f9 = 0.0f;
                                this.f2938f.getSegment(f18, f19, path, true);
                            }
                            path.rLineTo(f9, f9);
                        }
                        path2.addPath(path, matrix4);
                        b0.d dVar = jVar.f2911f;
                        if (((Shader) dVar.f855c) == null && dVar.f854b == 0) {
                            f10 = 255.0f;
                            i11 = 16777215;
                        } else {
                            if (this.f2937e == null) {
                                i11 = 16777215;
                                Paint paint = new Paint(1);
                                this.f2937e = paint;
                                paint.setStyle(Paint.Style.FILL);
                            } else {
                                i11 = 16777215;
                            }
                            Paint paint2 = this.f2937e;
                            Shader shader = (Shader) dVar.f855c;
                            if (shader != null) {
                                shader.setLocalMatrix(matrix4);
                                paint2.setShader(shader);
                                paint2.setAlpha(Math.round(jVar.h * 255.0f));
                                f10 = 255.0f;
                            } else {
                                paint2.setShader(null);
                                paint2.setAlpha(255);
                                int i13 = dVar.f854b;
                                float f20 = jVar.h;
                                PorterDuff.Mode mode = q.f2959j;
                                f10 = 255.0f;
                                paint2.setColor((i13 & i11) | (((int) (Color.alpha(i13) * f20)) << 24));
                            }
                            paint2.setColorFilter(null);
                            path2.setFillType(jVar.f2931c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            canvas.drawPath(path2, paint2);
                        }
                        b0.d dVar2 = jVar.f2909d;
                        if (((Shader) dVar2.f855c) != null || dVar2.f854b != 0) {
                            if (this.f2936d == null) {
                                Paint paint3 = new Paint(1);
                                this.f2936d = paint3;
                                paint3.setStyle(Paint.Style.STROKE);
                            }
                            Paint paint4 = this.f2936d;
                            Paint.Join join = jVar.f2917m;
                            if (join != null) {
                                paint4.setStrokeJoin(join);
                            }
                            Paint.Cap cap = jVar.f2916l;
                            if (cap != null) {
                                paint4.setStrokeCap(cap);
                            }
                            paint4.setStrokeMiter(jVar.f2918n);
                            Shader shader2 = (Shader) dVar2.f855c;
                            if (shader2 != null) {
                                shader2.setLocalMatrix(matrix4);
                                paint4.setShader(shader2);
                                paint4.setAlpha(Math.round(jVar.f2912g * f10));
                            } else {
                                paint4.setShader(null);
                                paint4.setAlpha(255);
                                int i14 = dVar2.f854b;
                                float f21 = jVar.f2912g;
                                PorterDuff.Mode mode2 = q.f2959j;
                                paint4.setColor((i14 & i11) | (((int) (Color.alpha(i14) * f21)) << 24));
                            }
                            paint4.setColorFilter(null);
                            paint4.setStrokeWidth(jVar.f2910e * fMin * fAbs);
                            canvas.drawPath(path2, paint4);
                        }
                    }
                }
                i12 = i10 + 1;
                c8 = 0;
            }
            i10 = i12;
            i12 = i10 + 1;
            c8 = 0;
        }
        canvas.restore();
    }

    public float getAlpha() {
        return getRootAlpha() / 255.0f;
    }

    public int getRootAlpha() {
        return this.f2943l;
    }

    public void setAlpha(float f9) {
        setRootAlpha((int) (f9 * 255.0f));
    }

    public void setRootAlpha(int i6) {
        this.f2943l = i6;
    }

    public n(n nVar) {
        this.f2935c = new Matrix();
        this.h = 0.0f;
        this.f2940i = 0.0f;
        this.f2941j = 0.0f;
        this.f2942k = 0.0f;
        this.f2943l = 255;
        this.f2944m = null;
        this.f2945n = null;
        s.e eVar = new s.e(0);
        this.f2946o = eVar;
        this.f2939g = new k(nVar.f2939g, eVar);
        this.f2933a = new Path(nVar.f2933a);
        this.f2934b = new Path(nVar.f2934b);
        this.h = nVar.h;
        this.f2940i = nVar.f2940i;
        this.f2941j = nVar.f2941j;
        this.f2942k = nVar.f2942k;
        this.f2943l = nVar.f2943l;
        this.f2944m = nVar.f2944m;
        String str = nVar.f2944m;
        if (str != null) {
            eVar.put(str, this);
        }
        this.f2945n = nVar.f2945n;
    }
}
