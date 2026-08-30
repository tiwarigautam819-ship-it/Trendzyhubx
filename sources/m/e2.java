package m;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3947a;

    public /* synthetic */ e2(int i6) {
        this.f3947a = i6;
    }

    public final Drawable a(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
        switch (this.f3947a) {
            case 0:
                String classAttribute = attributeSet.getClassAttribute();
                if (classAttribute != null) {
                    try {
                        Drawable drawable = (Drawable) e2.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(null).newInstance(null);
                        j.a.c(drawable, context.getResources(), xmlResourceParser, attributeSet, theme);
                    } catch (Exception e9) {
                        Log.e("DrawableDelegate", "Exception while inflating <drawable>", e9);
                        return null;
                    }
                }
                break;
            case 1:
                try {
                } catch (Exception e10) {
                    Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e10);
                    return null;
                }
                break;
            case 2:
                try {
                    Resources resources = context.getResources();
                    h1.e eVar = new h1.e(context);
                    eVar.inflate(resources, xmlResourceParser, attributeSet, theme);
                } catch (Exception e11) {
                    Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e11);
                    return null;
                }
                break;
            default:
                try {
                    Resources resources2 = context.getResources();
                    h1.q qVar = new h1.q();
                    qVar.inflate(resources2, xmlResourceParser, attributeSet, theme);
                } catch (Exception e12) {
                    Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e12);
                    return null;
                }
                break;
        }
        return null;
    }
}
