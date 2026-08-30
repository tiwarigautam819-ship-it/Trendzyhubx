package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class a extends ViewGroup.MarginLayoutParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2638a;

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2638a = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.a.f2493b);
        this.f2638a = typedArrayObtainStyledAttributes.getInt(0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    public a(a aVar) {
        super((ViewGroup.MarginLayoutParams) aVar);
        this.f2638a = 0;
        this.f2638a = aVar.f2638a;
    }

    public a(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f2638a = 0;
    }
}
