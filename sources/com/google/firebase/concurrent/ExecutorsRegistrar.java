package com.google.firebase.concurrent;

import com.getcapacitor.n;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import u4.a;
import u4.c;
import u4.d;
import v4.b;
import v4.l;
import v4.p;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ExecutorsRegistrar implements ComponentRegistrar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f2022a = new l(new com.google.firebase.messaging.l(3));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final l f2023b = new l(new com.google.firebase.messaging.l(4));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final l f2024c = new l(new com.google.firebase.messaging.l(5));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final l f2025d = new l(new com.google.firebase.messaging.l(6));

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        p pVar = new p(a.class, ScheduledExecutorService.class);
        p[] pVarArr = {new p(a.class, ExecutorService.class), new p(a.class, Executor.class)};
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(pVar);
        for (p pVar2 : pVarArr) {
            z7.l.c("Null interface", pVar2);
        }
        Collections.addAll(hashSet, pVarArr);
        b bVar = new b(null, new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new n(24), hashSet3);
        p pVar3 = new p(u4.b.class, ScheduledExecutorService.class);
        p[] pVarArr2 = {new p(u4.b.class, ExecutorService.class), new p(u4.b.class, Executor.class)};
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        HashSet hashSet6 = new HashSet();
        hashSet4.add(pVar3);
        for (p pVar4 : pVarArr2) {
            z7.l.c("Null interface", pVar4);
        }
        Collections.addAll(hashSet4, pVarArr2);
        b bVar2 = new b(null, new HashSet(hashSet4), new HashSet(hashSet5), 0, 0, new n(25), hashSet6);
        p pVar5 = new p(c.class, ScheduledExecutorService.class);
        p[] pVarArr3 = {new p(c.class, ExecutorService.class), new p(c.class, Executor.class)};
        HashSet hashSet7 = new HashSet();
        HashSet hashSet8 = new HashSet();
        HashSet hashSet9 = new HashSet();
        hashSet7.add(pVar5);
        for (p pVar6 : pVarArr3) {
            z7.l.c("Null interface", pVar6);
        }
        Collections.addAll(hashSet7, pVarArr3);
        b bVar3 = new b(null, new HashSet(hashSet7), new HashSet(hashSet8), 0, 0, new n(26), hashSet9);
        v4.a aVarB = b.b(new p(d.class, Executor.class));
        aVarB.f5586f = new n(27);
        return Arrays.asList(bVar, bVar2, bVar3, aVarB.b());
    }
}
