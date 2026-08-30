package n4;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.g;
import com.google.android.gms.common.internal.j;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends j implements w3.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f4328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g f4329c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Bundle f4330d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Integer f4331e;

    public a(Context context, Looper looper, g gVar, Bundle bundle, w3.c cVar, w3.d dVar) {
        super(context, looper, 44, gVar, cVar, dVar);
        this.f4328b = true;
        this.f4329c = gVar;
        this.f4330d = bundle;
        this.f4331e = (Integer) gVar.f1414g;
    }

    @Override // com.google.android.gms.common.internal.f
    public final IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof c ? (c) iInterfaceQueryLocalInterface : new c(iBinder, "com.google.android.gms.signin.internal.ISignInService", 0);
    }

    @Override // com.google.android.gms.common.internal.f
    public final Bundle getGetServiceRequestExtraArgs() {
        g gVar = this.f4329c;
        boolean zEquals = getContext().getPackageName().equals((String) gVar.f1411d);
        Bundle bundle = this.f4330d;
        if (!zEquals) {
            bundle.putString("com.google.android.gms.signin.internal.realClientPackageName", (String) gVar.f1411d);
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.f
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.f
    public final String getServiceDescriptor() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.f
    public final String getStartServiceAction() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.f, w3.a
    public final boolean requiresSignIn() {
        return this.f4328b;
    }
}
