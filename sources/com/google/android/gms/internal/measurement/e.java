package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements i, n, Iterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TreeMap f1567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TreeMap f1568b;

    public e() {
        this.f1567a = new TreeMap();
        this.f1568b = new TreeMap();
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final n a() {
        e eVar = new e();
        for (Map.Entry entry : this.f1567a.entrySet()) {
            boolean z5 = entry.getValue() instanceof i;
            TreeMap treeMap = eVar.f1567a;
            if (z5) {
                treeMap.put((Integer) entry.getKey(), (n) entry.getValue());
            } else {
                treeMap.put((Integer) entry.getKey(), ((n) entry.getValue()).a());
            }
        }
        return eVar;
    }

    @Override // com.google.android.gms.internal.measurement.i
    public final void b(String str, n nVar) {
        TreeMap treeMap = this.f1568b;
        if (nVar == null) {
            treeMap.remove(str);
        } else {
            treeMap.put(str, nVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Double c() {
        TreeMap treeMap = this.f1567a;
        return treeMap.size() == 1 ? e(0).c() : treeMap.size() <= 0 ? Double.valueOf(0.0d) : Double.valueOf(Double.NaN);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x03a5, code lost:
    
        if (com.google.android.gms.internal.measurement.q0.a(r1, r28, (com.google.android.gms.internal.measurement.o) r0, java.lang.Boolean.FALSE, java.lang.Boolean.TRUE).g() != r1.g()) goto L241;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:50:0x00e9. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x040b  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x04b7  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x04fa  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0512  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0547  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x05d4  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0677  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x06a6  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x07b9  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x07c3  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0825  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x0888  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x016a  */
    @Override // com.google.android.gms.internal.measurement.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.measurement.n d(java.lang.String r27, com.google.firebase.messaging.y r28, java.util.ArrayList r29) {
        /*
            Method dump skipped, instruction units count: 2330
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.e.d(java.lang.String, com.google.firebase.messaging.y, java.util.ArrayList):com.google.android.gms.internal.measurement.n");
    }

    public final n e(int i6) {
        n nVar;
        if (i6 < g()) {
            return (!k(i6) || (nVar = (n) this.f1567a.get(Integer.valueOf(i6))) == null) ? n.f1743n : nVar;
        }
        throw new IndexOutOfBoundsException("Attempting to get element outside of current array");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (g() != eVar.g()) {
            return false;
        }
        TreeMap treeMap = this.f1567a;
        if (treeMap.isEmpty()) {
            return eVar.f1567a.isEmpty();
        }
        for (int iIntValue = ((Integer) treeMap.firstKey()).intValue(); iIntValue <= ((Integer) treeMap.lastKey()).intValue(); iIntValue++) {
            if (!e(iIntValue).equals(eVar.e(iIntValue))) {
                return false;
            }
        }
        return true;
    }

    public final void f(n nVar) {
        j(g(), nVar);
    }

    public final int g() {
        TreeMap treeMap = this.f1567a;
        if (treeMap.isEmpty()) {
            return 0;
        }
        return ((Integer) treeMap.lastKey()).intValue() + 1;
    }

    public final String h(String str) {
        if (str == null) {
            str = "";
        }
        StringBuilder sb = new StringBuilder();
        if (!this.f1567a.isEmpty()) {
            for (int i6 = 0; i6 < g(); i6++) {
                n nVarE = e(i6);
                sb.append(str);
                if (!(nVarE instanceof t) && !(nVarE instanceof l)) {
                    sb.append(nVarE.zzf());
                }
            }
            sb.delete(0, str.length());
        }
        return sb.toString();
    }

    public final int hashCode() {
        return this.f1567a.hashCode() * 31;
    }

    public final void i(int i6) {
        TreeMap treeMap = this.f1567a;
        int iIntValue = ((Integer) treeMap.lastKey()).intValue();
        if (i6 > iIntValue || i6 < 0) {
            return;
        }
        treeMap.remove(Integer.valueOf(i6));
        if (i6 == iIntValue) {
            int i9 = i6 - 1;
            if (treeMap.containsKey(Integer.valueOf(i9)) || i9 < 0) {
                return;
            }
            treeMap.put(Integer.valueOf(i9), n.f1743n);
            return;
        }
        while (true) {
            i6++;
            if (i6 > ((Integer) treeMap.lastKey()).intValue()) {
                return;
            }
            n nVar = (n) treeMap.get(Integer.valueOf(i6));
            if (nVar != null) {
                treeMap.put(Integer.valueOf(i6 - 1), nVar);
                treeMap.remove(Integer.valueOf(i6));
            }
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new r(2, this);
    }

    public final void j(int i6, n nVar) {
        if (i6 > 32468) {
            throw new IllegalStateException("Array too large");
        }
        if (i6 < 0) {
            throw new IndexOutOfBoundsException(a1.a.i(i6, "Out of bounds index: "));
        }
        TreeMap treeMap = this.f1567a;
        if (nVar == null) {
            treeMap.remove(Integer.valueOf(i6));
        } else {
            treeMap.put(Integer.valueOf(i6), nVar);
        }
    }

    public final boolean k(int i6) {
        if (i6 >= 0) {
            TreeMap treeMap = this.f1567a;
            if (i6 <= ((Integer) treeMap.lastKey()).intValue()) {
                return treeMap.containsKey(Integer.valueOf(i6));
            }
        }
        throw new IndexOutOfBoundsException(a1.a.i(i6, "Out of bounds index: "));
    }

    public final Iterator l() {
        return this.f1567a.keySet().iterator();
    }

    public final ArrayList m() {
        ArrayList arrayList = new ArrayList(g());
        for (int i6 = 0; i6 < g(); i6++) {
            arrayList.add(e(i6));
        }
        return arrayList;
    }

    public final String toString() {
        return h(",");
    }

    @Override // com.google.android.gms.internal.measurement.i
    public final n zza(String str) {
        n nVar;
        return "length".equals(str) ? new g(Double.valueOf(g())) : (!zzc(str) || (nVar = (n) this.f1568b.get(str)) == null) ? n.f1743n : nVar;
    }

    @Override // com.google.android.gms.internal.measurement.i
    public final boolean zzc(String str) {
        return "length".equals(str) || this.f1568b.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Boolean zzd() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final String zzf() {
        return h(",");
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Iterator zzh() {
        return new d(this.f1567a.keySet().iterator(), this.f1568b.keySet().iterator());
    }

    public e(List list) {
        this();
        if (list != null) {
            for (int i6 = 0; i6 < list.size(); i6++) {
                j(i6, (n) list.get(i6));
            }
        }
    }

    public e(n... nVarArr) {
        this(Arrays.asList(nVarArr));
    }
}
