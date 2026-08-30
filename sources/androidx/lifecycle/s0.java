package androidx.lifecycle;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f736a = new LinkedHashMap();

    public final void a() {
        LinkedHashMap linkedHashMap = this.f736a;
        Iterator it = linkedHashMap.values().iterator();
        while (it.hasNext()) {
            ((p0) it.next()).a();
        }
        linkedHashMap.clear();
    }
}
