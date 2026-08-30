package r0;

import android.text.InputFilter;
import android.widget.TextView;
import b2.k;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f4955a;

    public g(TextView textView) {
        this.f4955a = new f(textView);
    }

    @Override // b2.k
    public final InputFilter[] f(InputFilter[] inputFilterArr) {
        return !(p0.k.f4586k != null) ? inputFilterArr : this.f4955a.f(inputFilterArr);
    }

    @Override // b2.k
    public final void i(boolean z5) {
        if (p0.k.f4586k != null) {
            this.f4955a.i(z5);
        }
    }

    @Override // b2.k
    public final void j(boolean z5) {
        f fVar = this.f4955a;
        if (p0.k.f4586k != null) {
            fVar.j(z5);
        } else {
            fVar.f4954c = z5;
        }
    }
}
