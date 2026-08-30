package q2;

import com.engagelab.privates.push.constants.MTPushConstants;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o3.a f4846c = new o3.a(9);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final HashMap f4847d = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public StringBuilder f4849b;

    public z() {
        g.j("Request", MTPushConstants.Operation.KEY_TAG);
        this.f4848a = "FacebookSDK.".concat("Request");
        this.f4849b = new StringBuilder();
    }

    public final void a(String str, Object obj) {
        d7.g.f("key", str);
        d7.g.f("value", obj);
        synchronized (x1.r.f5919b) {
        }
    }

    public final void b() {
        synchronized (x1.r.f5919b) {
        }
    }
}
