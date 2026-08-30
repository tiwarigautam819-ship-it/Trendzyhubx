package g2;

import android.adservices.common.AdData;
import android.adservices.common.AdSelectionSignals;
import android.adservices.common.AdTechIdentifier;
import android.adservices.customaudience.CustomAudience;
import android.adservices.customaudience.CustomAudienceManager;
import android.adservices.customaudience.JoinCustomAudienceRequest;
import android.adservices.customaudience.TrustedBiddingData;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import d7.g;
import f2.c;
import f4.f;
import java.util.concurrent.Executors;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f2851a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f2852b = "Fledge: ".concat(b.class.getSimpleName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f2853c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f2854d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static CustomAudienceManager f2855e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static e2.a f2856f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f2857g;

    public static final void a() {
        String string;
        if (v2.a.b(b.class)) {
            return;
        }
        try {
            f2854d = true;
            Context contextA = r.a();
            f2856f = new e2.a(contextA);
            f2857g = "https://www." + r.f5933q + "/privacy_sandbox/pa/logic";
            try {
                CustomAudienceManager customAudienceManager = CustomAudienceManager.get(contextA);
                f2855e = customAudienceManager;
                if (customAudienceManager != null) {
                    f2853c = true;
                }
                string = null;
            } catch (Error e9) {
                string = e9.toString();
                Log.w(f2852b, "Failed to get CustomAudienceManager: " + e9);
            } catch (Exception e10) {
                string = e10.toString();
                Log.w(f2852b, "Failed to get CustomAudienceManager: " + e10);
            }
            if (f2853c) {
                return;
            }
            e2.a aVar = f2856f;
            if (aVar == null) {
                g.i("gpsDebugLogger");
                throw null;
            }
            Bundle bundle = new Bundle();
            bundle.putString("gps_pa_failed_reason", string);
            aVar.a(bundle, "gps_pa_failed");
        } catch (Throwable th) {
            v2.a.a(th, b.class);
        }
    }

    public final void b(String str, String str2) {
        String str3 = f2852b;
        if (v2.a.b(this)) {
            return;
        }
        try {
            String strC = c(str, str2);
            if (strC == null) {
                return;
            }
            try {
                try {
                    c cVar = new c(1);
                    c1.b.A();
                    AdData.Builder builderA = c1.b.a();
                    String str4 = f2857g;
                    if (str4 == null) {
                        g.i("baseUri");
                        throw null;
                    }
                    Uri uri = Uri.parse(str4.concat("/ad"));
                    g.b(uri);
                    AdData adDataBuild = builderA.setRenderUri(uri).setMetadata("{'isRealAd': false}").build();
                    g.e("Builder()\n              …\n                .build()", adDataBuild);
                    c1.b.B();
                    TrustedBiddingData.Builder builderL = c1.b.l();
                    String str5 = f2857g;
                    if (str5 == null) {
                        g.i("baseUri");
                        throw null;
                    }
                    Uri uri2 = Uri.parse(str5.concat("?trusted_bidding"));
                    g.b(uri2);
                    TrustedBiddingData trustedBiddingDataBuild = builderL.setTrustedBiddingUri(uri2).setTrustedBiddingKeys(f.b("")).build();
                    g.e("Builder()\n              …\n                .build()", trustedBiddingDataBuild);
                    c1.b.C();
                    CustomAudience.Builder buyer = c1.b.f().setName(strC).setBuyer(AdTechIdentifier.fromString("facebook.com"));
                    StringBuilder sb = new StringBuilder();
                    String str6 = f2857g;
                    if (str6 == null) {
                        g.i("baseUri");
                        throw null;
                    }
                    sb.append(str6);
                    sb.append("?daily&app_id=");
                    sb.append(str);
                    Uri uri3 = Uri.parse(sb.toString());
                    g.b(uri3);
                    CustomAudience.Builder dailyUpdateUri = buyer.setDailyUpdateUri(uri3);
                    String str7 = f2857g;
                    if (str7 == null) {
                        g.i("baseUri");
                        throw null;
                    }
                    Uri uri4 = Uri.parse(str7.concat("?bidding"));
                    g.b(uri4);
                    CustomAudience customAudienceBuild = dailyUpdateUri.setBiddingLogicUri(uri4).setTrustedBiddingData(trustedBiddingDataBuild).setUserBiddingSignals(AdSelectionSignals.fromString("{}")).setAds(f.b(adDataBuild)).build();
                    g.e("Builder()\n              …(listOf(dummyAd)).build()", customAudienceBuild);
                    c1.b.D();
                    JoinCustomAudienceRequest joinCustomAudienceRequestBuild = c1.b.k().setCustomAudience(customAudienceBuild).build();
                    g.e("Builder().setCustomAudience(ca).build()", joinCustomAudienceRequestBuild);
                    CustomAudienceManager customAudienceManager = f2855e;
                    if (customAudienceManager != null) {
                        customAudienceManager.joinCustomAudience(joinCustomAudienceRequestBuild, Executors.newSingleThreadExecutor(), cVar);
                    }
                } catch (Exception e9) {
                    Log.w(str3, "Failed to join Custom Audience: " + e9);
                    e2.a aVar = f2856f;
                    if (aVar == null) {
                        g.i("gpsDebugLogger");
                        throw null;
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("gps_pa_failed_reason", e9.toString());
                    aVar.a(bundle, "gps_pa_failed");
                }
            } catch (Error e10) {
                Log.w(str3, "Failed to join Custom Audience: " + e10);
                e2.a aVar2 = f2856f;
                if (aVar2 == null) {
                    g.i("gpsDebugLogger");
                    throw null;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("gps_pa_failed_reason", e10.toString());
                aVar2.a(bundle2, "gps_pa_failed");
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final String c(String str, String str2) {
        if (!v2.a.b(this) && str2 != null) {
            try {
                if (!str2.equals("_removed_") && !k7.g.x(str2, "gps")) {
                    return str + '@' + str2 + '@' + (System.currentTimeMillis() / ((long) 1000)) + "@1";
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return null;
            }
        }
        return null;
    }
}
