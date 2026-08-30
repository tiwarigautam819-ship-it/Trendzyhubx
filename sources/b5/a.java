package b5;

import c5.f;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements z4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f957a;

    @Override // z4.a
    public final void a(Object obj, Object obj2) {
        switch (this.f957a) {
            case 0:
                throw new z4.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
            case 1:
                Map.Entry entry = (Map.Entry) obj;
                z4.e eVar = (z4.e) obj2;
                eVar.e(f.f1050g, entry.getKey());
                eVar.e(f.h, entry.getValue());
                return;
            default:
                throw new z4.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }
    }
}
