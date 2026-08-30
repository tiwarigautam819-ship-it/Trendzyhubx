package y7;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e8.q f6281c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6284f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6285g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f6279a = 4096;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f6280b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b[] f6282d = new b[8];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6283e = 7;

    public c(r rVar) {
        this.f6281c = new e8.q(rVar);
    }

    public final int a(int i6) {
        int i9;
        int i10 = 0;
        if (i6 > 0) {
            int length = this.f6282d.length;
            while (true) {
                length--;
                i9 = this.f6283e;
                if (length < i9 || i6 <= 0) {
                    break;
                }
                b bVar = this.f6282d[length];
                d7.g.c(bVar);
                int i11 = bVar.f6277c;
                i6 -= i11;
                this.f6285g -= i11;
                this.f6284f--;
                i10++;
            }
            b[] bVarArr = this.f6282d;
            System.arraycopy(bVarArr, i9 + 1, bVarArr, i9 + 1 + i10, this.f6284f);
            this.f6283e += i10;
        }
        return i10;
    }

    public final e8.j b(int i6) throws IOException {
        if (i6 >= 0) {
            b[] bVarArr = e.f6293a;
            if (i6 <= bVarArr.length - 1) {
                return bVarArr[i6].f6275a;
            }
        }
        int length = this.f6283e + 1 + (i6 - e.f6293a.length);
        if (length >= 0) {
            b[] bVarArr2 = this.f6282d;
            if (length < bVarArr2.length) {
                b bVar = bVarArr2[length];
                d7.g.c(bVar);
                return bVar.f6275a;
            }
        }
        throw new IOException("Header index too large " + (i6 + 1));
    }

    public final void c(b bVar) {
        this.f6280b.add(bVar);
        int i6 = bVar.f6277c;
        int i9 = this.f6279a;
        if (i6 > i9) {
            b[] bVarArr = this.f6282d;
            s6.f.n(bVarArr, 0, bVarArr.length);
            this.f6283e = this.f6282d.length - 1;
            this.f6284f = 0;
            this.f6285g = 0;
            return;
        }
        a((this.f6285g + i6) - i9);
        int i10 = this.f6284f + 1;
        b[] bVarArr2 = this.f6282d;
        if (i10 > bVarArr2.length) {
            b[] bVarArr3 = new b[bVarArr2.length * 2];
            System.arraycopy(bVarArr2, 0, bVarArr3, bVarArr2.length, bVarArr2.length);
            this.f6283e = this.f6282d.length - 1;
            this.f6282d = bVarArr3;
        }
        int i11 = this.f6283e;
        this.f6283e = i11 - 1;
        this.f6282d[i11] = bVar;
        this.f6284f++;
        this.f6285g += i6;
    }

    public final e8.j d() {
        e8.q qVar = this.f6281c;
        byte b3 = qVar.readByte();
        byte[] bArr = s7.b.f5287a;
        int i6 = b3 & 255;
        int i9 = 0;
        boolean z5 = (b3 & 128) == 128;
        long jE = e(i6, ModuleDescriptor.MODULE_VERSION);
        if (!z5) {
            return qVar.e(jE);
        }
        e8.g gVar = new e8.g();
        int[] iArr = y.f6381a;
        d7.g.f(FirebaseAnalytics.Param.SOURCE, qVar);
        k6.b bVar = y.f6383c;
        k6.b bVar2 = bVar;
        int i10 = 0;
        for (long j3 = 0; j3 < jE; j3++) {
            byte b7 = qVar.readByte();
            byte[] bArr2 = s7.b.f5287a;
            i9 = (i9 << 8) | (b7 & 255);
            i10 += 8;
            while (i10 >= 8) {
                k6.b[] bVarArr = (k6.b[]) bVar2.f3564d;
                d7.g.c(bVarArr);
                bVar2 = bVarArr[(i9 >>> (i10 - 8)) & 255];
                d7.g.c(bVar2);
                if (((k6.b[]) bVar2.f3564d) == null) {
                    gVar.z(bVar2.f3562b);
                    i10 -= bVar2.f3563c;
                    bVar2 = bVar;
                } else {
                    i10 -= 8;
                }
            }
        }
        while (i10 > 0) {
            k6.b[] bVarArr2 = (k6.b[]) bVar2.f3564d;
            d7.g.c(bVarArr2);
            k6.b bVar3 = bVarArr2[(i9 << (8 - i10)) & 255];
            d7.g.c(bVar3);
            int i11 = bVar3.f3563c;
            if (((k6.b[]) bVar3.f3564d) != null || i11 > i10) {
                break;
            }
            gVar.z(bVar3.f3562b);
            i10 -= i11;
            bVar2 = bVar;
        }
        return gVar.e(gVar.f2450b);
    }

    public final int e(int i6, int i9) {
        int i10 = i6 & i9;
        if (i10 < i9) {
            return i10;
        }
        int i11 = 0;
        while (true) {
            byte b3 = this.f6281c.readByte();
            byte[] bArr = s7.b.f5287a;
            int i12 = b3 & 255;
            if ((b3 & 128) == 0) {
                return i9 + (i12 << i11);
            }
            i9 += (b3 & 127) << i11;
            i11 += 7;
        }
    }
}
