package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.r0;
import q2.x;
import x3.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f1392b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1393a = 0;

    @Override // android.app.Activity
    public final void onActivityResult(int i6, int i9, Intent intent) {
        super.onActivityResult(i6, i9, intent);
        if (i6 == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.f1393a = 0;
            setResult(i9, intent);
            if (booleanExtra) {
                d dVarD = d.d(this);
                if (i9 == -1) {
                    r0 r0Var = dVarD.f5977m;
                    r0Var.sendMessage(r0Var.obtainMessage(3));
                } else if (i9 == 0) {
                    dVarD.e(new ConnectionResult(13, null), getIntent().getIntExtra("failing_client_id", -1));
                }
            }
        } else if (i6 == 2) {
            this.f1393a = 0;
            setResult(i9, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f1393a = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        GoogleApiActivity googleApiActivity;
        super.onCreate(bundle);
        if (bundle != null) {
            this.f1393a = bundle.getInt("resolution");
        }
        if (this.f1393a == 1) {
            return;
        }
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            Log.e("GoogleApiActivity", "Activity started without extras");
            finish();
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
        Integer num = (Integer) extras.get("error_code");
        if (pendingIntent == null && num == null) {
            Log.e("GoogleApiActivity", "Activity started without resolution");
            finish();
            return;
        }
        if (pendingIntent == null) {
            d0.h(num);
            v3.d.f5542d.c(this, num.intValue(), this);
            this.f1393a = 1;
            return;
        }
        try {
            googleApiActivity = this;
            try {
                googleApiActivity.startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                googleApiActivity.f1393a = 1;
            } catch (ActivityNotFoundException e9) {
                e = e9;
                if (extras.getBoolean("notify_manager", true)) {
                    d.d(this).e(new ConnectionResult(22, null), getIntent().getIntExtra("failing_client_id", -1));
                } else {
                    String strG = x.g("Activity not found while launching ", pendingIntent.toString(), ".");
                    if (Build.FINGERPRINT.contains("generic")) {
                        strG = strG.concat(" This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store.");
                    }
                    Log.e("GoogleApiActivity", strG, e);
                }
                googleApiActivity.f1393a = 1;
                finish();
            } catch (IntentSender.SendIntentException e10) {
                e = e10;
                Log.e("GoogleApiActivity", "Failed to launch pendingIntent", e);
                finish();
            }
        } catch (ActivityNotFoundException e11) {
            e = e11;
            googleApiActivity = this;
        } catch (IntentSender.SendIntentException e12) {
            e = e12;
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("resolution", this.f1393a);
        super.onSaveInstanceState(bundle);
    }
}
