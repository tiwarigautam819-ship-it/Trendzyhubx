package f2;

import c7.l;
import d7.g;
import d7.h;
import java.net.URLEncoder;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends h implements l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2535c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(int i6, Object obj) {
        super(1);
        this.f2534b = i6;
        this.f2535c = obj;
    }

    @Override // c7.l
    public final Object g(Object obj) {
        switch (this.f2534b) {
            case 0:
                String str = (String) obj;
                Object objOpt = ((JSONObject) this.f2535c).opt(str);
                if (objOpt != null) {
                    try {
                        return URLEncoder.encode(str, "UTF-8") + '=' + URLEncoder.encode(objOpt.toString(), "UTF-8");
                    } catch (Exception unused) {
                    }
                }
                return null;
            case 1:
                h7.c cVar = (h7.c) obj;
                g.f("it", cVar);
                return k7.g.L((CharSequence) this.f2535c, cVar);
            default:
                return obj == ((s6.c) this.f2535c) ? "(this Collection)" : String.valueOf(obj);
        }
    }
}
