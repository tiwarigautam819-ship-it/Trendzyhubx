package com.google.firebase.messaging;

import android.content.ClipData;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import com.engagelab.privates.core.api.WakeMessage;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ScheduledFuture;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j0 implements p4.d, k2.l, n3.b, v4.d, q2.n, d.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2113b;

    public /* synthetic */ j0(int i6, Object obj) {
        this.f2112a = i6;
        this.f2113b = obj;
    }

    @Override // n3.b
    public Object a() {
        SQLiteDatabase sQLiteDatabaseA;
        int i6 = this.f2112a;
        Object obj = this.f2113b;
        switch (i6) {
            case 6:
                m3.h hVar = (m3.h) ((m3.c) obj);
                hVar.getClass();
                int i9 = i3.a.f3180e;
                y yVar = new y();
                yVar.f2163b = null;
                yVar.f2164c = new ArrayList();
                yVar.f2165d = null;
                yVar.f2162a = "";
                HashMap map = new HashMap();
                sQLiteDatabaseA = hVar.a();
                sQLiteDatabaseA.beginTransaction();
                try {
                    i3.a aVar = (i3.a) m3.h.v(sQLiteDatabaseA.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new o(hVar, map, yVar, 4));
                    sQLiteDatabaseA.setTransactionSuccessful();
                    return aVar;
                } finally {
                }
            case 7:
                m3.h hVar2 = (m3.h) ((m3.d) obj);
                long jF = hVar2.f4268b.f() - hVar2.f4270d.f4257d;
                sQLiteDatabaseA = hVar2.a();
                sQLiteDatabaseA.beginTransaction();
                try {
                    String[] strArr = {String.valueOf(jF)};
                    Cursor cursorRawQuery = sQLiteDatabaseA.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr);
                    while (cursorRawQuery.moveToNext()) {
                        try {
                            hVar2.s(cursorRawQuery.getInt(0), i3.c.MESSAGE_TOO_OLD, cursorRawQuery.getString(1));
                        } catch (Throwable th) {
                            cursorRawQuery.close();
                            throw th;
                        }
                    }
                    cursorRawQuery.close();
                    int iDelete = sQLiteDatabaseA.delete("events", "timestamp_ms < ?", strArr);
                    sQLiteDatabaseA.setTransactionSuccessful();
                    sQLiteDatabaseA.endTransaction();
                    return Integer.valueOf(iDelete);
                } finally {
                }
            case WakeMessage.ACTIVITY /* 8 */:
                m3.h hVar3 = (m3.h) ((l3.i) obj).f3816i;
                sQLiteDatabaseA = hVar3.a();
                sQLiteDatabaseA.beginTransaction();
                try {
                    sQLiteDatabaseA.compileStatement("DELETE FROM log_event_dropped").execute();
                    sQLiteDatabaseA.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + hVar3.f4268b.f()).execute();
                    sQLiteDatabaseA.setTransactionSuccessful();
                    return null;
                } finally {
                }
            default:
                y yVar2 = (y) obj;
                Iterator it = ((Iterable) ((m3.h) ((m3.d) yVar2.f2163b)).g(new com.getcapacitor.n(12))).iterator();
                while (it.hasNext()) {
                    ((c5.h) yVar2.f2164c).t((f3.i) it.next(), 1, false);
                }
                return null;
        }
    }

    public d3.b b(c5.h hVar) throws IOException {
        d3.c cVar = (d3.c) this.f2113b;
        URL url = (URL) hVar.f1060b;
        String strH = y1.j.h("CctTransportBackend");
        if (Log.isLoggable(strH, 4)) {
            Log.i(strH, String.format("Making request to: %s", url));
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(cVar.f2273g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", "datatransport/3.1.9 android/");
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = (String) hVar.f1062d;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    o5.c cVar2 = cVar.f2267a;
                    e3.i iVar = (e3.i) hVar.f1061c;
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(gZIPOutputStream));
                    b5.d dVar = (b5.d) cVar2.f4446b;
                    b5.e eVar = new b5.e(bufferedWriter, dVar.f963a, dVar.f964b, dVar.f965c, dVar.f966d);
                    eVar.f(iVar);
                    eVar.h();
                    eVar.f968b.flush();
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    Integer numValueOf = Integer.valueOf(responseCode);
                    String strH2 = y1.j.h("CctTransportBackend");
                    if (Log.isLoggable(strH2, 4)) {
                        Log.i(strH2, String.format("Status Code: %d", numValueOf));
                    }
                    y1.j.d("CctTransportBackend", "Content-Type: %s", httpURLConnection.getHeaderField("Content-Type"));
                    y1.j.d("CctTransportBackend", "Content-Encoding: %s", httpURLConnection.getHeaderField("Content-Encoding"));
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new d3.b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    }
                    if (responseCode != 200) {
                        return new d3.b(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                        try {
                            d3.b bVar = new d3.b(responseCode, null, e3.m.a(new BufferedReader(new InputStreamReader(gZIPInputStream))).f2378a);
                            if (gZIPInputStream != null) {
                                gZIPInputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return bVar;
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } catch (ConnectException e9) {
            e = e9;
            y1.j.e("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new d3.b(500, null, 0L);
        } catch (UnknownHostException e10) {
            e = e10;
            y1.j.e("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new d3.b(500, null, 0L);
        } catch (IOException e11) {
            e = e11;
            y1.j.e("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new d3.b(400, null, 0L);
        } catch (z4.b e12) {
            e = e12;
            y1.j.e("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new d3.b(400, null, 0L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00ed  */
    @Override // k2.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void c(java.io.File r18) {
        /*
            Method dump skipped, instruction units count: 381
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.j0.c(java.io.File):void");
    }

    @Override // v4.d
    public Object create(v4.c cVar) {
        return this.f2113b;
    }

    @Override // q2.n
    public void d(boolean z5) {
        String str = (String) this.f2113b;
        if (z5) {
            try {
                w2.a aVar = new w2.a(str);
                if ((aVar.f5719b == null || aVar.f5720c == null) ? false : true) {
                    android.support.v4.media.session.a.n(aVar.f5718a, aVar.toString());
                }
            } catch (Exception unused) {
            }
        }
    }

    @Override // d.b
    public void e(Object obj) {
        ((a1.b) this.f2113b).g((d.a) obj);
    }

    public boolean f(k1.h hVar, int i6, Bundle bundle) {
        j0.c hVar2;
        m.r rVar = (m.r) this.f2113b;
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 25 && (i6 & 1) != 0) {
            try {
                ((l0.g) hVar.f3502b).d();
                Parcelable parcelable = (Parcelable) ((l0.g) hVar.f3502b).b();
                bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", parcelable);
            } catch (Exception e9) {
                Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e9);
                return false;
            }
        }
        l0.g gVar = (l0.g) hVar.f3502b;
        ClipData clipData = new ClipData(gVar.getDescription(), new ClipData.Item(gVar.c()));
        if (i9 >= 31) {
            hVar2 = new k1.h(clipData, 2);
        } else {
            j0.d dVar = new j0.d();
            dVar.f3260b = clipData;
            dVar.f3261c = 2;
            hVar2 = dVar;
        }
        hVar2.k(gVar.e());
        hVar2.setExtras(bundle);
        return j0.k0.f(rVar, hVar2.build()) == null;
    }

    @Override // p4.d
    public void onComplete(p4.i iVar) {
        switch (this.f2112a) {
            case 0:
                k0.b((Intent) this.f2113b);
                break;
            case 1:
                ((m0) this.f2113b).f2124b.c(null);
                break;
            case 2:
                ((ScheduledFuture) this.f2113b).cancel(false);
                break;
            default:
                n6.a aVar = (n6.a) this.f2113b;
                if (!iVar.g()) {
                    Log.e("FirebaseInit", "FCM token fetch FAILED", iVar.d());
                    aVar.onToken(null);
                } else {
                    String str = (String) iVar.e();
                    Log.d("FirebaseInit", "✅ FCM token ready: " + str);
                    n6.c.b(str);
                    aVar.onToken(str);
                }
                break;
        }
    }
}
