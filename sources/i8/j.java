package i8;

import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.zip.GZIPInputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import p4.p;
import t5.n;
import t5.q;
import t5.s;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j {
    static {
        s5.g gVar = s5.g.f5238c;
        Map map = Collections.EMPTY_MAP;
        List list = Collections.EMPTY_LIST;
        new ThreadLocal();
        new ConcurrentHashMap();
        p pVar = new p(map, true, list);
        ArrayList arrayList = new ArrayList();
        arrayList.add(s.f5408z);
        arrayList.add(t5.i.f5355b);
        arrayList.add(gVar);
        arrayList.addAll(list);
        arrayList.add(s.f5398p);
        arrayList.add(s.f5390g);
        arrayList.add(s.f5387d);
        arrayList.add(s.f5388e);
        arrayList.add(s.f5389f);
        t5.h hVar = s.f5393k;
        arrayList.add(new q(Long.TYPE, Long.class, hVar));
        arrayList.add(new q(Double.TYPE, Double.class, new q5.i(0)));
        arrayList.add(new q(Float.TYPE, Float.class, new q5.i(1)));
        arrayList.add(t5.h.f5353b);
        arrayList.add(s.h);
        arrayList.add(s.f5391i);
        arrayList.add(new t5.p(AtomicLong.class, new q5.j(new q5.j(hVar, 0), 2), 0));
        arrayList.add(new t5.p(AtomicLongArray.class, new q5.j(new q5.j(hVar, 1), 2), 0));
        arrayList.add(s.f5392j);
        arrayList.add(s.f5394l);
        arrayList.add(s.f5399q);
        arrayList.add(s.f5400r);
        arrayList.add(new t5.p(BigDecimal.class, s.f5395m, 0));
        arrayList.add(new t5.p(BigInteger.class, s.f5396n, 0));
        arrayList.add(new t5.p(s5.i.class, s.f5397o, 0));
        arrayList.add(s.f5401s);
        arrayList.add(s.f5402t);
        arrayList.add(s.f5404v);
        arrayList.add(s.f5405w);
        arrayList.add(s.f5407y);
        arrayList.add(s.f5403u);
        arrayList.add(s.f5385b);
        arrayList.add(t5.d.f5346c);
        arrayList.add(s.f5406x);
        if (v5.c.f5629a) {
            arrayList.add(v5.c.f5633e);
            arrayList.add(v5.c.f5632d);
            arrayList.add(v5.c.f5634f);
        }
        arrayList.add(t5.b.f5341c);
        arrayList.add(s.f5384a);
        arrayList.add(new t5.c(pVar, 0));
        arrayList.add(new t5.c(pVar, 2));
        t5.c cVar = new t5.c(pVar, 1);
        arrayList.add(cVar);
        arrayList.add(s.A);
        arrayList.add(new n(pVar, q5.h.f4861a, gVar, cVar, list));
        Collections.unmodifiableList(arrayList);
    }

    public static i a(String str) throws Throwable {
        HttpURLConnection httpURLConnection = null;
        try {
            Log.d("RequestUtil", "GET " + str);
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection2.setRequestMethod("GET");
                httpURLConnection2.setConnectTimeout(10000);
                httpURLConnection2.setReadTimeout(15000);
                boolean z5 = false;
                httpURLConnection2.setUseCaches(false);
                httpURLConnection2.setInstanceFollowRedirects(true);
                httpURLConnection2.setRequestProperty("Accept", "application/json");
                int responseCode = httpURLConnection2.getResponseCode();
                String strC = c(httpURLConnection2, responseCode);
                String contentType = httpURLConnection2.getContentType();
                if (contentType != null && contentType.toLowerCase(Locale.ROOT).contains("application/json")) {
                    z5 = true;
                }
                httpURLConnection2.getHeaderFields();
                i iVar = new i(strC, responseCode, z5);
                httpURLConnection2.disconnect();
                return iVar;
            } catch (Throwable th) {
                th = th;
                httpURLConnection = httpURLConnection2;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c5, code lost:
    
        r12.getHeaderFields();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cd, code lost:
    
        return new i8.i(r7, r6, r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static i8.i b(java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instruction units count: 242
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i8.j.b(java.lang.String, java.lang.String):i8.i");
    }

    public static String c(HttpURLConnection httpURLConnection, int i6) throws IOException {
        InputStream inflaterInputStream;
        InputStream errorStream = (i6 < 200 || i6 >= 300) ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream();
        if (errorStream == null) {
            return "";
        }
        String contentEncoding = httpURLConnection.getContentEncoding();
        if (contentEncoding != null) {
            String lowerCase = contentEncoding.toLowerCase(Locale.ROOT);
            if (lowerCase.contains("gzip")) {
                inflaterInputStream = new GZIPInputStream(errorStream);
            } else if (lowerCase.contains("deflate")) {
                inflaterInputStream = new InflaterInputStream(errorStream, new Inflater(true));
            }
            errorStream = inflaterInputStream;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, StandardCharsets.UTF_8));
        try {
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    String string = sb.toString();
                    bufferedReader.close();
                    return string;
                }
                sb.append(line);
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
