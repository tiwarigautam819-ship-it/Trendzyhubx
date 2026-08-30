package m;

import android.graphics.Typeface;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextView f4048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Typeface f4049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4050c;

    public n0(TextView textView, Typeface typeface, int i6) {
        this.f4048a = textView;
        this.f4049b = typeface;
        this.f4050c = i6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4048a.setTypeface(this.f4049b, this.f4050c);
    }
}
