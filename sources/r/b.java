package r;

import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final double f4940a = Math.cos(Math.toRadians(45.0d));

    public static float a(float f9, float f10, boolean z5) {
        if (!z5) {
            return f9;
        }
        return (float) (((1.0d - f4940a) * ((double) f10)) + ((double) f9));
    }

    public static float b(float f9, float f10, boolean z5) {
        if (!z5) {
            return f9 * 1.5f;
        }
        return (float) (((1.0d - f4940a) * ((double) f10)) + ((double) (f9 * 1.5f)));
    }
}
