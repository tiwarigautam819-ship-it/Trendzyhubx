package androidx.fragment.app;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class x0 implements v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y0 f634a;

    public x0(y0 y0Var) {
        this.f634a = y0Var;
    }

    @Override // androidx.fragment.app.v0
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        boolean zR;
        y0 y0Var = this.f634a;
        ArrayList arrayList3 = y0Var.f652n;
        if (y0.J(2)) {
            Log.v("FragmentManager", "FragmentManager has the following pending actions inside of prepareBackStackState: " + y0Var.f640a);
        }
        int i6 = 0;
        if (y0Var.f643d.isEmpty()) {
            Log.i("FragmentManager", "Ignoring call to start back stack pop because the back stack is empty.");
            zR = false;
        } else {
            ArrayList arrayList4 = y0Var.f643d;
            a aVar = (a) arrayList4.get(arrayList4.size() - 1);
            y0Var.h = aVar;
            ArrayList arrayList5 = aVar.f418a;
            int size = arrayList5.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayList5.get(i9);
                i9++;
                c0 c0Var = ((h1) obj).f535b;
                if (c0Var != null) {
                    c0Var.f476m = true;
                }
            }
            zR = y0Var.R(arrayList, arrayList2, -1, 0);
        }
        if (!arrayList3.isEmpty() && arrayList.size() > 0) {
            ((Boolean) arrayList2.get(arrayList.size() - 1)).getClass();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int size2 = arrayList.size();
            int i10 = 0;
            while (i10 < size2) {
                Object obj2 = arrayList.get(i10);
                i10++;
                linkedHashSet.addAll(y0.E((a) obj2));
            }
            int size3 = arrayList3.size();
            while (i6 < size3) {
                Object obj3 = arrayList3.get(i6);
                i6++;
                if (obj3 != null) {
                    throw new ClassCastException();
                }
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    throw null;
                }
            }
        }
        return zR;
    }
}
