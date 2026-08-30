package v3;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.measurement.r0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f5556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f5557b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(d dVar, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper(), 1);
        this.f5557b = dVar;
        this.f5556a = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i6 = message.what;
        if (i6 != 1) {
            Log.w("GoogleApiAvailability", "Don't know how to handle this message: " + i6);
            return;
        }
        int i9 = e.f5543a;
        d dVar = this.f5557b;
        Context context = this.f5556a;
        int iB = dVar.b(context, i9);
        int i10 = f.f5549e;
        if (iB == 1 || iB == 2 || iB == 3 || iB == 9) {
            Intent intentA = dVar.a(context, iB, "n");
            dVar.f(context, iB, intentA == null ? null : PendingIntent.getActivity(context, 0, intentA, 201326592));
        }
    }
}
