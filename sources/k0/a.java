package k0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends ClickableSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3482a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f3483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3484c;

    public a(int i6, d dVar, int i9) {
        this.f3482a = i6;
        this.f3483b = dVar;
        this.f3484c = i9;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f3482a);
        this.f3483b.f3492a.performAction(this.f3484c, bundle);
    }
}
