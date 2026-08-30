package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.d0;
import java.net.URL;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzlg implements Runnable {
    private final URL zza;
    private final zzld zzb;
    private final String zzc;
    private final Map<String, String> zzd;
    private final /* synthetic */ zzle zze;

    public zzlg(zzle zzleVar, String str, URL url, byte[] bArr, Map<String, String> map, zzld zzldVar) {
        this.zze = zzleVar;
        d0.d(str);
        d0.h(url);
        d0.h(zzldVar);
        this.zza = url;
        this.zzb = zzldVar;
        this.zzc = str;
        this.zzd = null;
    }

    private final void zzb(final int i6, final Exception exc, final byte[] bArr, final Map<String, List<String>> map) {
        this.zze.zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlf
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zza(i6, exc, bArr, map);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x006f  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() throws java.lang.Throwable {
        /*
            r5 = this;
            com.google.android.gms.measurement.internal.zzle r0 = r5.zze
            r0.zzr()
            r0 = 0
            r1 = 0
            java.net.URL r2 = r5.zza     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L50
            java.lang.Class<com.google.android.gms.internal.measurement.q0> r3 = com.google.android.gms.internal.measurement.q0.class
            monitor-enter(r3)     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L62
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L62
            java.net.URLConnection r2 = r2.openConnection()     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L50
            boolean r3 = r2 instanceof java.net.HttpURLConnection     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L50
            if (r3 == 0) goto L54
            java.net.HttpURLConnection r2 = (java.net.HttpURLConnection) r2     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L50
            r2.setDefaultUseCaches(r1)     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L50
            r3 = 60000(0xea60, float:8.4078E-41)
            r2.setConnectTimeout(r3)     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L50
            r3 = 61000(0xee48, float:8.5479E-41)
            r2.setReadTimeout(r3)     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L50
            r2.setInstanceFollowRedirects(r1)     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L50
            r3 = 1
            r2.setDoInput(r3)     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L50
            int r1 = r2.getResponseCode()     // Catch: java.lang.Throwable -> L46 java.io.IOException -> L49
            java.util.Map r3 = r2.getHeaderFields()     // Catch: java.lang.Throwable -> L46 java.io.IOException -> L49
            com.google.android.gms.measurement.internal.zzle r4 = r5.zze     // Catch: java.lang.Throwable -> L42 java.io.IOException -> L44
            byte[] r4 = com.google.android.gms.measurement.internal.zzle.zza(r4, r2)     // Catch: java.lang.Throwable -> L42 java.io.IOException -> L44
            r2.disconnect()
            r5.zzb(r1, r0, r4, r3)
            return
        L42:
            r4 = move-exception
            goto L64
        L44:
            r4 = move-exception
            goto L6d
        L46:
            r4 = move-exception
            r3 = r0
            goto L64
        L49:
            r4 = move-exception
            r3 = r0
            goto L6d
        L4c:
            r4 = move-exception
        L4d:
            r2 = r0
            r3 = r2
            goto L64
        L50:
            r4 = move-exception
        L51:
            r2 = r0
            r3 = r2
            goto L6d
        L54:
            java.io.IOException r2 = new java.io.IOException     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L50
            java.lang.String r3 = "Failed to obtain HTTP connection"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L50
            throw r2     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L50
        L5c:
            r4 = r2
            goto L4d
        L5e:
            r4 = r2
            goto L51
        L60:
            r2 = move-exception
            goto L5c
        L62:
            r2 = move-exception
            goto L5e
        L64:
            if (r2 == 0) goto L69
            r2.disconnect()
        L69:
            r5.zzb(r1, r0, r0, r3)
            throw r4
        L6d:
            if (r2 == 0) goto L72
            r2.disconnect()
        L72:
            r5.zzb(r1, r4, r0, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlg.run():void");
    }

    public final /* synthetic */ void zza(int i6, Exception exc, byte[] bArr, Map map) {
        this.zzb.zza(this.zzc, i6, exc, bArr, map);
    }
}
