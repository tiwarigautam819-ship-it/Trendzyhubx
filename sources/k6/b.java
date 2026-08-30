package k6;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3563c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f3564d;

    public b(Context context) {
        this.f3561a = 1;
        this.f3563c = 0;
        this.f3564d = context;
    }

    public byte a(int i6, int i9) {
        return ((byte[][]) this.f3564d)[i9][i6];
    }

    public void b(int i6, int i9, int i10) {
        ((byte[][]) this.f3564d)[i9][i6] = (byte) i10;
    }

    public void c(int i6, int i9, boolean z5) {
        ((byte[][]) this.f3564d)[i9][i6] = z5 ? (byte) 1 : (byte) 0;
    }

    public synchronized int d() {
        PackageInfo packageInfoC;
        if (this.f3562b == 0) {
            try {
                packageInfoC = d4.c.a((Context) this.f3564d).c(0, "com.google.android.gms");
            } catch (PackageManager.NameNotFoundException e9) {
                Log.w("Metadata", "Failed to find package ".concat(e9.toString()));
                packageInfoC = null;
            }
            if (packageInfoC != null) {
                this.f3562b = packageInfoC.versionCode;
            }
        }
        return this.f3562b;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0050 A[Catch: all -> 0x002e, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0007, B:9:0x0025, B:14:0x0030, B:16:0x0037, B:18:0x0049, B:26:0x006a, B:21:0x0050, B:23:0x0063, B:29:0x006e, B:33:0x007d), top: B:38:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized int e() {
        /*
            r5 = this;
            monitor-enter(r5)
            int r0 = r5.f3563c     // Catch: java.lang.Throwable -> L2e
            if (r0 == 0) goto L7
            monitor-exit(r5)
            return r0
        L7:
            java.lang.Object r0 = r5.f3564d     // Catch: java.lang.Throwable -> L2e
            android.content.Context r0 = (android.content.Context) r0     // Catch: java.lang.Throwable -> L2e
            android.content.pm.PackageManager r1 = r0.getPackageManager()     // Catch: java.lang.Throwable -> L2e
            d4.b r0 = d4.c.a(r0)     // Catch: java.lang.Throwable -> L2e
            java.lang.String r2 = "com.google.android.c2dm.permission.SEND"
            java.lang.String r3 = "com.google.android.gms"
            android.content.Context r0 = r0.f2277a     // Catch: java.lang.Throwable -> L2e
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: java.lang.Throwable -> L2e
            int r0 = r0.checkPermission(r2, r3)     // Catch: java.lang.Throwable -> L2e
            r2 = -1
            r3 = 0
            if (r0 != r2) goto L30
            java.lang.String r0 = "Metadata"
            java.lang.String r1 = "Google Play services missing or without correct permission."
            android.util.Log.e(r0, r1)     // Catch: java.lang.Throwable -> L2e
            monitor-exit(r5)
            return r3
        L2e:
            r0 = move-exception
            goto L81
        L30:
            boolean r0 = b4.c.b()     // Catch: java.lang.Throwable -> L2e
            r2 = 1
            if (r0 != 0) goto L50
            android.content.Intent r0 = new android.content.Intent     // Catch: java.lang.Throwable -> L2e
            java.lang.String r4 = "com.google.android.c2dm.intent.REGISTER"
            r0.<init>(r4)     // Catch: java.lang.Throwable -> L2e
            java.lang.String r4 = "com.google.android.gms"
            r0.setPackage(r4)     // Catch: java.lang.Throwable -> L2e
            java.util.List r0 = r1.queryIntentServices(r0, r3)     // Catch: java.lang.Throwable -> L2e
            if (r0 == 0) goto L50
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L2e
            if (r0 != 0) goto L50
            goto L6a
        L50:
            android.content.Intent r0 = new android.content.Intent     // Catch: java.lang.Throwable -> L2e
            java.lang.String r4 = "com.google.iid.TOKEN_REQUEST"
            r0.<init>(r4)     // Catch: java.lang.Throwable -> L2e
            java.lang.String r4 = "com.google.android.gms"
            r0.setPackage(r4)     // Catch: java.lang.Throwable -> L2e
            java.util.List r0 = r1.queryBroadcastReceivers(r0, r3)     // Catch: java.lang.Throwable -> L2e
            r1 = 2
            if (r0 == 0) goto L6e
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L2e
            if (r0 != 0) goto L6e
            r2 = r1
        L6a:
            r5.f3563c = r2     // Catch: java.lang.Throwable -> L2e
            monitor-exit(r5)
            return r2
        L6e:
            java.lang.String r0 = "Metadata"
            java.lang.String r3 = "Failed to resolve IID implementation package, falling back"
            android.util.Log.w(r0, r3)     // Catch: java.lang.Throwable -> L2e
            boolean r0 = b4.c.b()     // Catch: java.lang.Throwable -> L2e
            if (r2 == r0) goto L7c
            goto L7d
        L7c:
            r2 = r1
        L7d:
            r5.f3563c = r2     // Catch: java.lang.Throwable -> L2e
            monitor-exit(r5)
            return r2
        L81:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L2e
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k6.b.e():int");
    }

    public String toString() {
        switch (this.f3561a) {
            case 0:
                int i6 = this.f3562b;
                int i9 = this.f3563c;
                StringBuilder sb = new StringBuilder((i6 * 2 * i9) + 2);
                for (int i10 = 0; i10 < i9; i10++) {
                    byte[] bArr = ((byte[][]) this.f3564d)[i10];
                    for (int i11 = 0; i11 < i6; i11++) {
                        byte b3 = bArr[i11];
                        if (b3 == 0) {
                            sb.append(" 0");
                        } else if (b3 != 1) {
                            sb.append("  ");
                        } else {
                            sb.append(" 1");
                        }
                    }
                    sb.append('\n');
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public b(int i6, int i9, int i10) {
        this.f3561a = i10;
        switch (i10) {
            case 2:
                this.f3564d = null;
                this.f3562b = i6;
                int i11 = i9 & 7;
                this.f3563c = i11 == 0 ? 8 : i11;
                break;
            default:
                this.f3564d = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i9, i6);
                this.f3562b = i6;
                this.f3563c = i9;
                break;
        }
    }

    public b() {
        this.f3561a = 2;
        this.f3564d = new b[256];
        this.f3562b = 0;
        this.f3563c = 0;
    }
}
