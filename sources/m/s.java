package m;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f4081a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k1.h f4082b;

    public s(TextView textView) {
        this.f4081a = textView;
        this.f4082b = new k1.h(textView);
    }

    public final void a(AttributeSet attributeSet, int i6) {
        TypedArray typedArrayObtainStyledAttributes = this.f4081a.getContext().obtainStyledAttributes(attributeSet, f.a.f2499i, i6, 0);
        try {
            boolean z5 = typedArrayObtainStyledAttributes.hasValue(14) ? typedArrayObtainStyledAttributes.getBoolean(14, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            c(z5);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void b(boolean z5) {
        ((b2.k) this.f4082b.f3502b).i(z5);
    }

    public final void c(boolean z5) {
        ((b2.k) this.f4082b.f3502b).j(z5);
    }
}
