package y7;

import androidx.fragment.app.m1;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s implements Closeable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Logger f6347d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e8.i f6348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r f6349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f6350c;

    static {
        Logger logger = Logger.getLogger(f.class.getName());
        d7.g.e("getLogger(Http2::class.java.name)", logger);
        f6347d = logger;
    }

    public s(e8.q qVar) {
        d7.g.f(FirebaseAnalytics.Param.SOURCE, qVar);
        this.f6348a = qVar;
        r rVar = new r(qVar);
        this.f6349b = rVar;
        this.f6350c = new c(rVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x013c, code lost:
    
        throw new java.io.IOException(a1.a.i(r13, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(boolean r18, y7.k r19) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 616
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: y7.s.a(boolean, y7.k):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0107, code lost:
    
        if (r8 == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0109, code lost:
    
        r4.j(s7.b.f5288b, true);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(y7.k r19, int r20, int r21, int r22) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 294
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: y7.s.c(y7.k, int, int, int):void");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f6348a.close();
    }

    public final void g(k kVar, int i6, int i9) throws IOException {
        int i10;
        Object[] array;
        if (i6 < 8) {
            throw new IOException(a1.a.i(i6, "TYPE_GOAWAY length < 8: "));
        }
        if (i9 != 0) {
            throw new IOException("TYPE_GOAWAY streamId != 0");
        }
        int i11 = this.f6348a.readInt();
        int i12 = this.f6348a.readInt();
        int i13 = i6 - 8;
        int[] iArrH = m1.h(14);
        int length = iArrH.length;
        int i14 = 0;
        while (true) {
            if (i14 >= length) {
                i10 = 0;
                break;
            }
            i10 = iArrH[i14];
            if (m1.e(i10) == i12) {
                break;
            } else {
                i14++;
            }
        }
        if (i10 == 0) {
            throw new IOException(a1.a.i(i12, "TYPE_GOAWAY unexpected error code: "));
        }
        e8.j jVarE = e8.j.f2451d;
        if (i13 > 0) {
            jVarE = this.f6348a.e(i13);
        }
        d7.g.f("debugData", jVarE);
        jVarE.a();
        o oVar = kVar.f6307b;
        synchronized (oVar) {
            array = oVar.f6318b.values().toArray(new w[0]);
            oVar.f6322f = true;
        }
        for (w wVar : (w[]) array) {
            if (wVar.f6362a > i11 && wVar.h()) {
                wVar.k(8);
                kVar.f6307b.o(wVar.f6362a);
            }
        }
    }

    public final List o(int i6, int i9, int i10, int i11) throws IOException {
        r rVar = this.f6349b;
        rVar.f6345e = i6;
        rVar.f6342b = i6;
        rVar.f6346f = i9;
        rVar.f6343c = i10;
        rVar.f6344d = i11;
        c cVar = this.f6350c;
        e8.q qVar = cVar.f6281c;
        ArrayList arrayList = cVar.f6280b;
        while (!qVar.a()) {
            byte b3 = qVar.readByte();
            byte[] bArr = s7.b.f5287a;
            int i12 = b3 & 255;
            if (i12 == 128) {
                throw new IOException("index == 0");
            }
            if ((b3 & 128) == 128) {
                int iE = cVar.e(i12, ModuleDescriptor.MODULE_VERSION);
                int i13 = iE - 1;
                if (i13 >= 0) {
                    b[] bVarArr = e.f6293a;
                    if (i13 <= bVarArr.length - 1) {
                        arrayList.add(bVarArr[i13]);
                    }
                }
                int length = cVar.f6283e + 1 + (i13 - e.f6293a.length);
                if (length >= 0) {
                    b[] bVarArr2 = cVar.f6282d;
                    if (length < bVarArr2.length) {
                        b bVar = bVarArr2[length];
                        d7.g.c(bVar);
                        arrayList.add(bVar);
                    }
                }
                throw new IOException(a1.a.i(iE, "Header index too large "));
            }
            if (i12 == 64) {
                b[] bVarArr3 = e.f6293a;
                e8.j jVarD = cVar.d();
                e.a(jVarD);
                cVar.c(new b(jVarD, cVar.d()));
            } else if ((b3 & 64) == 64) {
                cVar.c(new b(cVar.b(cVar.e(i12, 63) - 1), cVar.d()));
            } else if ((b3 & 32) == 32) {
                int iE2 = cVar.e(i12, 31);
                cVar.f6279a = iE2;
                if (iE2 < 0 || iE2 > 4096) {
                    throw new IOException("Invalid dynamic table size update " + cVar.f6279a);
                }
                int i14 = cVar.f6285g;
                if (iE2 < i14) {
                    if (iE2 == 0) {
                        b[] bVarArr4 = cVar.f6282d;
                        s6.f.n(bVarArr4, 0, bVarArr4.length);
                        cVar.f6283e = cVar.f6282d.length - 1;
                        cVar.f6284f = 0;
                        cVar.f6285g = 0;
                    } else {
                        cVar.a(i14 - iE2);
                    }
                }
            } else if (i12 == 16 || i12 == 0) {
                b[] bVarArr5 = e.f6293a;
                e8.j jVarD2 = cVar.d();
                e.a(jVarD2);
                arrayList.add(new b(jVarD2, cVar.d()));
            } else {
                arrayList.add(new b(cVar.b(cVar.e(i12, 15) - 1), cVar.d()));
            }
        }
        List listW = s6.g.w(arrayList);
        arrayList.clear();
        return listW;
    }

    public final void s(k kVar, int i6, int i9, int i10) throws IOException {
        if (i10 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
        }
        int i11 = 0;
        int i12 = 1;
        boolean z5 = (i9 & 1) != 0;
        if ((i9 & 8) != 0) {
            byte b3 = this.f6348a.readByte();
            byte[] bArr = s7.b.f5287a;
            i11 = b3 & 255;
        }
        if ((i9 & 32) != 0) {
            e8.i iVar = this.f6348a;
            iVar.readInt();
            iVar.readByte();
            byte[] bArr2 = s7.b.f5287a;
            i6 -= 5;
        }
        List listO = o(q.a(i6, i9, i11), i11, i9, i10);
        o oVar = kVar.f6307b;
        if (i10 != 0 && (i10 & 1) == 0) {
            oVar.f6324i.c(new m(oVar.f6319c + '[' + i10 + "] onHeaders", oVar, i10, listO, z5), 0L);
            return;
        }
        synchronized (oVar) {
            w wVarC = oVar.c(i10);
            if (wVarC != null) {
                wVarC.j(s7.b.u(listO), z5);
                return;
            }
            if (oVar.f6322f) {
                return;
            }
            if (i10 <= oVar.f6320d) {
                return;
            }
            if (i10 % 2 == oVar.f6321e % 2) {
                return;
            }
            w wVar = new w(i10, oVar, false, z5, s7.b.u(listO));
            oVar.f6320d = i10;
            oVar.f6318b.put(Integer.valueOf(i10), wVar);
            oVar.f6323g.e().c(new i(oVar.f6319c + '[' + i10 + "] onStream", oVar, wVar, i12), 0L);
        }
    }

    public final void t(k kVar, int i6, int i9, int i10) throws IOException {
        if (i6 != 8) {
            throw new IOException(a1.a.i(i6, "TYPE_PING length != 8: "));
        }
        if (i10 != 0) {
            throw new IOException("TYPE_PING streamId != 0");
        }
        int i11 = this.f6348a.readInt();
        int i12 = this.f6348a.readInt();
        if (!((i9 & 1) != 0)) {
            kVar.f6307b.h.c(new j(q2.x.h(new StringBuilder(), kVar.f6307b.f6319c, " ping"), kVar.f6307b, i11, i12, 0), 0L);
            return;
        }
        o oVar = kVar.f6307b;
        synchronized (oVar) {
            try {
                if (i11 == 1) {
                    oVar.f6327l++;
                } else if (i11 == 2) {
                    oVar.f6329v++;
                } else if (i11 == 3) {
                    oVar.notifyAll();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void u(k kVar, int i6, int i9, int i10) throws IOException {
        int i11;
        if (i10 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
        }
        if ((i9 & 8) != 0) {
            byte b3 = this.f6348a.readByte();
            byte[] bArr = s7.b.f5287a;
            i11 = b3 & 255;
        } else {
            i11 = 0;
        }
        int i12 = this.f6348a.readInt() & Integer.MAX_VALUE;
        List listO = o(q.a(i6 - 4, i9, i11), i11, i9, i10);
        o oVar = kVar.f6307b;
        synchronized (oVar) {
            if (oVar.G.contains(Integer.valueOf(i12))) {
                oVar.v(i12, 2);
                return;
            }
            oVar.G.add(Integer.valueOf(i12));
            oVar.f6324i.c(new m(oVar.f6319c + '[' + i12 + "] onRequest", oVar, i12, listO), 0L);
        }
    }
}
