package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Boolean f1502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f1504c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1505d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Bundle f1506e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ f f1507f;

    public x(f fVar, int i6, Bundle bundle) {
        this.f1507f = fVar;
        Boolean bool = Boolean.TRUE;
        this.f1504c = fVar;
        this.f1502a = bool;
        this.f1503b = false;
        this.f1505d = i6;
        this.f1506e = bundle;
    }

    public abstract void a(ConnectionResult connectionResult);

    public abstract boolean b();

    public final void c() {
        synchronized (this) {
            this.f1502a = null;
        }
    }

    public final void d() {
        c();
        synchronized (this.f1504c.zzt) {
            this.f1504c.zzt.remove(this);
        }
    }
}
