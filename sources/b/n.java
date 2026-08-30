package b;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n extends d.h {
    public final /* synthetic */ androidx.fragment.app.h0 h;

    public n(androidx.fragment.app.h0 h0Var) {
        this.h = h0Var;
    }

    @Override // d.h
    public final void b(int i6, e.a aVar, Object obj) {
        Bundle bundleExtra;
        int i9;
        d7.g.f("contract", aVar);
        androidx.fragment.app.h0 h0Var = this.h;
        k1.h hVarB = aVar.b(h0Var, obj);
        if (hVarB != null) {
            new Handler(Looper.getMainLooper()).post(new m(i6, 0, this, hVarB));
            return;
        }
        Intent intentA = aVar.a(h0Var, obj);
        if (intentA.getExtras() != null) {
            Bundle extras = intentA.getExtras();
            d7.g.c(extras);
            if (extras.getClassLoader() == null) {
                intentA.setExtrasClassLoader(h0Var.getClassLoader());
            }
        }
        if (intentA.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
            bundleExtra = intentA.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            intentA.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
        } else {
            bundleExtra = null;
        }
        Bundle bundle = bundleExtra;
        if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(intentA.getAction())) {
            String[] stringArrayExtra = intentA.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            if (stringArrayExtra == null) {
                stringArrayExtra = new String[0];
            }
            y.b.d(h0Var, stringArrayExtra, i6);
            return;
        }
        if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(intentA.getAction())) {
            h0Var.startActivityForResult(intentA, i6, bundle);
            return;
        }
        d.i iVar = (d.i) intentA.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
        try {
            d7.g.c(iVar);
            i9 = i6;
        } catch (IntentSender.SendIntentException e9) {
            e = e9;
            i9 = i6;
        }
        try {
            h0Var.startIntentSenderForResult(iVar.f2211a, i9, iVar.f2212b, iVar.f2213c, iVar.f2214d, 0, bundle);
        } catch (IntentSender.SendIntentException e10) {
            e = e10;
            new Handler(Looper.getMainLooper()).post(new m(i9, 1, this, e));
        }
    }
}
