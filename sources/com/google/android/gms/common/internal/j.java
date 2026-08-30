package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j extends f implements w3.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set f1440a;

    /* JADX WARN: Illegal instructions before constructor call */
    public j(Context context, Looper looper, int i6, g gVar, w3.c cVar, w3.d dVar) {
        o0 o0VarA = k.a(context);
        v3.d dVar2 = v3.d.f5542d;
        d0.h(cVar);
        d0.h(dVar);
        super(context, looper, o0VarA, dVar2, i6, new o(cVar), new o(dVar), (String) gVar.f1412e);
        Set set = (Set) gVar.f1410c;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!set.contains((Scope) it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        this.f1440a = set;
    }

    @Override // w3.a
    public final Set a() {
        return requiresSignIn() ? this.f1440a : Collections.EMPTY_SET;
    }

    @Override // com.google.android.gms.common.internal.f
    public final Account getAccount() {
        return null;
    }

    @Override // com.google.android.gms.common.internal.f
    public final Executor getBindServiceExecutor() {
        return null;
    }

    @Override // com.google.android.gms.common.internal.f
    public final Set getScopes() {
        return this.f1440a;
    }
}
