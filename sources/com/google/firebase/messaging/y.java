package com.google.firebase.messaging;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import androidx.fragment.app.c1;
import androidx.fragment.app.g1;
import androidx.fragment.app.y0;
import com.google.android.gms.internal.measurement.a5;
import com.google.android.gms.internal.measurement.l4;
import com.google.android.gms.internal.measurement.m1;
import com.google.android.gms.internal.measurement.o6;
import com.google.android.gms.internal.measurement.p4;
import com.google.android.gms.internal.measurement.ua;
import com.google.android.gms.internal.measurement.y4;
import java.io.InterruptedIOException;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class y implements k.a, h3.b, v4.c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static y f2161e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f2162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f2163b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f2164c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f2165d;

    public /* synthetic */ y(Object obj, Object obj2, Object obj3, Object obj4) {
        this.f2162a = obj;
        this.f2163b = obj2;
        this.f2164c = obj3;
        this.f2165d = obj4;
    }

    public static synchronized y u() {
        try {
            if (f2161e == null) {
                f2161e = new y(0);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f2161e;
    }

    public synchronized List A() {
        List listUnmodifiableList;
        try {
            ArrayDeque arrayDeque = (ArrayDeque) this.f2165d;
            ArrayList arrayList = new ArrayList(s6.i.n(arrayDeque));
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                arrayList.add(((v7.f) it.next()).f5665c);
            }
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
            d7.g.e("unmodifiableList(readyAsyncCalls.map { it.call })", listUnmodifiableList);
        } catch (Throwable th) {
            throw th;
        }
        return listUnmodifiableList;
    }

    public synchronized List B() {
        List listUnmodifiableList;
        try {
            ArrayDeque arrayDeque = (ArrayDeque) this.f2164c;
            ArrayDeque arrayDeque2 = (ArrayDeque) this.f2163b;
            ArrayList arrayList = new ArrayList(s6.i.n(arrayDeque2));
            Iterator it = arrayDeque2.iterator();
            while (it.hasNext()) {
                arrayList.add(((v7.f) it.next()).f5665c);
            }
            listUnmodifiableList = Collections.unmodifiableList(s6.g.t(arrayDeque, arrayList));
            d7.g.e("unmodifiableList(running…yncCalls.map { it.call })", listUnmodifiableList);
        } catch (Throwable th) {
            throw th;
        }
        return listUnmodifiableList;
    }

    public synchronized int C() {
        return ((ArrayDeque) this.f2163b).size() + ((ArrayDeque) this.f2164c).size();
    }

    public Set D(Class cls) {
        return g(v4.p.a(cls));
    }

    public Bundle E(Bundle bundle, String str) {
        HashMap map = (HashMap) this.f2164c;
        return bundle != null ? (Bundle) map.put(str, bundle) : (Bundle) map.remove(str);
    }

    public com.google.android.gms.internal.measurement.n F(com.google.android.gms.internal.measurement.e eVar) {
        com.google.android.gms.internal.measurement.n nVarG = com.google.android.gms.internal.measurement.n.f1743n;
        Iterator itL = eVar.l();
        while (itL.hasNext()) {
            nVarG = ((y4) this.f2163b).G(this, eVar.e(((Integer) itL.next()).intValue()));
            if (nVarG instanceof com.google.android.gms.internal.measurement.h) {
                break;
            }
        }
        return nVarG;
    }

    public com.google.android.gms.internal.measurement.n G(com.google.android.gms.internal.measurement.n nVar) {
        return ((y4) this.f2163b).G(this, nVar);
    }

    public com.google.android.gms.internal.measurement.n H(y yVar, l4... l4VarArr) {
        com.google.android.gms.internal.measurement.n nVarA = com.google.android.gms.internal.measurement.n.f1743n;
        for (l4 l4Var : l4VarArr) {
            nVarA = a5.a(l4Var);
            p4.j((y) this.f2164c);
            if ((nVarA instanceof com.google.android.gms.internal.measurement.q) || (nVarA instanceof com.google.android.gms.internal.measurement.o)) {
                nVarA = ((y4) this.f2162a).G(yVar, nVarA);
            }
        }
        return nVarA;
    }

    public com.google.android.gms.internal.measurement.n I(String str) {
        y yVar = this;
        do {
            HashMap map = (HashMap) yVar.f2164c;
            if (map.containsKey(str)) {
                return (com.google.android.gms.internal.measurement.n) map.get(str);
            }
            yVar = (y) yVar.f2162a;
        } while (yVar != null);
        throw new IllegalArgumentException(q2.x.f(str, " is not defined"));
    }

    public y J() {
        return new y(this, (y4) this.f2163b);
    }

    public void K(String str, com.google.android.gms.internal.measurement.n nVar) {
        HashMap map = (HashMap) this.f2164c;
        if (((HashMap) this.f2165d).containsKey(str)) {
            return;
        }
        if (nVar == null) {
            map.remove(str);
        } else {
            map.put(str, nVar);
        }
    }

    public boolean L(String str) {
        y yVar = this;
        while (!((HashMap) yVar.f2164c).containsKey(str)) {
            yVar = (y) yVar.f2162a;
            if (yVar == null) {
                return false;
            }
        }
        return true;
    }

    public void M(String str, com.google.android.gms.internal.measurement.n nVar) {
        HashMap map;
        y yVar = this;
        while (true) {
            map = (HashMap) yVar.f2164c;
            y yVar2 = (y) yVar.f2162a;
            if (map.containsKey(str) || yVar2 == null || !yVar2.L(str)) {
                break;
            } else {
                yVar = yVar2;
            }
        }
        if (((HashMap) yVar.f2165d).containsKey(str)) {
            return;
        }
        if (nVar == null) {
            map.remove(str);
        } else {
            map.put(str, nVar);
        }
    }

    @Override // v4.c
    public Object a(Class cls) {
        if (!((Set) this.f2162a).contains(v4.p.a(cls))) {
            throw new androidx.fragment.app.a0("Attempting to request an undeclared dependency " + cls + ".");
        }
        Object objA = ((v4.c) this.f2165d).a(cls);
        if (!cls.equals(d5.c.class)) {
            return objA;
        }
        return new v4.q();
    }

    @Override // k.a
    public boolean b(k.b bVar, MenuItem menuItem) {
        return ((ActionMode.Callback) this.f2162a).onActionItemClicked(q(bVar), new l.u((Context) this.f2163b, (e0.a) menuItem));
    }

    @Override // v4.c
    public g5.a c(v4.p pVar) {
        if (((Set) this.f2163b).contains(pVar)) {
            return ((v4.c) this.f2165d).c(pVar);
        }
        throw new androidx.fragment.app.a0("Attempting to request an undeclared dependency Provider<" + pVar + ">.");
    }

    @Override // v4.c
    public Object d(v4.p pVar) {
        if (((Set) this.f2162a).contains(pVar)) {
            return ((v4.c) this.f2165d).d(pVar);
        }
        throw new androidx.fragment.app.a0("Attempting to request an undeclared dependency " + pVar + ".");
    }

    @Override // k.a
    public boolean e(k.b bVar, Menu menu) {
        ActionMode.Callback callback = (ActionMode.Callback) this.f2162a;
        k.f fVarQ = q(bVar);
        s.j jVar = (s.j) this.f2165d;
        Menu c0Var = (Menu) jVar.get(menu);
        if (c0Var == null) {
            c0Var = new l.c0((Context) this.f2163b, (l.n) menu);
            jVar.put(menu, c0Var);
        }
        return callback.onCreateActionMode(fVarQ, c0Var);
    }

    @Override // v4.c
    public g5.a f(Class cls) {
        return c(v4.p.a(cls));
    }

    @Override // v4.c
    public Set g(v4.p pVar) {
        if (((Set) this.f2164c).contains(pVar)) {
            return ((v4.c) this.f2165d).g(pVar);
        }
        throw new androidx.fragment.app.a0("Attempting to request an undeclared dependency Set<" + pVar + ">.");
    }

    @Override // q6.a
    public Object get() {
        return new y((Executor) ((q6.a) this.f2162a).get(), (m3.d) ((q6.a) this.f2163b).get(), (c5.h) ((c5.h) this.f2164c).get(), (n3.c) ((q6.a) this.f2165d).get());
    }

    @Override // k.a
    public boolean h(k.b bVar, Menu menu) {
        ActionMode.Callback callback = (ActionMode.Callback) this.f2162a;
        k.f fVarQ = q(bVar);
        s.j jVar = (s.j) this.f2165d;
        Menu c0Var = (Menu) jVar.get(menu);
        if (c0Var == null) {
            c0Var = new l.c0((Context) this.f2163b, (l.n) menu);
            jVar.put(menu, c0Var);
        }
        return callback.onPrepareActionMode(fVarQ, c0Var);
    }

    @Override // k.a
    public void i(k.b bVar) {
        ((ActionMode.Callback) this.f2162a).onDestroyActionMode(q(bVar));
    }

    public void j(androidx.fragment.app.c0 c0Var) {
        if (((ArrayList) this.f2162a).contains(c0Var)) {
            throw new IllegalStateException("Fragment already added: " + c0Var);
        }
        synchronized (((ArrayList) this.f2162a)) {
            ((ArrayList) this.f2162a).add(c0Var);
        }
        c0Var.f474k = true;
    }

    public void k(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) ((s.j) this.f2163b).get(obj);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i6 = 0; i6 < size; i6++) {
                k(arrayList2.get(i6), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    public synchronized ExecutorService l() {
        ThreadPoolExecutor threadPoolExecutor;
        try {
            if (((ThreadPoolExecutor) this.f2162a) == null) {
                TimeUnit timeUnit = TimeUnit.SECONDS;
                SynchronousQueue synchronousQueue = new SynchronousQueue();
                String str = s7.b.f5293g + " Dispatcher";
                d7.g.f("name", str);
                this.f2162a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, timeUnit, synchronousQueue, new s7.a(str, false));
            }
            threadPoolExecutor = (ThreadPoolExecutor) this.f2162a;
            d7.g.c(threadPoolExecutor);
        } catch (Throwable th) {
            throw th;
        }
        return threadPoolExecutor;
    }

    public androidx.fragment.app.c0 m(String str) {
        g1 g1Var = (g1) ((HashMap) this.f2163b).get(str);
        if (g1Var != null) {
            return g1Var.f528c;
        }
        return null;
    }

    public androidx.fragment.app.c0 n(String str) {
        for (g1 g1Var : ((HashMap) this.f2163b).values()) {
            if (g1Var != null) {
                androidx.fragment.app.c0 c0VarN = g1Var.f528c;
                if (!str.equals(c0VarN.f469e)) {
                    c0VarN = c0VarN.D.f642c.n(str);
                }
                if (c0VarN != null) {
                    return c0VarN;
                }
            }
        }
        return null;
    }

    public void o(ArrayDeque arrayDeque, Object obj) {
        synchronized (this) {
            if (!arrayDeque.remove(obj)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        z();
    }

    public void p(v7.f fVar) {
        fVar.f5664b.decrementAndGet();
        o((ArrayDeque) this.f2163b, fVar);
    }

    public k.f q(k.b bVar) {
        ArrayList arrayList = (ArrayList) this.f2164c;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            k.f fVar = (k.f) arrayList.get(i6);
            if (fVar != null && fVar.f3437b == bVar) {
                return fVar;
            }
        }
        k.f fVar2 = new k.f((Context) this.f2163b, bVar);
        arrayList.add(fVar2);
        return fVar2;
    }

    public ArrayList r() {
        ArrayList arrayList = new ArrayList();
        for (g1 g1Var : ((HashMap) this.f2163b).values()) {
            if (g1Var != null) {
                arrayList.add(g1Var);
            }
        }
        return arrayList;
    }

    public ArrayList s() {
        ArrayList arrayList = new ArrayList();
        for (g1 g1Var : ((HashMap) this.f2163b).values()) {
            if (g1Var != null) {
                arrayList.add(g1Var.f528c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public List t() {
        ArrayList arrayList;
        if (((ArrayList) this.f2162a).isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        synchronized (((ArrayList) this.f2162a)) {
            arrayList = new ArrayList((ArrayList) this.f2162a);
        }
        return arrayList;
    }

    public boolean v(Context context) {
        if (((Boolean) this.f2164c) == null) {
            this.f2164c = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0);
        }
        if (!((Boolean) this.f2163b).booleanValue() && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return ((Boolean) this.f2164c).booleanValue();
    }

    public boolean w(Context context) {
        if (((Boolean) this.f2163b) == null) {
            this.f2163b = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!((Boolean) this.f2163b).booleanValue() && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return ((Boolean) this.f2163b).booleanValue();
    }

    public void x(g1 g1Var) {
        androidx.fragment.app.c0 c0Var = g1Var.f528c;
        String str = c0Var.f469e;
        HashMap map = (HashMap) this.f2163b;
        if (map.get(str) != null) {
            return;
        }
        map.put(c0Var.f469e, g1Var);
        if (c0Var.L) {
            if (c0Var.K) {
                ((c1) this.f2165d).c(c0Var);
            } else {
                ((c1) this.f2165d).g(c0Var);
            }
            c0Var.L = false;
        }
        if (y0.J(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + c0Var);
        }
    }

    public void y(g1 g1Var) {
        HashMap map = (HashMap) this.f2163b;
        androidx.fragment.app.c0 c0Var = g1Var.f528c;
        if (c0Var.K) {
            ((c1) this.f2165d).g(c0Var);
        }
        if (map.get(c0Var.f469e) == g1Var && ((g1) map.put(c0Var.f469e, null)) != null && y0.J(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + c0Var);
        }
    }

    public void z() {
        byte[] bArr = s7.b.f5287a;
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator it = ((ArrayDeque) this.f2165d).iterator();
                d7.g.e("readyAsyncCalls.iterator()", it);
                while (it.hasNext()) {
                    v7.f fVar = (v7.f) it.next();
                    if (((ArrayDeque) this.f2163b).size() >= 64) {
                        break;
                    }
                    if (fVar.f5664b.get() < 5) {
                        it.remove();
                        fVar.f5664b.incrementAndGet();
                        arrayList.add(fVar);
                        ((ArrayDeque) this.f2163b).add(fVar);
                    }
                }
                C();
            } catch (Throwable th) {
                throw th;
            }
        }
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            v7.f fVar2 = (v7.f) arrayList.get(i6);
            ExecutorService executorServiceL = l();
            fVar2.getClass();
            v7.i iVar = fVar2.f5665c;
            byte[] bArr2 = s7.b.f5287a;
            try {
                try {
                    ((ThreadPoolExecutor) executorServiceL).execute(fVar2);
                } catch (RejectedExecutionException e9) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e9);
                    iVar.j(interruptedIOException);
                    Log.e("GA4Reporter", "logEvent request failed", interruptedIOException);
                    iVar.f5668a.f5113a.p(fVar2);
                }
            } catch (Throwable th2) {
                iVar.f5668a.f5113a.p(fVar2);
                throw th2;
            }
        }
    }

    public y(y yVar, y4 y4Var) {
        this.f2164c = new HashMap();
        this.f2165d = new HashMap();
        this.f2162a = yVar;
        this.f2163b = y4Var;
    }

    public y(Typeface typeface, q0.b bVar) {
        int i6;
        int i9;
        int i10;
        int i11;
        this.f2165d = typeface;
        this.f2162a = bVar;
        this.f2164c = new p0.s(1024);
        int iA = bVar.a(6);
        if (iA != 0) {
            int i12 = iA + bVar.f3246a;
            i6 = ((ByteBuffer) bVar.f3249d).getInt(((ByteBuffer) bVar.f3249d).getInt(i12) + i12);
        } else {
            i6 = 0;
        }
        this.f2163b = new char[i6 * 2];
        int iA2 = bVar.a(6);
        if (iA2 != 0) {
            int i13 = iA2 + bVar.f3246a;
            i9 = ((ByteBuffer) bVar.f3249d).getInt(((ByteBuffer) bVar.f3249d).getInt(i13) + i13);
        } else {
            i9 = 0;
        }
        for (int i14 = 0; i14 < i9; i14++) {
            p0.v vVar = new p0.v(this, i14);
            q0.a aVarB = vVar.b();
            int iA3 = aVarB.a(4);
            Character.toChars(iA3 != 0 ? ((ByteBuffer) aVarB.f3249d).getInt(iA3 + aVarB.f3246a) : 0, (char[]) this.f2163b, i14 * 2);
            q0.a aVarB2 = vVar.b();
            int iA4 = aVarB2.a(16);
            if (iA4 != 0) {
                int i15 = iA4 + aVarB2.f3246a;
                i10 = ((ByteBuffer) aVarB2.f3249d).getInt(((ByteBuffer) aVarB2.f3249d).getInt(i15) + i15);
            } else {
                i10 = 0;
            }
            if (i10 > 0) {
                p0.s sVar = (p0.s) this.f2164c;
                q0.a aVarB3 = vVar.b();
                int iA5 = aVarB3.a(16);
                if (iA5 != 0) {
                    int i16 = iA5 + aVarB3.f3246a;
                    i11 = ((ByteBuffer) aVarB3.f3249d).getInt(((ByteBuffer) aVarB3.f3249d).getInt(i16) + i16);
                } else {
                    i11 = 0;
                }
                sVar.a(vVar, 0, i11 - 1);
            } else {
                throw new IllegalArgumentException("invalid metadata codepoint length");
            }
        }
    }

    public y(int i6) {
        switch (i6) {
            case 1:
                this.f2162a = new ArrayList();
                this.f2163b = new HashMap();
                this.f2164c = new HashMap();
                break;
            case 2:
                y4 y4Var = new y4(9, false);
                y4Var.f1990b = new HashMap();
                y4Var.f1991c = new com.google.android.gms.internal.measurement.s(6);
                com.google.android.gms.internal.measurement.s sVar = new com.google.android.gms.internal.measurement.s(0);
                com.google.android.gms.internal.measurement.f0 f0Var = com.google.android.gms.internal.measurement.f0.BITWISE_AND;
                ArrayList arrayList = sVar.f1895a;
                arrayList.add(f0Var);
                arrayList.add(com.google.android.gms.internal.measurement.f0.BITWISE_LEFT_SHIFT);
                arrayList.add(com.google.android.gms.internal.measurement.f0.BITWISE_NOT);
                arrayList.add(com.google.android.gms.internal.measurement.f0.BITWISE_OR);
                arrayList.add(com.google.android.gms.internal.measurement.f0.BITWISE_RIGHT_SHIFT);
                arrayList.add(com.google.android.gms.internal.measurement.f0.BITWISE_UNSIGNED_RIGHT_SHIFT);
                arrayList.add(com.google.android.gms.internal.measurement.f0.BITWISE_XOR);
                y4Var.J(sVar);
                com.google.android.gms.internal.measurement.s sVar2 = new com.google.android.gms.internal.measurement.s(1);
                com.google.android.gms.internal.measurement.f0 f0Var2 = com.google.android.gms.internal.measurement.f0.EQUALS;
                ArrayList arrayList2 = sVar2.f1895a;
                arrayList2.add(f0Var2);
                arrayList2.add(com.google.android.gms.internal.measurement.f0.GREATER_THAN);
                arrayList2.add(com.google.android.gms.internal.measurement.f0.GREATER_THAN_EQUALS);
                arrayList2.add(com.google.android.gms.internal.measurement.f0.IDENTITY_EQUALS);
                arrayList2.add(com.google.android.gms.internal.measurement.f0.IDENTITY_NOT_EQUALS);
                arrayList2.add(com.google.android.gms.internal.measurement.f0.LESS_THAN);
                arrayList2.add(com.google.android.gms.internal.measurement.f0.LESS_THAN_EQUALS);
                arrayList2.add(com.google.android.gms.internal.measurement.f0.NOT_EQUALS);
                y4Var.J(sVar2);
                com.google.android.gms.internal.measurement.s sVar3 = new com.google.android.gms.internal.measurement.s(2);
                com.google.android.gms.internal.measurement.f0 f0Var3 = com.google.android.gms.internal.measurement.f0.APPLY;
                ArrayList arrayList3 = sVar3.f1895a;
                arrayList3.add(f0Var3);
                arrayList3.add(com.google.android.gms.internal.measurement.f0.BLOCK);
                arrayList3.add(com.google.android.gms.internal.measurement.f0.BREAK);
                arrayList3.add(com.google.android.gms.internal.measurement.f0.CASE);
                arrayList3.add(com.google.android.gms.internal.measurement.f0.DEFAULT);
                arrayList3.add(com.google.android.gms.internal.measurement.f0.CONTINUE);
                arrayList3.add(com.google.android.gms.internal.measurement.f0.DEFINE_FUNCTION);
                arrayList3.add(com.google.android.gms.internal.measurement.f0.FN);
                arrayList3.add(com.google.android.gms.internal.measurement.f0.IF);
                arrayList3.add(com.google.android.gms.internal.measurement.f0.QUOTE);
                arrayList3.add(com.google.android.gms.internal.measurement.f0.RETURN);
                arrayList3.add(com.google.android.gms.internal.measurement.f0.SWITCH);
                arrayList3.add(com.google.android.gms.internal.measurement.f0.TERNARY);
                y4Var.J(sVar3);
                com.google.android.gms.internal.measurement.s sVar4 = new com.google.android.gms.internal.measurement.s(3);
                com.google.android.gms.internal.measurement.f0 f0Var4 = com.google.android.gms.internal.measurement.f0.AND;
                ArrayList arrayList4 = sVar4.f1895a;
                arrayList4.add(f0Var4);
                arrayList4.add(com.google.android.gms.internal.measurement.f0.NOT);
                arrayList4.add(com.google.android.gms.internal.measurement.f0.OR);
                y4Var.J(sVar4);
                com.google.android.gms.internal.measurement.s sVar5 = new com.google.android.gms.internal.measurement.s(4);
                com.google.android.gms.internal.measurement.f0 f0Var5 = com.google.android.gms.internal.measurement.f0.FOR_IN;
                ArrayList arrayList5 = sVar5.f1895a;
                arrayList5.add(f0Var5);
                arrayList5.add(com.google.android.gms.internal.measurement.f0.FOR_IN_CONST);
                arrayList5.add(com.google.android.gms.internal.measurement.f0.FOR_IN_LET);
                arrayList5.add(com.google.android.gms.internal.measurement.f0.FOR_LET);
                arrayList5.add(com.google.android.gms.internal.measurement.f0.FOR_OF);
                arrayList5.add(com.google.android.gms.internal.measurement.f0.FOR_OF_CONST);
                arrayList5.add(com.google.android.gms.internal.measurement.f0.FOR_OF_LET);
                arrayList5.add(com.google.android.gms.internal.measurement.f0.WHILE);
                y4Var.J(sVar5);
                com.google.android.gms.internal.measurement.s sVar6 = new com.google.android.gms.internal.measurement.s(5);
                com.google.android.gms.internal.measurement.f0 f0Var6 = com.google.android.gms.internal.measurement.f0.ADD;
                ArrayList arrayList6 = sVar6.f1895a;
                arrayList6.add(f0Var6);
                arrayList6.add(com.google.android.gms.internal.measurement.f0.DIVIDE);
                arrayList6.add(com.google.android.gms.internal.measurement.f0.MODULUS);
                arrayList6.add(com.google.android.gms.internal.measurement.f0.MULTIPLY);
                arrayList6.add(com.google.android.gms.internal.measurement.f0.NEGATE);
                arrayList6.add(com.google.android.gms.internal.measurement.f0.POST_DECREMENT);
                arrayList6.add(com.google.android.gms.internal.measurement.f0.POST_INCREMENT);
                arrayList6.add(com.google.android.gms.internal.measurement.f0.PRE_DECREMENT);
                arrayList6.add(com.google.android.gms.internal.measurement.f0.PRE_INCREMENT);
                arrayList6.add(com.google.android.gms.internal.measurement.f0.SUBTRACT);
                y4Var.J(sVar6);
                com.google.android.gms.internal.measurement.s sVar7 = new com.google.android.gms.internal.measurement.s(7);
                com.google.android.gms.internal.measurement.f0 f0Var7 = com.google.android.gms.internal.measurement.f0.ASSIGN;
                ArrayList arrayList7 = sVar7.f1895a;
                arrayList7.add(f0Var7);
                arrayList7.add(com.google.android.gms.internal.measurement.f0.CONST);
                arrayList7.add(com.google.android.gms.internal.measurement.f0.CREATE_ARRAY);
                arrayList7.add(com.google.android.gms.internal.measurement.f0.CREATE_OBJECT);
                arrayList7.add(com.google.android.gms.internal.measurement.f0.EXPRESSION_LIST);
                arrayList7.add(com.google.android.gms.internal.measurement.f0.GET);
                arrayList7.add(com.google.android.gms.internal.measurement.f0.GET_INDEX);
                arrayList7.add(com.google.android.gms.internal.measurement.f0.GET_PROPERTY);
                arrayList7.add(com.google.android.gms.internal.measurement.f0.NULL);
                arrayList7.add(com.google.android.gms.internal.measurement.f0.SET_PROPERTY);
                arrayList7.add(com.google.android.gms.internal.measurement.f0.TYPEOF);
                arrayList7.add(com.google.android.gms.internal.measurement.f0.UNDEFINED);
                arrayList7.add(com.google.android.gms.internal.measurement.f0.VAR);
                y4Var.J(sVar7);
                this.f2162a = y4Var;
                y yVar = new y((y) null, y4Var);
                this.f2164c = yVar;
                this.f2163b = yVar.J();
                o6 o6Var = new o6();
                HashMap map = new HashMap();
                o6Var.f1792a = map;
                this.f2165d = o6Var;
                yVar.M("require", new ua(o6Var));
                map.put("internal.platform", new m1());
                yVar.M("runtime.counter", new com.google.android.gms.internal.measurement.g(Double.valueOf(0.0d)));
                break;
            case 9:
                this.f2165d = new ArrayDeque();
                this.f2163b = new ArrayDeque();
                this.f2164c = new ArrayDeque();
                break;
            case 11:
                this.f2162a = new g.j(10, 3);
                this.f2163b = new s.j(0);
                this.f2164c = new ArrayList();
                this.f2165d = new HashSet();
                break;
            default:
                this.f2162a = null;
                this.f2163b = null;
                this.f2164c = null;
                this.f2165d = new ArrayDeque();
                break;
        }
    }
}
