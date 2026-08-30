package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class t0 extends h0 implements w0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f1906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1907c;

    public t0() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
        this.f1906b = new AtomicReference();
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0002, code lost:
    
        r3 = r3.get("r");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object c(android.os.Bundle r3, java.lang.Class r4) {
        /*
            if (r3 == 0) goto L38
            java.lang.String r0 = "r"
            java.lang.Object r3 = r3.get(r0)
            if (r3 == 0) goto L38
            java.lang.Object r3 = r4.cast(r3)     // Catch: java.lang.ClassCastException -> Lf
            return r3
        Lf:
            r0 = move-exception
            java.lang.String r4 = r4.getCanonicalName()
            java.lang.Class r3 = r3.getClass()
            java.lang.String r3 = r3.getCanonicalName()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Unexpected object type. Expected, Received: "
            r1.<init>(r2)
            r1.append(r4)
            java.lang.String r4 = ", "
            r1.append(r4)
            r1.append(r3)
            java.lang.String r3 = r1.toString()
            java.lang.String r4 = "AM"
            android.util.Log.w(r4, r3, r0)
            throw r0
        L38:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.t0.c(android.os.Bundle, java.lang.Class):java.lang.Object");
    }

    public final Bundle b(long j3) {
        Bundle bundle;
        synchronized (this.f1906b) {
            if (!this.f1907c) {
                try {
                    this.f1906b.wait(j3);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = (Bundle) this.f1906b.get();
        }
        return bundle;
    }

    public final String d(long j3) {
        return (String) c(b(j3), String.class);
    }

    @Override // com.google.android.gms.internal.measurement.h0
    public final boolean zza(int i6, Parcel parcel, Parcel parcel2, int i9) {
        if (i6 != 1) {
            return false;
        }
        Bundle bundle = (Bundle) g0.a(parcel, Bundle.CREATOR);
        g0.d(parcel);
        zza(bundle);
        parcel2.writeNoException();
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.w0
    public final void zza(Bundle bundle) {
        synchronized (this.f1906b) {
            try {
                try {
                    this.f1906b.set(bundle);
                    this.f1907c = true;
                } finally {
                    this.f1906b.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
