package f7;

import d7.g;
import f4.h;
import java.util.Random;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h f2632c = new h(1);

    @Override // f7.a
    public final Random a() {
        Object obj = this.f2632c.get();
        g.e("get(...)", obj);
        return (Random) obj;
    }
}
