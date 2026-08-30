package y7;

import com.engagelab.privates.push.constants.MTPushConstants;
import com.getcapacitor.Bridge;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b[] f6293a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map f6294b;

    static {
        b bVar = new b(b.f6274i, "");
        e8.j jVar = b.f6272f;
        b bVar2 = new b(jVar, "GET");
        b bVar3 = new b(jVar, "POST");
        e8.j jVar2 = b.f6273g;
        b bVar4 = new b(jVar2, "/");
        b bVar5 = new b(jVar2, "/index.html");
        e8.j jVar3 = b.h;
        b bVar6 = new b(jVar3, Bridge.CAPACITOR_HTTP_SCHEME);
        b bVar7 = new b(jVar3, Bridge.CAPACITOR_HTTPS_SCHEME);
        e8.j jVar4 = b.f6271e;
        b[] bVarArr = {bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, new b(jVar4, "200"), new b(jVar4, "204"), new b(jVar4, "206"), new b(jVar4, "304"), new b(jVar4, "400"), new b(jVar4, "404"), new b(jVar4, "500"), new b("accept-charset", ""), new b("accept-encoding", "gzip, deflate"), new b("accept-language", ""), new b("accept-ranges", ""), new b("accept", ""), new b("access-control-allow-origin", ""), new b("age", ""), new b("allow", ""), new b("authorization", ""), new b("cache-control", ""), new b("content-disposition", ""), new b("content-encoding", ""), new b("content-language", ""), new b("content-length", ""), new b("content-location", ""), new b("content-range", ""), new b("content-type", ""), new b("cookie", ""), new b("date", ""), new b("etag", ""), new b("expect", ""), new b("expires", ""), new b(MTPushConstants.PlatformNode.KEY_FROM, ""), new b("host", ""), new b("if-match", ""), new b("if-modified-since", ""), new b("if-none-match", ""), new b("if-range", ""), new b("if-unmodified-since", ""), new b("last-modified", ""), new b("link", ""), new b(FirebaseAnalytics.Param.LOCATION, ""), new b("max-forwards", ""), new b("proxy-authenticate", ""), new b("proxy-authorization", ""), new b("range", ""), new b("referer", ""), new b("refresh", ""), new b("retry-after", ""), new b("server", ""), new b("set-cookie", ""), new b("strict-transport-security", ""), new b("transfer-encoding", ""), new b("user-agent", ""), new b("vary", ""), new b("via", ""), new b("www-authenticate", "")};
        f6293a = bVarArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(61);
        for (int i6 = 0; i6 < 61; i6++) {
            if (!linkedHashMap.containsKey(bVarArr[i6].f6275a)) {
                linkedHashMap.put(bVarArr[i6].f6275a, Integer.valueOf(i6));
            }
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        d7.g.e("unmodifiableMap(result)", mapUnmodifiableMap);
        f6294b = mapUnmodifiableMap;
    }

    public static void a(e8.j jVar) throws IOException {
        d7.g.f("name", jVar);
        int iA = jVar.a();
        for (int i6 = 0; i6 < iA; i6++) {
            byte bD = jVar.d(i6);
            if (65 <= bD && bD < 91) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: ".concat(jVar.h()));
            }
        }
    }
}
