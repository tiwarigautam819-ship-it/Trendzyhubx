package org.apache.cordova;

import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public l0 f4522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public i0 f4523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile int f4524c;

    public final String a(int i6, String str, String str2, String str3, String str4) {
        i0 i0Var = this.f4523b;
        if (!b(i6)) {
            return null;
        }
        if (str4 == null) {
            return "@Null arguments.";
        }
        i0Var.g(true);
        try {
            Thread.currentThread();
            this.f4522a.a(str, str2, str3, str4);
            return i0Var.d(false);
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                return "";
            } finally {
                i0Var.g(false);
            }
        }
    }

    public final boolean b(int i6) throws IllegalAccessException {
        if (this.f4523b.f4530d == null) {
            return false;
        }
        if (this.f4524c >= 0 && i6 == this.f4524c) {
            return true;
        }
        Log.e("CordovaBridge", "Bridge access attempt with wrong secret token, possibly from malicious code. Disabling exec() bridge!");
        this.f4524c = -1;
        throw new IllegalAccessException();
    }
}
