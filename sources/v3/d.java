package v3;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import androidx.fragment.app.h0;
import androidx.fragment.app.y0;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.common.internal.t;
import com.google.android.gms.common.internal.u;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f5541c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final d f5542d = new d();

    public static AlertDialog d(Activity activity, int i6, u uVar, DialogInterface.OnCancelListener onCancelListener) {
        if (i6 == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        activity.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(activity, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(activity);
        }
        builder.setMessage(t.b(activity, i6));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        Resources resources = activity.getResources();
        String string = i6 != 1 ? i6 != 2 ? i6 != 3 ? resources.getString(R.string.ok) : resources.getString(com.YaarWin.app.R.string.common_google_play_services_enable_button) : resources.getString(com.YaarWin.app.R.string.common_google_play_services_update_button) : resources.getString(com.YaarWin.app.R.string.common_google_play_services_install_button);
        if (string != null) {
            builder.setPositiveButton(string, uVar);
        }
        String strC = t.c(activity, i6);
        if (strC != null) {
            builder.setTitle(strC);
        }
        Log.w("GoogleApiAvailability", a1.a.i(i6, "Creating dialog for Google Play services availability issue. ConnectionResult="), new IllegalArgumentException());
        return builder.create();
    }

    public static void e(Activity activity, AlertDialog alertDialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof h0) {
                y0 supportFragmentManager = ((h0) activity).getSupportFragmentManager();
                h hVar = new h();
                d0.i("Cannot display null dialog", alertDialog);
                alertDialog.setOnCancelListener(null);
                alertDialog.setOnDismissListener(null);
                hVar.f5553t0 = alertDialog;
                if (onCancelListener != null) {
                    hVar.f5554u0 = onCancelListener;
                }
                hVar.L(supportFragmentManager, str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        b bVar = new b();
        d0.i("Cannot display null dialog", alertDialog);
        alertDialog.setOnCancelListener(null);
        alertDialog.setOnDismissListener(null);
        bVar.f5535a = alertDialog;
        if (onCancelListener != null) {
            bVar.f5536b = onCancelListener;
        }
        bVar.show(fragmentManager, str);
    }

    public final void c(GoogleApiActivity googleApiActivity, int i6, GoogleApiActivity googleApiActivity2) {
        AlertDialog alertDialogD = d(googleApiActivity, i6, new u(super.a(googleApiActivity, i6, "d"), googleApiActivity, 0), googleApiActivity2);
        if (alertDialogD == null) {
            return;
        }
        e(googleApiActivity, alertDialogD, "GooglePlayServicesErrorDialog", googleApiActivity2);
    }

    public final void f(Context context, int i6, PendingIntent pendingIntent) {
        int i9;
        Log.w("GoogleApiAvailability", a1.a.j(i6, "GMS core API Availability. ConnectionResult=", ", tag=null"), new IllegalArgumentException());
        if (i6 == 18) {
            new i(this, context).sendEmptyMessageDelayed(1, 120000L);
            return;
        }
        if (pendingIntent == null) {
            if (i6 == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
                return;
            }
            return;
        }
        String strE = i6 == 6 ? t.e(context, "common_google_play_services_resolution_required_title") : t.c(context, i6);
        if (strE == null) {
            strE = context.getResources().getString(com.YaarWin.app.R.string.common_google_play_services_notification_ticker);
        }
        String strD = (i6 == 6 || i6 == 19) ? t.d(context, "common_google_play_services_resolution_required_text", t.a(context)) : t.b(context, i6);
        Resources resources = context.getResources();
        Object systemService = context.getSystemService("notification");
        d0.h(systemService);
        NotificationManager notificationManager = (NotificationManager) systemService;
        y.p pVar = new y.p(context, null);
        pVar.f6082m = true;
        pVar.c(true);
        pVar.f6075e = y.p.b(strE);
        y.n nVar = new y.n();
        nVar.f6070b = y.p.b(strD);
        pVar.e(nVar);
        PackageManager packageManager = context.getPackageManager();
        if (b4.c.f948c == null) {
            b4.c.f948c = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        if (b4.c.f948c.booleanValue()) {
            pVar.f6088s.icon = context.getApplicationInfo().icon;
            pVar.f6079j = 2;
            if (b4.c.d(context)) {
                pVar.f6072b.add(new y.j(resources.getString(com.YaarWin.app.R.string.common_open_on_phone), pendingIntent));
            } else {
                pVar.f6077g = pendingIntent;
            }
        } else {
            pVar.f6088s.icon = R.drawable.stat_sys_warning;
            pVar.f6088s.tickerText = y.p.b(resources.getString(com.YaarWin.app.R.string.common_google_play_services_notification_ticker));
            pVar.f6088s.when = System.currentTimeMillis();
            pVar.f6077g = pendingIntent;
            pVar.f6076f = y.p.b(strD);
        }
        if (b4.c.b()) {
            if (!b4.c.b()) {
                throw new IllegalStateException();
            }
            synchronized (f5541c) {
            }
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
            String string = context.getResources().getString(com.YaarWin.app.R.string.common_google_play_services_notification_channel_name);
            if (notificationChannel == null) {
                notificationManager.createNotificationChannel(r1.a.e(string));
            } else if (!string.contentEquals(notificationChannel.getName())) {
                notificationChannel.setName(string);
                notificationManager.createNotificationChannel(notificationChannel);
            }
            pVar.f6086q = "com.google.android.gms.availability";
        }
        Notification notificationA = pVar.a();
        if (i6 == 1 || i6 == 2 || i6 == 3) {
            f.f5545a.set(false);
            i9 = 10436;
        } else {
            i9 = 39789;
        }
        notificationManager.notify(i9, notificationA);
    }

    public final void g(Activity activity, x3.f fVar, int i6, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog alertDialogD = d(activity, i6, new u(super.a(activity, i6, "d"), fVar, 1), onCancelListener);
        if (alertDialogD == null) {
            return;
        }
        e(activity, alertDialogD, "GooglePlayServicesErrorDialog", onCancelListener);
    }
}
