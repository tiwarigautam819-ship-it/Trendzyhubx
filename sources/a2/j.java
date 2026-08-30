package a2;

import i2.t;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import q2.z;
import x1.e0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashSet f43a = t.i(200, 202);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashSet f44b = t.i(503, 504, 429);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static h f45c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static List f46d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f47e;

    public static final void a(String str, String str2, String str3) {
        d7.g.f("url", str2);
        o3.a aVar = z.f4846c;
        o3.a.j(e0.f5840d, "CAPITransformerWebRequests", " \n\nCloudbridge Configured: \n================\ndatasetID: %s\nurl: %s\naccessKey: %s\n\n", str, str2, str3);
        f45c = new h(str, str2, str3);
        f46d = new ArrayList();
    }

    public static List b() {
        List list = f46d;
        if (list != null) {
            return list;
        }
        d7.g.i("transformedEvents");
        throw null;
    }
}
