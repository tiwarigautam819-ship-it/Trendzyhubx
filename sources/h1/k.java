package h1;

import android.graphics.Matrix;
import android.graphics.Paint;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Matrix f2919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f2920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f2921c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f2922d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f2923e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f2924f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f2925g;
    public float h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f2926i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Matrix f2927j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f2928k;

    public k() {
        this.f2919a = new Matrix();
        this.f2920b = new ArrayList();
        this.f2921c = 0.0f;
        this.f2922d = 0.0f;
        this.f2923e = 0.0f;
        this.f2924f = 1.0f;
        this.f2925g = 1.0f;
        this.h = 0.0f;
        this.f2926i = 0.0f;
        this.f2927j = new Matrix();
        this.f2928k = null;
    }

    @Override // h1.l
    public final boolean a() {
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f2920b;
            if (i6 >= arrayList.size()) {
                return false;
            }
            if (((l) arrayList.get(i6)).a()) {
                return true;
            }
            i6++;
        }
    }

    @Override // h1.l
    public final boolean b(int[] iArr) {
        int i6 = 0;
        boolean zB = false;
        while (true) {
            ArrayList arrayList = this.f2920b;
            if (i6 >= arrayList.size()) {
                return zB;
            }
            zB |= ((l) arrayList.get(i6)).b(iArr);
            i6++;
        }
    }

    public final void c() {
        Matrix matrix = this.f2927j;
        matrix.reset();
        matrix.postTranslate(-this.f2922d, -this.f2923e);
        matrix.postScale(this.f2924f, this.f2925g);
        matrix.postRotate(this.f2921c, 0.0f, 0.0f);
        matrix.postTranslate(this.h + this.f2922d, this.f2926i + this.f2923e);
    }

    public String getGroupName() {
        return this.f2928k;
    }

    public Matrix getLocalMatrix() {
        return this.f2927j;
    }

    public float getPivotX() {
        return this.f2922d;
    }

    public float getPivotY() {
        return this.f2923e;
    }

    public float getRotation() {
        return this.f2921c;
    }

    public float getScaleX() {
        return this.f2924f;
    }

    public float getScaleY() {
        return this.f2925g;
    }

    public float getTranslateX() {
        return this.h;
    }

    public float getTranslateY() {
        return this.f2926i;
    }

    public void setPivotX(float f9) {
        if (f9 != this.f2922d) {
            this.f2922d = f9;
            c();
        }
    }

    public void setPivotY(float f9) {
        if (f9 != this.f2923e) {
            this.f2923e = f9;
            c();
        }
    }

    public void setRotation(float f9) {
        if (f9 != this.f2921c) {
            this.f2921c = f9;
            c();
        }
    }

    public void setScaleX(float f9) {
        if (f9 != this.f2924f) {
            this.f2924f = f9;
            c();
        }
    }

    public void setScaleY(float f9) {
        if (f9 != this.f2925g) {
            this.f2925g = f9;
            c();
        }
    }

    public void setTranslateX(float f9) {
        if (f9 != this.h) {
            this.h = f9;
            c();
        }
    }

    public void setTranslateY(float f9) {
        if (f9 != this.f2926i) {
            this.f2926i = f9;
            c();
        }
    }

    public k(k kVar, s.e eVar) {
        m iVar;
        this.f2919a = new Matrix();
        this.f2920b = new ArrayList();
        this.f2921c = 0.0f;
        this.f2922d = 0.0f;
        this.f2923e = 0.0f;
        this.f2924f = 1.0f;
        this.f2925g = 1.0f;
        this.h = 0.0f;
        this.f2926i = 0.0f;
        Matrix matrix = new Matrix();
        this.f2927j = matrix;
        this.f2928k = null;
        this.f2921c = kVar.f2921c;
        this.f2922d = kVar.f2922d;
        this.f2923e = kVar.f2923e;
        this.f2924f = kVar.f2924f;
        this.f2925g = kVar.f2925g;
        this.h = kVar.h;
        this.f2926i = kVar.f2926i;
        String str = kVar.f2928k;
        this.f2928k = str;
        if (str != null) {
            eVar.put(str, this);
        }
        matrix.set(kVar.f2927j);
        ArrayList arrayList = kVar.f2920b;
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            Object obj = arrayList.get(i6);
            if (obj instanceof k) {
                this.f2920b.add(new k((k) obj, eVar));
            } else {
                if (obj instanceof j) {
                    j jVar = (j) obj;
                    j jVar2 = new j(jVar);
                    jVar2.f2910e = 0.0f;
                    jVar2.f2912g = 1.0f;
                    jVar2.h = 1.0f;
                    jVar2.f2913i = 0.0f;
                    jVar2.f2914j = 1.0f;
                    jVar2.f2915k = 0.0f;
                    jVar2.f2916l = Paint.Cap.BUTT;
                    jVar2.f2917m = Paint.Join.MITER;
                    jVar2.f2918n = 4.0f;
                    jVar2.f2909d = jVar.f2909d;
                    jVar2.f2910e = jVar.f2910e;
                    jVar2.f2912g = jVar.f2912g;
                    jVar2.f2911f = jVar.f2911f;
                    jVar2.f2931c = jVar.f2931c;
                    jVar2.h = jVar.h;
                    jVar2.f2913i = jVar.f2913i;
                    jVar2.f2914j = jVar.f2914j;
                    jVar2.f2915k = jVar.f2915k;
                    jVar2.f2916l = jVar.f2916l;
                    jVar2.f2917m = jVar.f2917m;
                    jVar2.f2918n = jVar.f2918n;
                    iVar = jVar2;
                } else if (obj instanceof i) {
                    iVar = new i((i) obj);
                } else {
                    throw new IllegalStateException("Unknown object in the tree!");
                }
                this.f2920b.add(iVar);
                Object obj2 = iVar.f2930b;
                if (obj2 != null) {
                    eVar.put(obj2, iVar);
                }
            }
        }
    }
}
