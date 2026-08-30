package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d7 extends e7 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1562b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d7(Unsafe unsafe, int i6) {
        super(unsafe);
        this.f1562b = i6;
    }

    @Override // com.google.android.gms.internal.measurement.e7
    public final double a(long j3, Object obj) {
        switch (this.f1562b) {
        }
        return Double.longBitsToDouble(k(j3, obj));
    }

    @Override // com.google.android.gms.internal.measurement.e7
    public final void b(Object obj, long j3, byte b3) {
        switch (this.f1562b) {
            case 0:
                if (!f7.f1642g) {
                    f7.h(obj, j3, b3);
                } else {
                    f7.g(obj, j3, b3);
                }
                break;
            default:
                if (!f7.f1642g) {
                    f7.h(obj, j3, b3);
                } else {
                    f7.g(obj, j3, b3);
                }
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.e7
    public final void c(Object obj, long j3, double d6) {
        switch (this.f1562b) {
            case 0:
                f(obj, j3, Double.doubleToLongBits(d6));
                break;
            default:
                f(obj, j3, Double.doubleToLongBits(d6));
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.e7
    public final void d(Object obj, long j3, float f9) {
        switch (this.f1562b) {
            case 0:
                e(obj, j3, Float.floatToIntBits(f9));
                break;
            default:
                e(obj, j3, Float.floatToIntBits(f9));
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.e7
    public final void g(Object obj, long j3, boolean z5) {
        switch (this.f1562b) {
            case 0:
                if (!f7.f1642g) {
                    f7.h(obj, j3, z5 ? (byte) 1 : (byte) 0);
                } else {
                    f7.g(obj, j3, z5 ? (byte) 1 : (byte) 0);
                }
                break;
            default:
                if (!f7.f1642g) {
                    f7.h(obj, j3, z5 ? (byte) 1 : (byte) 0);
                } else {
                    f7.g(obj, j3, z5 ? (byte) 1 : (byte) 0);
                }
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.e7
    public final float h(long j3, Object obj) {
        switch (this.f1562b) {
        }
        return Float.intBitsToFloat(j(j3, obj));
    }

    @Override // com.google.android.gms.internal.measurement.e7
    public final boolean i(long j3, Object obj) {
        switch (this.f1562b) {
            case 0:
                if (f7.f1642g) {
                    if (((byte) (f7.f1638c.j((-4) & j3, obj) >>> ((int) (((~j3) & 3) << 3)))) == 0) {
                    }
                } else {
                    if (((byte) (f7.f1638c.j((-4) & j3, obj) >>> ((int) ((j3 & 3) << 3)))) == 0) {
                    }
                }
                break;
            default:
                if (f7.f1642g) {
                    if (((byte) (f7.f1638c.j((-4) & j3, obj) >>> ((int) (((~j3) & 3) << 3)))) == 0) {
                    }
                } else {
                    if (((byte) (f7.f1638c.j((-4) & j3, obj) >>> ((int) ((j3 & 3) << 3)))) == 0) {
                    }
                }
                break;
        }
        return false;
    }
}
