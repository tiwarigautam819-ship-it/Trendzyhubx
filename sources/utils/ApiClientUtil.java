package utils;

import android.util.Log;
import com.google.firebase.messaging.z;
import d7.g;
import i8.a;
import i8.c;
import i8.d;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import q5.l;
import q5.m;
import r7.n;
import r7.p;
import r7.q;
import r7.r;
import r7.u;
import r7.w;
import s7.b;
import v7.i;
import w7.f;
import y1.j;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ApiClientUtil {
    public static final p JSON;
    private final String baseUrl;
    private final l gson;
    private final r http;

    static {
        Pattern pattern = p.f5088e;
        JSON = j.i("application/json; charset=utf-8");
    }

    public ApiClientUtil(String str) {
        r rVarDefaultHttp = defaultHttp();
        m mVar = new m();
        mVar.f4882j = false;
        this(str, rVarDefaultHttp, mVar.a());
    }

    private static r defaultHttp() {
        q qVar = new q();
        qVar.f5096c.add(new a());
        TimeUnit timeUnit = TimeUnit.SECONDS;
        g.f("unit", timeUnit);
        qVar.f5110r = b.b(6L, timeUnit);
        qVar.f5111s = b.b(6L, timeUnit);
        qVar.f5112t = b.b(6L, timeUnit);
        return new r(qVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: doRequest, reason: merged with bridge method [inline-methods] */
    public c lambda$postSignedWithFallbackConcurrent$2(String str, String str2, Map<String, Object> map, d dVar) {
        String strTrimTrailingSlash = trimTrailingSlash(str);
        try {
            postSignedToBase(strTrimTrailingSlash, str2, map);
            if (dVar != null && !dVar.a()) {
                new HashMap().put(strTrimTrailingSlash, "Business check failed");
                return new c(false);
            }
            Map map2 = Collections.EMPTY_MAP;
            return new c(true);
        } catch (Exception e9) {
            new HashMap().put(strTrimTrailingSlash, e9.getClass().getSimpleName() + ": " + e9.getMessage());
            return new c(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static u lambda$defaultHttp$1(n nVar) {
        com.google.android.gms.common.internal.g gVar = ((f) nVar).f5773e;
        StringBuilder sb = new StringBuilder("➡️ ");
        sb.append((String) gVar.f1411d);
        sb.append(" ");
        r7.m mVar = (r7.m) gVar.f1409b;
        sb.append(mVar);
        Log.d("🌐ApiClient", sb.toString());
        u uVarB = ((f) nVar).b(gVar);
        Log.d("🌐ApiClient", "⬅️ " + uVarB.f5152d + " " + mVar);
        return uVarB;
    }

    private static String makeUrl(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null || str2.isEmpty()) {
            return str;
        }
        if (str2.startsWith("http://") || str2.startsWith("https://")) {
            return str2;
        }
        if (str2.startsWith("/")) {
            return str.concat(str2);
        }
        return str + "/" + str2;
    }

    private static String trimTrailingSlash(String str) {
        if (str == null) {
            return null;
        }
        return str.endsWith("/") ? str.substring(0, str.length() - 1) : str;
    }

    public String getBaseUrl() {
        return this.baseUrl;
    }

    public String postSigned(String str, Map<String, Object> map) {
        String str2 = this.baseUrl;
        if (str2 != null) {
            return postSignedToBase(str2, str, map);
        }
        throw new IllegalStateException("baseUrl is null");
    }

    public String postSignedToBase(String str, String str2, Map<String, Object> map) {
        Object obj;
        String strMakeUrl = makeUrl(trimTrailingSlash(str), str2);
        HashMap map2 = new HashMap();
        if (map != null) {
            map2.putAll(map);
        }
        Object obj2 = map2.get("random");
        boolean z5 = false;
        if (!(obj2 instanceof String) || ((String) obj2).isEmpty()) {
            HashSet hashSet = i8.m.f3240a;
            StringBuilder sb = new StringBuilder(32);
            Random random = new Random();
            for (int i6 = 0; i6 < 32; i6++) {
                char cCharAt = "xxxxxxxxxxxx4xxxyxxxxxxxxxxxxxxx".charAt(i6);
                if (cCharAt == 'x' || cCharAt == 'y') {
                    int iNextInt = random.nextInt(16);
                    if (cCharAt != 'x') {
                        iNextInt = (iNextInt & 3) | 8;
                    }
                    sb.append(Integer.toHexString(iNextInt));
                } else {
                    sb.append(cCharAt);
                }
            }
            map2.put("random", sb.toString());
        }
        HashSet hashSet2 = i8.m.f3240a;
        ArrayList arrayList = new ArrayList(map2.keySet());
        Collections.sort(arrayList);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj3 = arrayList.get(i9);
            i9++;
            String str3 = (String) obj3;
            if (!i8.m.f3240a.contains(str3) && (obj = map2.get(str3)) != null && (!(obj instanceof String) || !((String) obj).isEmpty())) {
                linkedHashMap.put(str3, obj);
            }
        }
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(i8.m.f3241b.d(linkedHashMap).getBytes(StandardCharsets.UTF_8));
            StringBuilder sb2 = new StringBuilder(bArrDigest.length * 2);
            for (byte b3 : bArrDigest) {
                String hexString = Integer.toHexString(b3 & 255);
                if (hexString.length() == 1) {
                    sb2.append('0');
                }
                sb2.append(hexString);
            }
            String upperCase = sb2.toString().toUpperCase(Locale.ROOT);
            HashMap map3 = new HashMap(map2);
            map3.put("signature", upperCase);
            map3.put("timestamp", Long.valueOf(System.currentTimeMillis() / 1000));
            b0.d dVarC = b0.d.c(this.gson.d(map3), JSON);
            z zVar = new z();
            zVar.g(strMakeUrl);
            zVar.d("POST", dVarC);
            com.google.android.gms.common.internal.g gVarA = zVar.a();
            r rVar = this.http;
            rVar.getClass();
            u uVarF = new i(rVar, gVarA).f();
            int i10 = uVarF.f5152d;
            try {
                w wVar = uVarF.f5155g;
                String strO = wVar != null ? wVar.o() : "";
                Log.d("🌐ApiClient", "POST " + strMakeUrl + " -> HTTP " + i10);
                if (200 <= i10 && i10 < 300) {
                    z5 = true;
                }
                if (z5) {
                    uVarF.close();
                    return strO;
                }
                throw new RuntimeException("HTTP " + i10 + " : " + strO);
            } finally {
                try {
                    uVarF.close();
                } catch (Throwable th) {
                    th.addSuppressed(th);
                }
            }
        } catch (Exception e9) {
            throw new RuntimeException(e9);
        }
    }

    public c postSignedWithFallbackConcurrent(List<String> list, final String str, final Map<String, Object> map, d dVar, int i6) {
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(i6);
        ExecutorCompletionService executorCompletionService = new ExecutorCompletionService(executorServiceNewFixedThreadPool);
        for (final String str2 : list) {
            executorCompletionService.submit(new Callable() { // from class: i8.b
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f3221a.lambda$postSignedWithFallbackConcurrent$2(str2, str, map, null);
                }
            });
        }
        for (int i9 = 0; i9 < list.size(); i9++) {
            try {
                try {
                    c cVar = (c) executorCompletionService.take().get();
                    if (cVar.f3225a) {
                        executorServiceNewFixedThreadPool.shutdownNow();
                        return cVar;
                    }
                } catch (Exception e9) {
                    Log.d("验证地址被封", e9.getMessage());
                }
                new HashMap().put("all", "全部失败");
                return new c(false);
            } finally {
                executorServiceNewFixedThreadPool.shutdown();
            }
        }
        new HashMap().put("all", "全部失败");
        return new c(false);
    }

    public c postSignedWithFallbackSequential(List<String> list, String str, Map<String, Object> map, d dVar) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (list == null || list.isEmpty()) {
            linkedHashMap.put("all", "empty baseUrls");
            return new c(false);
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String strTrimTrailingSlash = trimTrailingSlash(it.next());
            try {
                postSignedToBase(strTrimTrailingSlash, str, map);
            } catch (Exception e9) {
                linkedHashMap.put(strTrimTrailingSlash, e9.getClass().getSimpleName() + ": " + e9.getMessage());
            }
            if (dVar != null && !dVar.a()) {
                linkedHashMap.put(strTrimTrailingSlash, "Business check failed");
            }
            return new c(true);
        }
        return new c(false);
    }

    public ApiClientUtil(String str, r rVar, l lVar) {
        this.baseUrl = trimTrailingSlash(str);
        this.http = rVar == null ? defaultHttp() : rVar;
        if (lVar == null) {
            m mVar = new m();
            mVar.f4882j = false;
            lVar = mVar.a();
        }
        this.gson = lVar;
    }
}
