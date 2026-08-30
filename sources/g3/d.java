package g3;

import android.content.Context;
import c5.h;
import com.google.android.datatransport.cct.CctBackendFactory;
import com.google.android.gms.internal.measurement.y4;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y4 f2864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f2865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f2866c;

    public d(Context context, h hVar) {
        y4 y4Var = new y4(13, context);
        this.f2866c = new HashMap();
        this.f2864a = y4Var;
        this.f2865b = hVar;
    }

    public final synchronized e a(String str) {
        if (this.f2866c.containsKey(str)) {
            return (e) this.f2866c.get(str);
        }
        CctBackendFactory cctBackendFactoryY = this.f2864a.y(str);
        if (cctBackendFactoryY == null) {
            return null;
        }
        h hVar = this.f2865b;
        e eVarCreate = cctBackendFactoryY.create(new b((Context) hVar.f1060b, (o3.a) hVar.f1061c, (o3.a) hVar.f1062d, str));
        this.f2866c.put(str, eVarCreate);
        return eVarCreate;
    }
}
