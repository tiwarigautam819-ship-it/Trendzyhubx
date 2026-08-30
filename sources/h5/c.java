package h5;

import com.google.android.gms.internal.measurement.y4;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f2984b;

    public /* synthetic */ c(d dVar, int i6) {
        this.f2983a = i6;
        this.f2984b = dVar;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.lang.Runnable
    public final void run() {
        i5.b bVarD;
        i5.b bVarI;
        switch (this.f2983a) {
            case 0:
                this.f2984b.b();
                return;
            case 1:
                d dVar = this.f2984b;
                synchronized (d.f2985m) {
                    try {
                        t4.g gVar = dVar.f2986a;
                        gVar.a();
                        y4 y4VarD = y4.d(gVar.f5320a);
                        try {
                            bVarD = dVar.f2988c.D();
                            if (y4VarD != null) {
                                y4VarD.E();
                            }
                        } catch (Throwable th) {
                            if (y4VarD != null) {
                                y4VarD.E();
                            }
                            throw th;
                        }
                    } finally {
                    }
                }
                try {
                    int i6 = bVarD.f3212b;
                    if (i6 == 5) {
                        bVarI = dVar.i(bVarD);
                    } else {
                        if (i6 == 3) {
                            bVarI = dVar.i(bVarD);
                        } else if (!dVar.f2989d.a(bVarD)) {
                            return;
                        } else {
                            bVarI = dVar.c(bVarD);
                        }
                    }
                    dVar.f(bVarI);
                    dVar.m(bVarD, bVarI);
                    if (bVarI.f3212b == 4) {
                        dVar.l(bVarI.f3211a);
                    }
                    int i9 = bVarI.f3212b;
                    if (i9 == 5) {
                        dVar.j(new f());
                        return;
                    } else if (i9 == 2 || i9 == 1) {
                        dVar.j(new IOException("Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."));
                        return;
                    } else {
                        dVar.k(bVarI);
                        return;
                    }
                } catch (f e9) {
                    dVar.j(e9);
                    return;
                }
            default:
                this.f2984b.b();
                return;
        }
    }
}
