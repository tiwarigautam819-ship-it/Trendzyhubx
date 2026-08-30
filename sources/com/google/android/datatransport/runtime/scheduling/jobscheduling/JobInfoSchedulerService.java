package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import c5.h;
import f3.i;
import f3.q;
import l3.d;
import p3.a;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f1364a = 0;

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i6 = jobParameters.getExtras().getInt("priority");
        int i9 = jobParameters.getExtras().getInt("attemptNumber");
        q.b(getApplicationContext());
        h hVarA = i.a();
        hVarA.v(string);
        hVarA.f1062d = a.b(i6);
        if (string2 != null) {
            hVarA.f1061c = Base64.decode(string2, 0);
        }
        l3.i iVar = q.a().f2590d;
        iVar.f3813e.execute(new d(iVar, hVarA.g(), i9, new a2.i(this, 12, jobParameters)));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
