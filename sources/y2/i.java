package y2;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import q2.g0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f6186a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g.g f6187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b2.d f6188c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6189d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Messenger f6190e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f6191f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f6192g;
    public final String h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f6193i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f6194j;

    public i(Context context, m mVar) {
        d7.g.f("request", mVar);
        String str = mVar.f6203d;
        String str2 = mVar.f6213w;
        d7.g.f("applicationId", str);
        Context applicationContext = context.getApplicationContext();
        this.f6186a = applicationContext != null ? applicationContext : context;
        this.f6191f = 65536;
        this.f6192g = 65537;
        this.h = str;
        this.f6193i = 20121101;
        this.f6194j = str2;
        this.f6187b = new g.g(this);
    }

    public final void a(Bundle bundle) {
        if (this.f6189d) {
            this.f6189d = false;
            b2.d dVar = this.f6188c;
            if (dVar != null) {
                j jVar = (j) dVar.f908b;
                m mVar = (m) dVar.f909c;
                d7.g.f("$request", mVar);
                i iVar = jVar.f6195c;
                if (iVar != null) {
                    iVar.f6188c = null;
                }
                jVar.f6195c = null;
                p pVar = jVar.d().f6228e;
                if (pVar != null) {
                    View view = ((q) pVar.f6235a).f6240j0;
                    if (view == null) {
                        d7.g.i("progressBar");
                        throw null;
                    }
                    view.setVisibility(8);
                }
                if (bundle != null) {
                    List stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
                    if (stringArrayList == null) {
                        stringArrayList = s6.o.f5282a;
                    }
                    Set<String> set = mVar.f6201b;
                    if (set == null) {
                        set = s6.q.f5284a;
                    }
                    String string = bundle.getString("com.facebook.platform.extra.ID_TOKEN");
                    if (set.contains("openid") && (string == null || string.length() == 0)) {
                        jVar.d().j();
                        return;
                    }
                    if (stringArrayList.containsAll(set)) {
                        String string2 = bundle.getString("com.facebook.platform.extra.USER_ID");
                        if (string2 != null && string2.length() != 0) {
                            jVar.l(mVar, bundle);
                            return;
                        }
                        p pVar2 = jVar.d().f6228e;
                        if (pVar2 != null) {
                            View view2 = ((q) pVar2.f6235a).f6240j0;
                            if (view2 == null) {
                                d7.g.i("progressBar");
                                throw null;
                            }
                            view2.setVisibility(0);
                        }
                        String string3 = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
                        if (string3 == null) {
                            throw new IllegalStateException("Required value was null.");
                        }
                        g0.q(string3, new c5.h(bundle, jVar, mVar, 20));
                        return;
                    }
                    HashSet hashSet = new HashSet();
                    for (String str : set) {
                        if (!stringArrayList.contains(str)) {
                            hashSet.add(str);
                        }
                    }
                    if (!hashSet.isEmpty()) {
                        jVar.a("new_permissions", TextUtils.join(",", hashSet));
                    }
                    mVar.f6201b = hashSet;
                }
                jVar.d().j();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        d7.g.f("name", componentName);
        d7.g.f("service", iBinder);
        this.f6190e = new Messenger(iBinder);
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.extra.APPLICATION_ID", this.h);
        String str = this.f6194j;
        if (str != null) {
            bundle.putString("com.facebook.platform.extra.NONCE", str);
        }
        Message messageObtain = Message.obtain((Handler) null, this.f6191f);
        messageObtain.arg1 = this.f6193i;
        messageObtain.setData(bundle);
        messageObtain.replyTo = new Messenger(this.f6187b);
        try {
            Messenger messenger = this.f6190e;
            if (messenger != null) {
                messenger.send(messageObtain);
            }
        } catch (RemoteException unused) {
            a(null);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        d7.g.f("name", componentName);
        this.f6190e = null;
        try {
            this.f6186a.unbindService(this);
        } catch (IllegalArgumentException unused) {
        }
        a(null);
    }
}
