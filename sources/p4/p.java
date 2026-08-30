package p4;

import android.os.Parcel;
import java.lang.reflect.Modifier;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f4654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4655c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f4656d;

    public p() {
        this.f4653a = 0;
        this.f4655c = new Object();
    }

    public static String a(Class cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            return "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ".concat(cls.getName());
        }
        if (Modifier.isAbstract(modifiers)) {
            return "Abstract classes can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: ".concat(cls.getName());
        }
        return null;
    }

    public void b(w3.a aVar, j jVar) {
        y1.n nVar = (y1.n) ((o5.c) this.f4656d).f4446b;
        nVar.getClass();
        z3.a aVar2 = (z3.a) ((z3.c) aVar).getService();
        com.google.android.gms.common.internal.q qVar = (com.google.android.gms.common.internal.q) nVar.f6139a;
        aVar2.getClass();
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(aVar2.f2973d);
        int i6 = h4.b.f2974a;
        if (qVar == null) {
            parcelObtain.writeInt(0);
        } else {
            parcelObtain.writeInt(1);
            qVar.writeToParcel(parcelObtain, 0);
        }
        try {
            aVar2.f2972c.transact(1, parcelObtain, null, 1);
            parcelObtain.recycle();
            jVar.a(null);
        } catch (Throwable th) {
            parcelObtain.recycle();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public s5.n c(w5.a r8) {
        /*
            Method dump skipped, instruction units count: 370
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p4.p.c(w5.a):s5.n");
    }

    public void d(o oVar) {
        synchronized (this.f4655c) {
            try {
                if (((ArrayDeque) this.f4656d) == null) {
                    this.f4656d = new ArrayDeque();
                }
                ((ArrayDeque) this.f4656d).add(oVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void e(i iVar) {
        o oVar;
        synchronized (this.f4655c) {
            if (((ArrayDeque) this.f4656d) != null && !this.f4654b) {
                this.f4654b = true;
                while (true) {
                    synchronized (this.f4655c) {
                        try {
                            oVar = (o) ((ArrayDeque) this.f4656d).poll();
                            if (oVar == null) {
                                this.f4654b = false;
                                return;
                            }
                        } finally {
                        }
                    }
                    oVar.b(iVar);
                }
            }
        }
    }

    public String toString() {
        switch (this.f4653a) {
            case 1:
                return ((Map) this.f4655c).toString();
            default:
                return super.toString();
        }
    }

    public p(o5.c cVar, v3.c[] cVarArr, boolean z5) {
        this.f4653a = 2;
        this.f4656d = cVar;
        this.f4655c = cVarArr;
        boolean z8 = false;
        if (cVarArr != null && z5) {
            z8 = true;
        }
        this.f4654b = z8;
    }

    public p(Map map, boolean z5, List list) {
        this.f4653a = 1;
        this.f4655c = map;
        this.f4654b = z5;
        this.f4656d = list;
    }
}
