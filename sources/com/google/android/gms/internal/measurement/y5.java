package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class y5 implements s6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z5 f1992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public z5 f1993b;

    public y5(z5 z5Var) {
        this.f1992a = z5Var;
        if (z5Var.m()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f1993b = (z5) z5Var.e(4);
    }

    public static void a(Object obj, Object obj2) {
        z6 z6Var = z6.f2007c;
        z6Var.getClass();
        z6Var.a(obj.getClass()).e(obj, obj2);
    }

    public static void b(List list, int i6) {
        String strJ = a1.a.j(list.size() - i6, "Element at index ", " is null.");
        for (int size = list.size() - 1; size >= i6; size--) {
            list.remove(size);
        }
        throw new NullPointerException(strJ);
    }

    public final z5 c() {
        z5 z5VarD = d();
        if (z5.h(z5VarD, true)) {
            return z5VarD;
        }
        throw new androidx.fragment.app.a0("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final /* synthetic */ Object clone() {
        y5 y5Var = (y5) this.f1992a.e(5);
        y5Var.f1993b = d();
        return y5Var;
    }

    public final z5 d() {
        if (!this.f1993b.m()) {
            return this.f1993b;
        }
        z5 z5Var = this.f1993b;
        z5Var.getClass();
        z6 z6Var = z6.f2007c;
        z6Var.getClass();
        z6Var.a(z5Var.getClass()).c(z5Var);
        z5Var.l();
        return this.f1993b;
    }

    public final void e() {
        if (this.f1993b.m()) {
            return;
        }
        f();
    }

    public final void f() {
        z5 z5Var = (z5) this.f1992a.e(4);
        a(z5Var, this.f1993b);
        this.f1993b = z5Var;
    }

    public final void g(byte[] bArr, int i6, t5 t5Var) throws i6 {
        if (!this.f1993b.m()) {
            f();
        }
        try {
            z6 z6Var = z6.f2007c;
            z5 z5Var = this.f1993b;
            z6Var.getClass();
            b7 b7VarA = z6Var.a(z5Var.getClass());
            z5 z5Var2 = this.f1993b;
            m5 m5Var = new m5();
            t5Var.getClass();
            b7VarA.g(z5Var2, bArr, 0, i6, m5Var);
        } catch (i6 e9) {
            throw e9;
        } catch (IOException e10) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e10);
        } catch (IndexOutOfBoundsException unused) {
            throw i6.d();
        }
    }
}
