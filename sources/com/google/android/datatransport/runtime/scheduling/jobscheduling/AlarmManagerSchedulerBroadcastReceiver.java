package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import c5.h;
import f3.i;
import f3.q;
import i2.c;
import l3.d;
import p3.a;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f1363a = 0;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int iIntValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i6 = intent.getExtras().getInt("attemptNumber");
        q.b(context);
        h hVarA = i.a();
        hVarA.v(queryParameter);
        hVarA.f1062d = a.b(iIntValue);
        if (queryParameter2 != null) {
            hVarA.f1061c = Base64.decode(queryParameter2, 0);
        }
        l3.i iVar = q.a().f2590d;
        iVar.f3813e.execute(new d(iVar, hVarA.g(), i6, new c(7)));
    }
}
