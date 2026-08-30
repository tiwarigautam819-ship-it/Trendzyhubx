package x1;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.CurrentAccessTokenExpirationBroadcastReceiver;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final o3.a f5830f = new o3.a(26);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static e f5831g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y0.b f5832a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f5833b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f5834c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f5835d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Date f5836e = new Date(0);

    public e(y0.b bVar, b bVar2) {
        this.f5832a = bVar;
        this.f5833b = bVar2;
    }

    public final void a() {
        String str;
        String str2;
        a aVar = this.f5834c;
        if (aVar != null && this.f5835d.compareAndSet(false, true)) {
            this.f5836e = new Date();
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet();
            HashSet hashSet3 = new HashSet();
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            com.google.firebase.messaging.s sVar = new com.google.firebase.messaging.s();
            c cVar = new c(atomicBoolean, hashSet, hashSet2, hashSet3, 0);
            Bundle bundle = new Bundle();
            bundle.putString("fields", "permission,status");
            String str3 = z.f5942j;
            z zVarU = w.u(aVar, "me/permissions", cVar);
            zVarU.f5948d = bundle;
            d0 d0Var = d0.f5827a;
            zVarU.h = d0Var;
            s2.a aVar2 = new s2.a(2, sVar);
            String str4 = aVar.f5801k;
            if (str4 == null) {
                str4 = "facebook";
            }
            o3.a aVar3 = str4.equals("instagram") ? new o3.a(28) : new o3.a(27);
            Bundle bundle2 = new Bundle();
            int i6 = aVar3.f4423a;
            switch (i6) {
                case 27:
                    str = "fb_extend_sso_token";
                    break;
                default:
                    str = "ig_refresh_token";
                    break;
            }
            bundle2.putString("grant_type", str);
            bundle2.putString("client_id", aVar.h);
            bundle2.putString("fields", "access_token,expires_at,expires_in,data_access_expiration_time,graph_domain");
            switch (i6) {
                case 27:
                    str2 = "oauth/access_token";
                    break;
                default:
                    str2 = "refresh_access_token";
                    break;
            }
            z zVarU2 = w.u(aVar, str2, aVar2);
            zVarU2.f5948d = bundle2;
            zVarU2.h = d0Var;
            b0 b0Var = new b0(zVarU, zVarU2);
            d dVar = new d(sVar, aVar, atomicBoolean, hashSet, hashSet2, hashSet3, this);
            ArrayList arrayList = b0Var.f5809d;
            if (!arrayList.contains(dVar)) {
                arrayList.add(dVar);
            }
            q2.g.i(b0Var);
            new a0(b0Var).executeOnExecutor(r.c(), new Void[0]);
        }
    }

    public final void b(a aVar, a aVar2) {
        Intent intent = new Intent(r.a(), (Class<?>) CurrentAccessTokenExpirationBroadcastReceiver.class);
        intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN", aVar);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN", aVar2);
        this.f5832a.c(intent);
    }

    public final void c(a aVar, boolean z5) {
        SharedPreferences sharedPreferences = this.f5833b.f5804a;
        a aVar2 = this.f5834c;
        this.f5834c = aVar;
        this.f5835d.set(false);
        this.f5836e = new Date(0L);
        if (z5) {
            if (aVar != null) {
                try {
                    sharedPreferences.edit().putString("com.facebook.AccessTokenManager.CachedAccessToken", aVar.a().toString()).apply();
                } catch (JSONException unused) {
                }
            } else {
                sharedPreferences.edit().remove("com.facebook.AccessTokenManager.CachedAccessToken").apply();
                q2.g0.c(r.a());
            }
        }
        if (aVar2 == null ? aVar == null : aVar2.equals(aVar)) {
            return;
        }
        b(aVar2, aVar);
        Context contextA = r.a();
        Date date = a.f5789l;
        a aVarF = h8.b.f();
        AlarmManager alarmManager = (AlarmManager) contextA.getSystemService("alarm");
        if (h8.b.i()) {
            if ((aVarF != null ? aVarF.f5792a : null) == null || alarmManager == null) {
                return;
            }
            Intent intent = new Intent(contextA, (Class<?>) CurrentAccessTokenExpirationBroadcastReceiver.class);
            intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
            try {
                alarmManager.set(1, aVarF.f5792a.getTime(), PendingIntent.getBroadcast(contextA, 0, intent, 67108864));
            } catch (Exception unused2) {
            }
        }
    }
}
