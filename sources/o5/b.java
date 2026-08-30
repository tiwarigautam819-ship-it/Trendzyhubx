package o5;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f4443b;

    public b(Set set, c cVar) {
        this.f4442a = b(set);
        this.f4443b = cVar;
    }

    public static String b(Set set) {
        StringBuilder sb = new StringBuilder();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            sb.append(aVar.f4440a);
            sb.append('/');
            sb.append(aVar.f4441b);
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    public final String a() {
        Set setUnmodifiableSet;
        String str = this.f4442a;
        c cVar = this.f4443b;
        synchronized (((HashSet) cVar.f4446b)) {
            setUnmodifiableSet = Collections.unmodifiableSet((HashSet) cVar.f4446b);
        }
        if (setUnmodifiableSet.isEmpty()) {
            return str;
        }
        return str + ' ' + b(cVar.n());
    }
}
