package com.android.installreferrer.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import com.android.installreferrer.commons.InstallReferrerCommons;
import q3.c;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InstallReferrerStateListener f1080a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f1081b;

    public a(b bVar, InstallReferrerStateListener installReferrerStateListener) {
        this.f1081b = bVar;
        if (installReferrerStateListener == null) {
            throw new RuntimeException("Please specify a listener to know when setup is done.");
        }
        this.f1080a = installReferrerStateListener;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        c cVar;
        InstallReferrerCommons.logVerbose("InstallReferrerClient", "Install Referrer service connected.");
        int i6 = q3.b.f4851b;
        if (iBinder == null) {
            cVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) {
                q3.a aVar = new q3.a();
                aVar.f4850b = iBinder;
                cVar = aVar;
            } else {
                cVar = (c) iInterfaceQueryLocalInterface;
            }
        }
        b bVar = this.f1081b;
        bVar.f1084c = cVar;
        bVar.f1082a = 2;
        this.f1080a.onInstallReferrerSetupFinished(0);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        InstallReferrerCommons.logWarn("InstallReferrerClient", "Install Referrer service disconnected.");
        b bVar = this.f1081b;
        bVar.f1084c = null;
        bVar.f1082a = 0;
        this.f1080a.onInstallReferrerServiceDisconnected();
    }
}
