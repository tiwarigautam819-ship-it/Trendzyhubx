package g0;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.engagelab.privates.push.constants.MTPushConstants;
import java.util.concurrent.CountDownLatch;
import p4.q;
import u3.n;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2847a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f2848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f2849c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f2850d;

    public /* synthetic */ m() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object objCall;
        int i6;
        q qVarB;
        switch (this.f2847a) {
            case 0:
                try {
                    objCall = ((f) this.f2848b).call();
                    break;
                } catch (Exception unused) {
                    objCall = null;
                }
                ((Handler) this.f2850d).post(new s4.b((g) this.f2849c, 2, objCall));
                return;
            default:
                u3.a aVar = (u3.a) this.f2849c;
                Intent intent = aVar.f5445a;
                String stringExtra = intent.getStringExtra("google.message_id");
                if (stringExtra == null) {
                    stringExtra = intent.getStringExtra(MTPushConstants.Message.KEY_MESSAGE_ID);
                }
                if (TextUtils.isEmpty(stringExtra)) {
                    qVarB = j7.g.l(null);
                } else {
                    Bundle bundle = new Bundle();
                    Intent intent2 = aVar.f5445a;
                    String stringExtra2 = intent2.getStringExtra("google.message_id");
                    if (stringExtra2 == null) {
                        stringExtra2 = intent2.getStringExtra(MTPushConstants.Message.KEY_MESSAGE_ID);
                    }
                    bundle.putString("google.message_id", stringExtra2);
                    Intent intent3 = aVar.f5445a;
                    Integer numValueOf = intent3.hasExtra("google.product_id") ? Integer.valueOf(intent3.getIntExtra("google.product_id", 0)) : null;
                    if (numValueOf != null) {
                        bundle.putInt("google.product_id", numValueOf.intValue());
                    }
                    Context context = (Context) this.f2848b;
                    bundle.putBoolean("supports_message_handled", true);
                    n nVarA = n.a(context);
                    synchronized (nVarA) {
                        i6 = nVarA.f5487d;
                        nVarA.f5487d = i6 + 1;
                    }
                    qVarB = nVarA.b(new u3.m(i6, 2, bundle, 0));
                }
                qVarB.a(u3.h.f5462b, new p4.l((CountDownLatch) this.f2850d));
                return;
        }
    }

    public /* synthetic */ m(Context context, u3.a aVar, CountDownLatch countDownLatch) {
        this.f2848b = context;
        this.f2849c = aVar;
        this.f2850d = countDownLatch;
    }
}
