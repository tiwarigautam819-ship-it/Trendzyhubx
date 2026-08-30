package j7;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import s6.o;

/* JADX INFO: loaded from: classes.dex */
public abstract class f extends g {
    public static List A(e eVar) {
        Iterator it = eVar.iterator();
        if (!it.hasNext()) {
            return o.f5282a;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return f4.f.b(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static String z(e eVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int i6 = 0;
        for (Object obj : eVar) {
            i6++;
            if (i6 > 1) {
                sb.append((CharSequence) str);
            }
            android.support.v4.media.session.a.a(sb, obj, null);
        }
        sb.append((CharSequence) "");
        String string = sb.toString();
        d7.g.e("toString(...)", string);
        return string;
    }
}
