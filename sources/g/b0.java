package g;

import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.os.PowerManager;
import android.util.Log;
import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b0 extends c0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2645c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ f0 f2646d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f2647e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(f0 f0Var, c5.h hVar) {
        super(f0Var);
        this.f2646d = f0Var;
        this.f2647e = hVar;
    }

    @Override // g.c0
    public final IntentFilter d() {
        switch (this.f2645c) {
            case 0:
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            default:
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.TIME_SET");
                intentFilter2.addAction("android.intent.action.TIMEZONE_CHANGED");
                intentFilter2.addAction("android.intent.action.TIME_TICK");
                return intentFilter2;
        }
    }

    @Override // g.c0
    public final int e() {
        Location location;
        boolean z5;
        long j3;
        switch (this.f2645c) {
            case 0:
                return x.a((PowerManager) this.f2647e) ? 2 : 1;
            default:
                c5.h hVar = (c5.h) this.f2647e;
                p0 p0Var = (p0) hVar.f1062d;
                LocationManager locationManager = (LocationManager) hVar.f1061c;
                if (p0Var.f2765b <= System.currentTimeMillis()) {
                    Context context = (Context) hVar.f1060b;
                    Location lastKnownLocation = null;
                    if (z.c.b(context, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                        try {
                        } catch (Exception e9) {
                            Log.d("TwilightManager", "Failed to get last known location", e9);
                        }
                        Location lastKnownLocation2 = locationManager.isProviderEnabled("network") ? locationManager.getLastKnownLocation("network") : null;
                        location = lastKnownLocation2;
                    } else {
                        location = null;
                    }
                    if (z.c.b(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                        try {
                            if (locationManager.isProviderEnabled("gps")) {
                                lastKnownLocation = locationManager.getLastKnownLocation("gps");
                            }
                        } catch (Exception e10) {
                            Log.d("TwilightManager", "Failed to get last known location", e10);
                        }
                    }
                    if (lastKnownLocation == null || location == null ? lastKnownLocation != null : lastKnownLocation.getTime() > location.getTime()) {
                        location = lastKnownLocation;
                    }
                    if (location != null) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (o0.f2760d == null) {
                            o0.f2760d = new o0();
                        }
                        o0 o0Var = o0.f2760d;
                        o0Var.a(jCurrentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
                        o0Var.a(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
                        z5 = o0Var.f2763c == 1;
                        long j8 = o0Var.f2762b;
                        long j9 = o0Var.f2761a;
                        o0Var.a(86400000 + jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
                        long j10 = o0Var.f2762b;
                        if (j8 == -1 || j9 == -1) {
                            j3 = jCurrentTimeMillis + 43200000;
                        } else {
                            if (jCurrentTimeMillis > j9) {
                                j8 = j10;
                            } else if (jCurrentTimeMillis > j8) {
                                j8 = j9;
                            }
                            j3 = j8 + 60000;
                        }
                        p0Var.f2764a = z5;
                        p0Var.f2765b = j3;
                    } else {
                        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                        int i6 = Calendar.getInstance().get(11);
                        if (i6 < 6 || i6 >= 22) {
                            z5 = true;
                        }
                    }
                    break;
                } else {
                    z5 = p0Var.f2764a;
                }
                return z5 ? 2 : 1;
        }
    }

    @Override // g.c0
    public final void g() throws IllegalAccessException {
        switch (this.f2645c) {
            case 0:
                this.f2646d.o(true, true);
                break;
            default:
                this.f2646d.o(true, true);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(f0 f0Var, Context context) {
        super(f0Var);
        this.f2646d = f0Var;
        this.f2647e = (PowerManager) context.getApplicationContext().getSystemService("power");
    }
}
