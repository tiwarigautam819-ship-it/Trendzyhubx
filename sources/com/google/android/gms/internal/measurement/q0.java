package com.google.android.gms.internal.measurement;

import com.engagelab.privates.core.api.WakeMessage;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a6 f1818a = new a6(5);

    public static e a(e eVar, com.google.firebase.messaging.y yVar, o oVar, Boolean bool, Boolean bool2) {
        e eVar2 = new e();
        Iterator itL = eVar.l();
        while (itL.hasNext()) {
            int iIntValue = ((Integer) itL.next()).intValue();
            if (eVar.k(iIntValue)) {
                n nVarE = oVar.e(yVar, Arrays.asList(eVar.e(iIntValue), new g(Double.valueOf(iIntValue)), eVar));
                if (nVarE.zzd().equals(bool)) {
                    break;
                }
                if (bool2 == null || nVarE.zzd().equals(bool2)) {
                    eVar2.j(iIntValue, nVarE);
                }
            }
        }
        return eVar2;
    }

    public static n b(e eVar, com.google.firebase.messaging.y yVar, ArrayList arrayList, boolean z5) {
        n nVarE;
        p4.n(1, "reduce", arrayList);
        p4.q("reduce", 2, arrayList);
        n nVarG = ((y4) yVar.f2163b).G(yVar, (n) arrayList.get(0));
        if (!(nVarG instanceof j)) {
            throw new IllegalArgumentException("Callback should be a method");
        }
        if (arrayList.size() == 2) {
            nVarE = ((y4) yVar.f2163b).G(yVar, (n) arrayList.get(1));
            if (nVarE instanceof h) {
                throw new IllegalArgumentException("Failed to parse initial value");
            }
        } else {
            if (eVar.g() == 0) {
                throw new IllegalStateException("Empty array with no initial value error");
            }
            nVarE = null;
        }
        j jVar = (j) nVarG;
        int iG = eVar.g();
        int i6 = z5 ? 0 : iG - 1;
        int i9 = z5 ? iG - 1 : 0;
        int i10 = z5 ? 1 : -1;
        if (nVarE == null) {
            nVarE = eVar.e(i6);
            i6 += i10;
        }
        while ((i9 - i6) * i10 >= 0) {
            if (eVar.k(i6)) {
                nVarE = jVar.e(yVar, Arrays.asList(nVarE, eVar.e(i6), new g(Double.valueOf(i6)), eVar));
                if (nVarE instanceof h) {
                    throw new IllegalStateException("Reduce operation failed");
                }
                i6 += i10;
            } else {
                i6 += i10;
            }
        }
        return nVarE;
    }

    public static String c(p5 p5Var) {
        StringBuilder sb = new StringBuilder(p5Var.e());
        for (int i6 = 0; i6 < p5Var.e(); i6++) {
            byte bA = p5Var.a(i6);
            if (bA == 34) {
                sb.append("\\\"");
            } else if (bA == 39) {
                sb.append("\\'");
            } else if (bA != 92) {
                switch (bA) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case WakeMessage.ACTIVITY /* 8 */:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bA < 32 || bA > 126) {
                            sb.append('\\');
                            sb.append((char) (((bA >>> 6) & 3) + 48));
                            sb.append((char) (((bA >>> 3) & 7) + 48));
                            sb.append((char) ((bA & 7) + 48));
                        } else {
                            sb.append((char) bA);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
