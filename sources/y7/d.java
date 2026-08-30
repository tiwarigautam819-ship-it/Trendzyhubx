package y7;

import com.engagelab.privates.core.constants.MTCoreConstants;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.io.EOFException;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e8.g f6286a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f6288c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6292g;
    public int h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6287b = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6289d = 4096;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b[] f6290e = new b[8];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6291f = 7;

    public d(e8.g gVar) {
        this.f6286a = gVar;
    }

    public final void a(int i6) {
        int i9;
        if (i6 > 0) {
            int length = this.f6290e.length - 1;
            int i10 = 0;
            while (true) {
                i9 = this.f6291f;
                if (length < i9 || i6 <= 0) {
                    break;
                }
                b bVar = this.f6290e[length];
                d7.g.c(bVar);
                i6 -= bVar.f6277c;
                int i11 = this.h;
                b bVar2 = this.f6290e[length];
                d7.g.c(bVar2);
                this.h = i11 - bVar2.f6277c;
                this.f6292g--;
                i10++;
                length--;
            }
            b[] bVarArr = this.f6290e;
            int i12 = i9 + 1;
            System.arraycopy(bVarArr, i12, bVarArr, i12 + i10, this.f6292g);
            b[] bVarArr2 = this.f6290e;
            int i13 = this.f6291f + 1;
            Arrays.fill(bVarArr2, i13, i13 + i10, (Object) null);
            this.f6291f += i10;
        }
    }

    public final void b(b bVar) {
        int i6 = bVar.f6277c;
        int i9 = this.f6289d;
        if (i6 > i9) {
            b[] bVarArr = this.f6290e;
            s6.f.n(bVarArr, 0, bVarArr.length);
            this.f6291f = this.f6290e.length - 1;
            this.f6292g = 0;
            this.h = 0;
            return;
        }
        a((this.h + i6) - i9);
        int i10 = this.f6292g + 1;
        b[] bVarArr2 = this.f6290e;
        if (i10 > bVarArr2.length) {
            b[] bVarArr3 = new b[bVarArr2.length * 2];
            System.arraycopy(bVarArr2, 0, bVarArr3, bVarArr2.length, bVarArr2.length);
            this.f6291f = this.f6290e.length - 1;
            this.f6290e = bVarArr3;
        }
        int i11 = this.f6291f;
        this.f6291f = i11 - 1;
        this.f6290e[i11] = bVar;
        this.f6292g++;
        this.h += i6;
    }

    public final void c(e8.j jVar) throws EOFException {
        d7.g.f(MTCoreConstants.Protocol.KEY_DATA, jVar);
        int[] iArr = y.f6381a;
        int iA = jVar.a();
        long j3 = 0;
        long j8 = 0;
        for (int i6 = 0; i6 < iA; i6++) {
            byte bD = jVar.d(i6);
            byte[] bArr = s7.b.f5287a;
            j8 += (long) y.f6382b[bD & 255];
        }
        int i9 = (int) ((j8 + ((long) 7)) >> 3);
        int iA2 = jVar.a();
        e8.g gVar = this.f6286a;
        if (i9 >= iA2) {
            e(jVar.a(), ModuleDescriptor.MODULE_VERSION, 0);
            gVar.w(jVar);
            return;
        }
        e8.g gVar2 = new e8.g();
        int[] iArr2 = y.f6381a;
        int iA3 = jVar.a();
        int i10 = 0;
        for (int i11 = 0; i11 < iA3; i11++) {
            byte bD2 = jVar.d(i11);
            byte[] bArr2 = s7.b.f5287a;
            int i12 = bD2 & 255;
            int i13 = y.f6381a[i12];
            byte b3 = y.f6382b[i12];
            j3 = (j3 << b3) | ((long) i13);
            i10 += b3;
            while (i10 >= 8) {
                i10 -= 8;
                gVar2.z((int) (j3 >> i10));
            }
        }
        if (i10 > 0) {
            gVar2.z((int) ((j3 << (8 - i10)) | (255 >>> i10)));
        }
        e8.j jVarE = gVar2.e(gVar2.f2450b);
        e(jVarE.a(), ModuleDescriptor.MODULE_VERSION, 128);
        gVar.w(jVarE);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void d(java.util.ArrayList r14) throws java.io.EOFException {
        /*
            Method dump skipped, instruction units count: 254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: y7.d.d(java.util.ArrayList):void");
    }

    public final void e(int i6, int i9, int i10) {
        e8.g gVar = this.f6286a;
        if (i6 < i9) {
            gVar.z(i6 | i10);
            return;
        }
        gVar.z(i10 | i9);
        int i11 = i6 - i9;
        while (i11 >= 128) {
            gVar.z(128 | (i11 & ModuleDescriptor.MODULE_VERSION));
            i11 >>>= 7;
        }
        gVar.z(i11);
    }
}
