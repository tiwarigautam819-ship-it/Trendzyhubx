package k7;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements j7.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f3579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final d7.h f3581c;

    /* JADX WARN: Multi-variable type inference failed */
    public c(CharSequence charSequence, int i6, c7.p pVar) {
        d7.g.f("input", charSequence);
        this.f3579a = charSequence;
        this.f3580b = i6;
        this.f3581c = (d7.h) pVar;
    }

    @Override // j7.e
    public final Iterator iterator() {
        return new b(this);
    }
}
