package u3;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.google.android.gms.internal.measurement.y4;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f5470b;

    public /* synthetic */ j(l lVar, int i6) {
        this.f5469a = i6;
        this.f5470b = lVar;
    }

    private final void a() {
        l lVar = this.f5470b;
        synchronized (lVar) {
            if (lVar.f5472a == 1) {
                lVar.a("Timed out while binding");
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5469a) {
            case 0:
                break;
            case 1:
                a();
                return;
            default:
                this.f5470b.a("Service disconnected");
                return;
        }
        while (true) {
            l lVar = this.f5470b;
            synchronized (lVar) {
                try {
                    if (lVar.f5472a != 2) {
                        return;
                    }
                    if (lVar.f5475d.isEmpty()) {
                        lVar.c();
                        return;
                    }
                    m mVar = (m) lVar.f5475d.poll();
                    lVar.f5476e.put(mVar.f5478a, mVar);
                    lVar.f5477f.f5485b.schedule(new s4.b(lVar, 16, mVar), 30L, TimeUnit.SECONDS);
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        Log.d("MessengerIpcClient", "Sending ".concat(String.valueOf(mVar)));
                    }
                    n nVar = lVar.f5477f;
                    Messenger messenger = lVar.f5473b;
                    int i6 = mVar.f5480c;
                    Context context = nVar.f5484a;
                    Message messageObtain = Message.obtain();
                    messageObtain.what = i6;
                    messageObtain.arg1 = mVar.f5478a;
                    messageObtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", mVar.a());
                    bundle.putString("pkg", context.getPackageName());
                    bundle.putBundle(MTCoreConstants.Protocol.KEY_DATA, mVar.f5481d);
                    messageObtain.setData(bundle);
                    try {
                        y4 y4Var = lVar.f5474c;
                        Messenger messenger2 = (Messenger) y4Var.f1990b;
                        if (messenger2 != null) {
                            messenger2.send(messageObtain);
                        } else {
                            g gVar = (g) y4Var.f1991c;
                            if (gVar == null) {
                                throw new IllegalStateException("Both messengers are null");
                            }
                            Messenger messenger3 = gVar.f5461a;
                            messenger3.getClass();
                            messenger3.send(messageObtain);
                        }
                    } catch (RemoteException e9) {
                        lVar.a(e9.getMessage());
                    }
                } finally {
                }
            }
        }
    }
}
