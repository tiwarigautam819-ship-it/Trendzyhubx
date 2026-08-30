package i2;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import q2.w;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f3153a = f4.f.b("fb_currency");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f3154b = f4.f.b("_valueToSum");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f3155c = TimeUnit.MINUTES.toMillis(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final List f3156d = s6.h.k(new r6.d("fb_iap_product_id", f4.f.b("fb_iap_product_id")), new r6.d("fb_iap_product_description", f4.f.b("fb_iap_product_description")), new r6.d("fb_iap_product_title", f4.f.b("fb_iap_product_title")), new r6.d("fb_iap_purchase_token", f4.f.b("fb_iap_purchase_token")));

    public static r6.d a(Bundle bundle, Bundle bundle2, y1.o oVar) {
        if (bundle == null) {
            return new r6.d(bundle2, oVar);
        }
        try {
            for (String str : bundle.keySet()) {
                String string = bundle.getString(str);
                if (string != null) {
                    Map map = y1.o.f6140b;
                    d7.g.e("key", str);
                    r6.d dVarC = y1.g.c(str, string, bundle2, oVar);
                    Bundle bundle3 = (Bundle) dVarC.f4993a;
                    oVar = (y1.o) dVarC.f4994b;
                    bundle2 = bundle3;
                }
            }
        } catch (Exception unused) {
        }
        return new r6.d(bundle2, oVar);
    }

    public static List b(boolean z5) {
        q2.t tVarB = w.b(x1.r.b());
        if ((tVarB != null ? tVarB.f4830v : null) != null) {
            List<r6.d> list = tVarB.f4830v;
            if (!list.isEmpty()) {
                if (!z5) {
                    return list;
                }
                ArrayList arrayList = new ArrayList();
                for (r6.d dVar : list) {
                    Iterator it = ((List) dVar.f4994b).iterator();
                    while (it.hasNext()) {
                        arrayList.add(new r6.d((String) it.next(), f4.f.b(dVar.f4993a)));
                    }
                }
                return arrayList;
            }
        }
        return f3156d;
    }

    public static List c(boolean z5) {
        q2.t tVarB = w.b(x1.r.b());
        if (tVarB == null) {
            return null;
        }
        List<r6.d> list = tVarB.f4831w;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return null;
        }
        if (!z5) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (r6.d dVar : list) {
            Iterator it = ((List) dVar.f4994b).iterator();
            while (it.hasNext()) {
                arrayList.add(new r6.d((String) it.next(), f4.f.b(dVar.f4993a)));
            }
        }
        return arrayList;
    }
}
