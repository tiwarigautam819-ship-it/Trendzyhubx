package i8;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q5.l f3233a = new q5.l();

    public static String a(Object obj) {
        if (obj == null) {
            return "null";
        }
        boolean z5 = obj instanceof String;
        q5.l lVar = f3233a;
        if (z5) {
            return lVar.d((String) obj);
        }
        if ((obj instanceof Number) || (obj instanceof Boolean)) {
            return String.valueOf(obj);
        }
        int i6 = 0;
        if (obj instanceof List) {
            List list = (List) obj;
            StringBuilder sb = new StringBuilder("[");
            while (i6 < list.size()) {
                if (i6 > 0) {
                    sb.append(",");
                }
                sb.append(a(list.get(i6)));
                i6++;
            }
            sb.append("]");
            return sb.toString();
        }
        if (!(obj instanceof Map)) {
            throw new IllegalArgumentException("Unsupported type for stableStringify: " + obj.getClass());
        }
        Map map = (Map) obj;
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : map.keySet()) {
            if (!(obj2 instanceof String)) {
                throw new IllegalArgumentException("Only string keys are supported in stableStringify");
            }
            arrayList.add((String) obj2);
        }
        Collections.sort(arrayList);
        StringBuilder sb2 = new StringBuilder("{");
        while (i6 < arrayList.size()) {
            if (i6 > 0) {
                sb2.append(",");
            }
            String str = (String) arrayList.get(i6);
            sb2.append(lVar.d(str));
            sb2.append(":");
            sb2.append(a(map.get(str)));
            i6++;
        }
        sb2.append("}");
        return sb2.toString();
    }
}
