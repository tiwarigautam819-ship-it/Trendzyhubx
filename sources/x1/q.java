package x1;

import com.engagelab.privates.core.api.WakeMessage;
import com.google.firebase.datatransport.TransportRegistrar;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q implements q2.n, v4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5917a;

    public /* synthetic */ q(int i6) {
        this.f5917a = i6;
    }

    @Override // v4.d
    public Object create(v4.c cVar) {
        com.google.firebase.messaging.y yVar = (com.google.firebase.messaging.y) cVar;
        switch (this.f5917a) {
            case 4:
                return TransportRegistrar.lambda$getComponents$0(yVar);
            case 5:
                return TransportRegistrar.lambda$getComponents$1(yVar);
            default:
                return TransportRegistrar.lambda$getComponents$2(yVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // q2.n
    public void d(boolean z5) {
        HashSet hashSet;
        HashSet hashSetF;
        Object[] objArr = 0;
        switch (this.f5917a) {
            case 0:
                if (z5 && !v2.a.b(j7.g.class)) {
                    try {
                        q2.w.f4844e.add(new y1.l());
                        q2.w.d();
                    } catch (Throwable th) {
                        v2.a.a(th, j7.g.class);
                        return;
                    }
                    break;
                }
                break;
            case 1:
                if (z5) {
                    r.f5928l = true;
                }
                break;
            case 2:
                if (z5) {
                    r.f5929m = true;
                }
                break;
            case 3:
                if (z5) {
                    r.f5930n = true;
                }
                break;
            case 4:
            case 5:
            case 6:
            default:
                if (z5) {
                    d2.b bVar = d2.b.f2254a;
                    if (!v2.a.b(d2.b.class)) {
                        try {
                            d2.b.f2255b = true;
                            d2.b.f2254a.a();
                        } catch (Throwable th2) {
                            v2.a.a(th2, d2.b.class);
                        }
                        break;
                    }
                }
                break;
            case 7:
                if (z5 && !v2.a.b(z1.a.class)) {
                    try {
                        try {
                            r.c().execute(new i2.c(15));
                        } catch (Exception unused) {
                            r rVar = r.f5918a;
                            return;
                        }
                    } catch (Throwable th3) {
                        v2.a.a(th3, z1.a.class);
                        return;
                    }
                    break;
                }
                break;
            case WakeMessage.ACTIVITY /* 8 */:
                if (z5) {
                    j2.a aVar = j2.a.f3342a;
                    if (!v2.a.b(j2.a.class)) {
                        try {
                            if (!j2.a.f3343b) {
                                j2.a aVar2 = j2.a.f3342a;
                                if (!v2.a.b(aVar2)) {
                                    try {
                                        q2.t tVarK = q2.w.k(r.b(), false);
                                        if (tVarK != null) {
                                            JSONArray jSONArray = tVarK.f4827s;
                                            HashSet hashSet2 = null;
                                            if (!v2.a.b(aVar2)) {
                                                try {
                                                    try {
                                                        hashSet = q2.g0.f(jSONArray);
                                                        if (hashSet == null) {
                                                            hashSet = new HashSet();
                                                        }
                                                    } catch (Exception unused2) {
                                                        hashSet = new HashSet();
                                                    }
                                                    hashSet2 = hashSet;
                                                } catch (Throwable th4) {
                                                    v2.a.a(th4, aVar2);
                                                }
                                            }
                                            j2.a.f3344c = hashSet2;
                                            break;
                                        }
                                    } catch (Throwable th5) {
                                        v2.a.a(th5, aVar2);
                                    }
                                }
                                j2.a.f3343b = !j2.a.f3344c.isEmpty();
                            }
                        } catch (Throwable th6) {
                            v2.a.a(th6, j2.a.class);
                            return;
                        }
                        break;
                    }
                }
                break;
            case 9:
                if (z5) {
                    i2.q qVar = i2.q.f3164a;
                    if (!v2.a.b(i2.q.class)) {
                        try {
                            if (k2.k.d()) {
                                i2.q.f3168e.set(true);
                                i2.q.d();
                            } else {
                                i2.p.m();
                            }
                        } catch (Throwable th7) {
                            v2.a.a(th7, i2.q.class);
                            return;
                        }
                        break;
                    }
                }
                break;
            case 10:
                if (z5) {
                    j2.i iVar = j2.i.f3367a;
                    if (!v2.a.b(j2.i.class)) {
                        try {
                            if (!j2.i.f3368b) {
                                j2.i iVar2 = j2.i.f3367a;
                                if (!v2.a.b(iVar2)) {
                                    try {
                                        q2.t tVarK2 = q2.w.k(r.b(), false);
                                        if (tVarK2 != null) {
                                            iVar2.a(tVarK2.f4826r);
                                            break;
                                        }
                                    } catch (Throwable th8) {
                                        v2.a.a(th8, iVar2);
                                    }
                                }
                                j2.i.f3368b = (j2.i.f3369c.isEmpty() && j2.i.f3370d.isEmpty()) ? false : true;
                            }
                        } catch (Throwable th9) {
                            v2.a.a(th9, j2.i.class);
                            return;
                        }
                        break;
                    }
                }
                break;
            case 11:
                if (z5) {
                    j2.f fVar = j2.f.f3356a;
                    if (!v2.a.b(j2.f.class)) {
                        try {
                            j2.f.f3357b = true;
                            j2.f.f3356a.a();
                        } catch (Throwable th10) {
                            v2.a.a(th10, j2.f.class);
                            return;
                        }
                        break;
                    }
                }
                break;
            case 12:
                if (z5 && !v2.a.b(j2.d.class)) {
                    try {
                        j2.d dVar = j2.d.f3351a;
                        if (!v2.a.b(dVar)) {
                            try {
                                q2.t tVarK3 = q2.w.k(r.b(), false);
                                if (tVarK3 != null) {
                                    j2.d.f3353c = tVarK3.f4822n;
                                    break;
                                }
                            } catch (Throwable th11) {
                                v2.a.a(th11, dVar);
                            }
                        }
                        if (j2.d.f3353c != null) {
                            j2.d.f3352b = true;
                        }
                    } catch (Throwable th12) {
                        v2.a.a(th12, j2.d.class);
                        return;
                    }
                    break;
                }
                break;
            case 13:
                if (z5) {
                    j2.b bVar2 = j2.b.f3345a;
                    if (!v2.a.b(j2.b.class)) {
                        try {
                            j2.b bVar3 = j2.b.f3345a;
                            if (!v2.a.b(bVar3)) {
                                try {
                                    q2.t tVarK4 = q2.w.k(r.b(), false);
                                    if (tVarK4 != null && (hashSetF = q2.g0.f(tVarK4.f4823o)) != null) {
                                        j2.b.f3347c = hashSetF;
                                    }
                                } catch (Throwable th13) {
                                    v2.a.a(th13, bVar3);
                                }
                            }
                            HashSet hashSet3 = j2.b.f3347c;
                            if (hashSet3 != null && !hashSet3.isEmpty()) {
                                j2.b.f3346b = true;
                            }
                        } catch (Throwable th14) {
                            v2.a.a(th14, j2.b.class);
                            return;
                        }
                        break;
                    }
                }
                break;
            case 14:
                if (z5) {
                    j2.g gVar = j2.g.f3360a;
                    if (!v2.a.b(j2.g.class)) {
                        try {
                            j2.g.f3360a.a();
                            if (!j2.g.f3362c.isEmpty()) {
                                j2.g.f3361b = true;
                            }
                        } catch (Throwable th15) {
                            v2.a.a(th15, j2.g.class);
                            return;
                        }
                        break;
                    }
                }
                break;
            case 15:
                if (z5) {
                    j2.h hVar = j2.h.f3363a;
                    if (!v2.a.b(j2.h.class)) {
                        try {
                            j2.h.f3363a.a();
                            if (j2.h.f3365c.isEmpty() && j2.h.f3366d.isEmpty()) {
                                j2.h.f3364b = false;
                            } else {
                                j2.h.f3364b = true;
                            }
                        } catch (Throwable th16) {
                            v2.a.a(th16, j2.h.class);
                            return;
                        }
                        break;
                    }
                }
                break;
            case 16:
                if (z5) {
                    e0 e0Var = e0.f5840d;
                    try {
                        z zVar = new z(null, r.b().concat("/cloudbridge_settings"), null, d0.f5827a, new a2.b(objArr == true ? 1 : 0));
                        o3.a aVar3 = q2.z.f4846c;
                        o3.a.j(e0Var, "a2.c", " \n\nCreating Graph Request: \n=============\n%s\n\n ", zVar);
                        zVar.d();
                    } catch (JSONException e9) {
                        o3.a aVar4 = q2.z.f4846c;
                        o3.a.j(e0Var, "a2.c", " \n\nGraph Request Exception: \n=============\n%s\n\n ", i2.t.q(e9));
                        return;
                    }
                }
                break;
            case 17:
                if (z5) {
                    f2.d dVar2 = f2.d.f2537a;
                    if (!v2.a.b(f2.d.class)) {
                        try {
                            f2.d.f2539c = true;
                            f2.d.f2540d = new e2.a(r.a());
                            f2.d.f2541e = "https://www." + r.f5933q + "/privacy_sandbox/mobile/register/trigger";
                        } catch (Throwable th17) {
                            v2.a.a(th17, f2.d.class);
                            return;
                        }
                        break;
                    }
                }
                break;
            case 18:
                if (z5) {
                    g2.b.a();
                }
                break;
            case 19:
                if (z5) {
                    AtomicBoolean atomicBoolean = h2.a.f2967a;
                    if (!v2.a.b(h2.a.class)) {
                        try {
                            h2.a.f2967a.set(true);
                        } catch (Throwable th18) {
                            v2.a.a(th18, h2.a.class);
                            return;
                        }
                        break;
                    }
                }
                break;
            case 20:
                if (z5) {
                    n2.b bVar4 = n2.b.f4324a;
                    if (!v2.a.b(n2.b.class)) {
                        try {
                            n2.b.f4325b = true;
                            n2.b.f4324a.b();
                        } catch (Throwable th19) {
                            v2.a.a(th19, n2.b.class);
                            return;
                        }
                        break;
                    }
                }
                break;
            case 21:
                if (z5) {
                    l2.d dVar3 = l2.d.f3772a;
                    if (!v2.a.b(l2.d.class)) {
                        try {
                            q2.g0.K(new i2.c(4));
                        } catch (Throwable th20) {
                            v2.a.a(th20, l2.d.class);
                            return;
                        }
                        break;
                    }
                }
                break;
        }
    }
}
