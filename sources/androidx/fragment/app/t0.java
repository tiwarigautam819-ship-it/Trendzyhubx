package androidx.fragment.app;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class t0 extends e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f624a;

    public /* synthetic */ t0(int i6) {
        this.f624a = i6;
    }

    @Override // e.a
    public final Intent a(h0 h0Var, Object obj) {
        Bundle bundleExtra;
        switch (this.f624a) {
            case 0:
                d.i iVar = (d.i) obj;
                Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
                Intent intent2 = iVar.f2212b;
                if (intent2 != null && (bundleExtra = intent2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                    intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                    intent2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                    if (intent2.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                        iVar = new d.i(iVar.f2211a, null, iVar.f2213c, iVar.f2214d);
                    }
                }
                intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", iVar);
                if (y0.J(2)) {
                    Log.v("FragmentManager", "CreateIntent created the following intent: " + intent);
                }
                return intent;
            case 1:
                String[] strArr = (String[]) obj;
                d7.g.f("input", strArr);
                Intent intentPutExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
                d7.g.e("Intent(ACTION_REQUEST_PE…EXTRA_PERMISSIONS, input)", intentPutExtra);
                return intentPutExtra;
            default:
                Intent intent3 = (Intent) obj;
                d7.g.f("input", intent3);
                return intent3;
        }
    }

    @Override // e.a
    public k1.h b(h0 h0Var, Object obj) {
        switch (this.f624a) {
            case 1:
                String[] strArr = (String[]) obj;
                d7.g.f("input", strArr);
                if (strArr.length == 0) {
                    return new k1.h(6, s6.p.f5283a);
                }
                for (String str : strArr) {
                    if (z.c.a(h0Var, str) != 0) {
                        return null;
                    }
                }
                int iS = s6.r.s(strArr.length);
                if (iS < 16) {
                    iS = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(iS);
                for (String str2 : strArr) {
                    linkedHashMap.put(str2, Boolean.TRUE);
                }
                return new k1.h(6, linkedHashMap);
            default:
                return super.b(h0Var, obj);
        }
    }

    @Override // e.a
    public final Object c(Intent intent, int i6) {
        switch (this.f624a) {
            case 0:
                return new d.a(intent, i6);
            case 1:
                if (i6 == -1 && intent != null) {
                    String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                    int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                    if (intArrayExtra != null && stringArrayExtra != null) {
                        ArrayList arrayList = new ArrayList(intArrayExtra.length);
                        for (int i9 : intArrayExtra) {
                            arrayList.add(Boolean.valueOf(i9 == 0));
                        }
                        ArrayList arrayListO = s6.f.o(stringArrayExtra);
                        Iterator it = arrayListO.iterator();
                        Iterator it2 = arrayList.iterator();
                        ArrayList arrayList2 = new ArrayList(Math.min(s6.i.n(arrayListO), s6.i.n(arrayList)));
                        while (it.hasNext() && it2.hasNext()) {
                            arrayList2.add(new r6.d(it.next(), it2.next()));
                        }
                        return s6.r.w(arrayList2);
                    }
                }
                return s6.p.f5283a;
            default:
                return new d.a(intent, i6);
        }
    }
}
