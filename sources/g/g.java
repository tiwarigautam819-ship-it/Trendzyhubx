package g;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.engagelab.privates.push.constants.MTPushConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2706a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f2707b;

    public /* synthetic */ g() {
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int size;
        u3.o[] oVarArr;
        switch (this.f2706a) {
            case 0:
                int i6 = message.what;
                if (i6 == -3 || i6 == -2 || i6 == -1) {
                    ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) ((WeakReference) this.f2707b).get(), message.what);
                    return;
                } else {
                    if (i6 != 1) {
                        return;
                    }
                    ((DialogInterface) message.obj).dismiss();
                    return;
                }
            case 1:
                if (v2.a.b(this)) {
                    return;
                }
                try {
                    d7.g.f(MTPushConstants.Message.KEY_MESSAGE, message);
                    y2.i iVar = (y2.i) this.f2707b;
                    if (message.what == iVar.f6192g) {
                        Bundle data = message.getData();
                        if (data.getString("com.facebook.platform.status.ERROR_TYPE") != null) {
                            iVar.a(null);
                        } else {
                            iVar.a(data);
                        }
                        try {
                            iVar.f6186a.unbindService(iVar);
                            return;
                        } catch (IllegalArgumentException unused) {
                            return;
                        }
                    }
                    return;
                } catch (Throwable th) {
                    v2.a.a(th, this);
                    return;
                }
            default:
                if (message.what != 1) {
                    super.handleMessage(message);
                    return;
                }
                y0.b bVar = (y0.b) this.f2707b;
                while (true) {
                    synchronized (bVar.f6102b) {
                        try {
                            size = bVar.f6104d.size();
                            if (size <= 0) {
                                return;
                            }
                            oVarArr = new u3.o[size];
                            bVar.f6104d.toArray(oVarArr);
                            bVar.f6104d.clear();
                        } finally {
                        }
                    }
                    for (int i9 = 0; i9 < size; i9++) {
                        u3.o oVar = oVarArr[i9];
                        int size2 = ((ArrayList) oVar.f5489b).size();
                        for (int i10 = 0; i10 < size2; i10++) {
                            y0.a aVar = (y0.a) ((ArrayList) oVar.f5489b).get(i10);
                            if (!aVar.f6098d) {
                                aVar.f6096b.onReceive(bVar.f6101a, (Intent) oVar.f5488a);
                            }
                        }
                    }
                }
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(y0.b bVar, Looper looper) {
        super(looper);
        this.f2707b = bVar;
    }

    public g(y2.i iVar) {
        this.f2707b = iVar;
    }
}
