package y2;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.YaarWin.app.R;
import com.facebook.FacebookActivity;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import q2.g0;
import x1.a0;
import x1.d0;
import x1.w;
import x1.z;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class g extends androidx.fragment.app.t {
    public volatile e A0;
    public boolean B0;
    public boolean C0;
    public m D0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public View f6176t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public TextView f6177u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public TextView f6178v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public h f6179w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public final AtomicBoolean f6180x0 = new AtomicBoolean();

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public volatile a0 f6181y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public volatile ScheduledFuture f6182z0;

    @Override // androidx.fragment.app.t
    public final Dialog K(Bundle bundle) {
        f fVar = new f(this, E());
        fVar.setContentView(N(p2.b.b() && !this.C0));
        return fVar;
    }

    public final void M(String str, c5.h hVar, String str2, Date date, Date date2) {
        h hVar2 = this.f6179w0;
        if (hVar2 != null) {
            hVar2.d().d(new n(hVar2.d().f6230g, 1, new x1.a(str2, x1.r.b(), str, (ArrayList) hVar.f1060b, (ArrayList) hVar.f1061c, (ArrayList) hVar.f1062d, x1.f.DEVICE_AUTH, date, null, date2, "facebook"), null, null));
        }
        Dialog dialog = this.f619o0;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public final View N(boolean z5) {
        LayoutInflater layoutInflater = E().getLayoutInflater();
        d7.g.e("requireActivity().layoutInflater", layoutInflater);
        View viewInflate = layoutInflater.inflate(z5 ? R.layout.com_facebook_smart_device_dialog_fragment : R.layout.com_facebook_device_auth_dialog_fragment, (ViewGroup) null);
        d7.g.e("inflater.inflate(getLayo…esId(isSmartLogin), null)", viewInflate);
        View viewFindViewById = viewInflate.findViewById(R.id.progress_bar);
        d7.g.e("view.findViewById(R.id.progress_bar)", viewFindViewById);
        this.f6176t0 = viewFindViewById;
        View viewFindViewById2 = viewInflate.findViewById(R.id.confirmation_code);
        d7.g.d("null cannot be cast to non-null type android.widget.TextView", viewFindViewById2);
        this.f6177u0 = (TextView) viewFindViewById2;
        View viewFindViewById3 = viewInflate.findViewById(R.id.cancel_button);
        d7.g.d("null cannot be cast to non-null type android.widget.Button", viewFindViewById3);
        ((Button) viewFindViewById3).setOnClickListener(new l6.b(this, 2));
        View viewFindViewById4 = viewInflate.findViewById(R.id.com_facebook_device_auth_instructions);
        d7.g.d("null cannot be cast to non-null type android.widget.TextView", viewFindViewById4);
        TextView textView = (TextView) viewFindViewById4;
        this.f6178v0 = textView;
        textView.setText(Html.fromHtml(h().getString(R.string.com_facebook_device_auth_instructions)));
        return viewInflate;
    }

    public final void O() {
        if (this.f6180x0.compareAndSet(false, true)) {
            e eVar = this.A0;
            if (eVar != null) {
                p2.b.a(eVar.f6171b);
            }
            h hVar = this.f6179w0;
            if (hVar != null) {
                hVar.d().d(new n(hVar.d().f6230g, 2, null, "User canceled log in.", null));
            }
            Dialog dialog = this.f619o0;
            if (dialog != null) {
                dialog.dismiss();
            }
        }
    }

    public final void P(x1.l lVar) {
        if (this.f6180x0.compareAndSet(false, true)) {
            e eVar = this.A0;
            if (eVar != null) {
                p2.b.a(eVar.f6171b);
            }
            h hVar = this.f6179w0;
            if (hVar != null) {
                m mVar = hVar.d().f6230g;
                String message = lVar.getMessage();
                ArrayList arrayList = new ArrayList();
                if (message != null) {
                    arrayList.add(message);
                }
                hVar.d().d(new n(mVar, 3, null, TextUtils.join(": ", arrayList), null));
            }
            Dialog dialog = this.f619o0;
            if (dialog != null) {
                dialog.dismiss();
            }
        }
    }

    public final void Q(String str, long j3, Long l4) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,permissions,name");
        Date date = j3 != 0 ? new Date((j3 * 1000) + new Date().getTime()) : null;
        Date date2 = l4.longValue() != 0 ? new Date(l4.longValue() * 1000) : null;
        Date date3 = date;
        x1.a aVar = new x1.a(str, x1.r.b(), "0", null, null, null, null, date3, null, date2, "facebook");
        String str2 = z.f5942j;
        z zVarU = w.u(aVar, "me", new x1.c(this, str, date3, date2, 2));
        zVarU.h = d0.f5827a;
        zVarU.f5948d = bundle;
        zVarU.d();
    }

    public final void R() {
        e eVar = this.A0;
        if (eVar != null) {
            eVar.f6174e = new Date().getTime();
        }
        Bundle bundle = new Bundle();
        e eVar2 = this.A0;
        bundle.putString("code", eVar2 != null ? eVar2.f6172c : null);
        StringBuilder sb = new StringBuilder();
        sb.append(x1.r.b());
        sb.append('|');
        q2.g.k();
        String str = x1.r.f5923f;
        if (str == null) {
            throw new x1.l("A valid Facebook client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk. Visit https://developers.facebook.com/docs/android/getting-started#add-app_id for more information.");
        }
        sb.append(str);
        bundle.putString("access_token", sb.toString());
        String str2 = z.f5942j;
        this.f6181y0 = new z(null, "device/login_status", bundle, d0.f5828b, new c(this, 1)).d();
    }

    public final void S() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        e eVar = this.A0;
        Long lValueOf = eVar != null ? Long.valueOf(eVar.f6173d) : null;
        if (lValueOf != null) {
            synchronized (h.f6183d) {
                try {
                    if (h.f6184e == null) {
                        h.f6184e = new ScheduledThreadPoolExecutor(1);
                    }
                    scheduledThreadPoolExecutor = h.f6184e;
                    if (scheduledThreadPoolExecutor == null) {
                        d7.g.i("backgroundExecutor");
                        throw null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f6182z0 = scheduledThreadPoolExecutor.schedule(new a2.g(17, this), lValueOf.longValue(), TimeUnit.SECONDS);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void T(y2.e r15) {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: y2.g.T(y2.e):void");
    }

    public final void U(m mVar) {
        d7.g.f("request", mVar);
        this.D0 = mVar;
        Bundle bundle = new Bundle();
        bundle.putString("scope", TextUtils.join(",", mVar.f6201b));
        String str = mVar.f6206g;
        if (!g0.B(str)) {
            bundle.putString("redirect_uri", str);
        }
        String str2 = mVar.f6207i;
        if (!g0.B(str2)) {
            bundle.putString("target_user_id", str2);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(x1.r.b());
        sb.append('|');
        q2.g.k();
        String str3 = x1.r.f5923f;
        if (str3 == null) {
            throw new x1.l("A valid Facebook client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk. Visit https://developers.facebook.com/docs/android/getting-started#add-app_id for more information.");
        }
        sb.append(str3);
        bundle.putString("access_token", sb.toString());
        p2.b bVar = p2.b.f4636a;
        String str4 = null;
        if (!v2.a.b(p2.b.class)) {
            try {
                HashMap map = new HashMap();
                String str5 = Build.DEVICE;
                d7.g.e("DEVICE", str5);
                map.put("device", str5);
                String str6 = Build.MODEL;
                d7.g.e("MODEL", str6);
                map.put("model", str6);
                String string = new JSONObject(map).toString();
                d7.g.e("JSONObject(deviceInfo as Map<*, *>).toString()", string);
                str4 = string;
            } catch (Throwable th) {
                v2.a.a(th, p2.b.class);
            }
        }
        bundle.putString("device_info", str4);
        String str7 = z.f5942j;
        new z(null, "device/login", bundle, d0.f5828b, new c(this, 0)).d();
    }

    @Override // androidx.fragment.app.t, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        d7.g.f("dialog", dialogInterface);
        super.onDismiss(dialogInterface);
        if (this.B0) {
            return;
        }
        O();
    }

    @Override // androidx.fragment.app.c0
    public final View r(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        e eVar;
        d7.g.f("inflater", layoutInflater);
        q qVar = (q) ((FacebookActivity) E()).f1320a;
        this.f6179w0 = (h) (qVar != null ? qVar.K().f() : null);
        if (bundle != null && (eVar = (e) bundle.getParcelable("request_state")) != null) {
            T(eVar);
        }
        return null;
    }

    @Override // androidx.fragment.app.t, androidx.fragment.app.c0
    public final void t() {
        this.B0 = true;
        this.f6180x0.set(true);
        super.t();
        a0 a0Var = this.f6181y0;
        if (a0Var != null) {
            a0Var.cancel(true);
        }
        ScheduledFuture scheduledFuture = this.f6182z0;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
    }

    @Override // androidx.fragment.app.t, androidx.fragment.app.c0
    public final void y(Bundle bundle) {
        super.y(bundle);
        if (this.A0 != null) {
            bundle.putParcelable("request_state", this.A0);
        }
    }
}
