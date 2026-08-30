package b0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import j0.k0;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.regex.Pattern;
import m.g1;
import m.x2;
import r7.p;
import r7.s;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f855c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f856d;

    public /* synthetic */ d() {
        this.f853a = 1;
    }

    /* JADX WARN: Type inference failed for: r8v1, types: [byte[], java.io.Serializable, java.lang.Object] */
    public static final d c(String str, p pVar) {
        d7.g.f("<this>", str);
        Charset charset = k7.a.f3570a;
        if (pVar != null) {
            Pattern pattern = p.f5088e;
            Charset charsetA = pVar.a(null);
            if (charsetA == null) {
                pVar = y1.j.i(pVar + "; charset=utf-8");
            } else {
                charset = charsetA;
            }
        }
        ?? bytes = str.getBytes(charset);
        d7.g.e("this as java.lang.String).getBytes(charset)", bytes);
        int length = bytes.length;
        s7.b.c(bytes.length, 0, length);
        return new d(pVar, length, bytes, 3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01f5, code lost:
    
        if (r11 == 1) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01f8, code lost:
    
        if (r11 == 2) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01fa, code lost:
    
        r16 = (int[]) r0.f1990b;
        r17 = (float[]) r0.f1991c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0208, code lost:
    
        if (r10 == 1) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x020a, code lost:
    
        if (r10 == 2) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x020c, code lost:
    
        r0 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0219, code lost:
    
        r0 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x021c, code lost:
    
        r0 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x021f, code lost:
    
        r11 = new android.graphics.LinearGradient(r21, r22, r26, r27, r16, r17, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0223, code lost:
    
        r11 = new android.graphics.SweepGradient(r8, r9, (int[]) r0.f1990b, (float[]) r0.f1991c);
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0235, code lost:
    
        if (r25 <= 0.0f) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0237, code lost:
    
        r20 = (int[]) r0.f1990b;
        r21 = (float[]) r0.f1991c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0246, code lost:
    
        if (r10 == 1) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0249, code lost:
    
        if (r10 == 2) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x024b, code lost:
    
        r0 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0256, code lost:
    
        r0 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0259, code lost:
    
        r0 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x025c, code lost:
    
        r11 = new android.graphics.RadialGradient(r8, r9, r25, r20, r21, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0268, code lost:
    
        return new b0.d(r11, null, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0270, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01da, code lost:
    
        if (r13.size() <= 0) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01dc, code lost:
    
        r0 = new com.google.android.gms.internal.measurement.y4(r13, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01e2, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01e3, code lost:
    
        if (r0 == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01e7, code lost:
    
        if (r20 == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01e9, code lost:
    
        r0 = new com.google.android.gms.internal.measurement.y4(r6, r5, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01ef, code lost:
    
        r0 = new com.google.android.gms.internal.measurement.y4(r6, r12);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static b0.d d(android.content.res.Resources r30, int r31, android.content.res.Resources.Theme r32) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 665
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b0.d.d(android.content.res.Resources, int, android.content.res.Resources$Theme):b0.d");
    }

    public void a() {
        x2 x2Var;
        ImageView imageView = (ImageView) this.f855c;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            g1.a(drawable);
        }
        if (drawable == null || (x2Var = (x2) this.f856d) == null) {
            return;
        }
        m.p.d(drawable, x2Var, imageView.getDrawableState());
    }

    public j5.b b() {
        if ("".isEmpty()) {
            return new j5.b((String) this.f855c, ((Long) this.f856d).longValue(), this.f854b);
        }
        throw new IllegalStateException("Missing required properties:".concat(""));
    }

    public boolean e() {
        ColorStateList colorStateList;
        return ((Shader) this.f855c) == null && (colorStateList = (ColorStateList) this.f856d) != null && colorStateList.isStateful();
    }

    public void f(AttributeSet attributeSet, int i6) {
        int resourceId;
        ImageView imageView = (ImageView) this.f855c;
        Context context = imageView.getContext();
        int[] iArr = f.a.f2497f;
        c5.h hVarQ = c5.h.q(context, attributeSet, iArr, i6);
        TypedArray typedArray = (TypedArray) hVarQ.f1061c;
        k0.g(imageView, imageView.getContext(), iArr, attributeSet, (TypedArray) hVarQ.f1061c, i6, 0);
        try {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable = z7.l.j(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                g1.a(drawable);
            }
            if (typedArray.hasValue(2)) {
                imageView.setImageTintList(hVarQ.j(2));
            }
            if (typedArray.hasValue(3)) {
                imageView.setImageTintMode(g1.b(typedArray.getInt(3, -1), null));
            }
            hVarQ.s();
        } catch (Throwable th) {
            hVarQ.s();
            throw th;
        }
    }

    public String toString() {
        switch (this.f853a) {
            case 4:
                StringBuilder sb = new StringBuilder();
                if (((s) this.f855c) == s.HTTP_1_0) {
                    sb.append("HTTP/1.0");
                } else {
                    sb.append("HTTP/1.1");
                }
                sb.append(' ');
                sb.append(this.f854b);
                sb.append(' ');
                sb.append((String) this.f856d);
                String string = sb.toString();
                d7.g.e("StringBuilder().apply(builderAction).toString()", string);
                return string;
            default:
                return super.toString();
        }
    }

    public /* synthetic */ d(Object obj, int i6, Serializable serializable, int i9) {
        this.f853a = i9;
        this.f855c = obj;
        this.f854b = i6;
        this.f856d = serializable;
    }

    public d(ImageView imageView) {
        this.f853a = 2;
        this.f854b = 0;
        this.f855c = imageView;
    }

    public d(Shader shader, ColorStateList colorStateList, int i6) {
        this.f853a = 0;
        this.f855c = shader;
        this.f856d = colorStateList;
        this.f854b = i6;
    }
}
