package b;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import eventTrack.jpush.EngagelabInitManager;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f816b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f817c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f818d;

    public /* synthetic */ m(int i6, int i9, Object obj, Object obj2) {
        this.f815a = i9;
        this.f816b = obj;
        this.f817c = i6;
        this.f818d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f815a) {
            case 0:
                n nVar = (n) this.f816b;
                Object obj = ((k1.h) this.f818d).f3502b;
                String str = (String) nVar.f2204a.get(Integer.valueOf(this.f817c));
                if (str != null) {
                    d.e eVar = (d.e) nVar.f2208e.get(str);
                    if ((eVar != null ? eVar.f2196a : null) != null) {
                        d.b bVar = eVar.f2196a;
                        d7.g.d("null cannot be cast to non-null type androidx.activity.result.ActivityResultCallback<O of androidx.activity.result.ActivityResultRegistry.dispatchResult>", bVar);
                        if (nVar.f2207d.remove(str)) {
                            bVar.e(obj);
                        }
                    } else {
                        nVar.f2210g.remove(str);
                        nVar.f2209f.put(str, obj);
                    }
                    break;
                }
                break;
            case 1:
                n nVar2 = (n) this.f816b;
                IntentSender.SendIntentException sendIntentException = (IntentSender.SendIntentException) this.f818d;
                d7.g.f("this$0", nVar2);
                d7.g.f("$e", sendIntentException);
                nVar2.a(this.f817c, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", sendIntentException));
                break;
            case 2:
                ((d1.a) this.f816b).f2216b.i(this.f817c, this.f818d);
                break;
            case 3:
                d7.k kVar = (d7.k) this.f816b;
                int i6 = this.f817c;
                Context context = (Context) this.f818d;
                if (!v2.a.b(i2.g.class)) {
                    try {
                        a1.a.n(i6, "$billingClientVersion");
                        ((i2.h) kVar.f2298b).a(i2.s.SUBS, new i2.f(i6, context, 1));
                    } catch (Throwable th) {
                        v2.a.a(th, i2.g.class);
                        return;
                    }
                    break;
                }
                break;
            default:
                EngagelabInitManager.lambda$pollRegistrationId$0((Context) this.f816b, this.f817c, (EngagelabInitManager.TokenCallback) this.f818d);
                break;
        }
    }
}
