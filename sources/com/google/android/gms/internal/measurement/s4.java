package com.google.android.gms.internal.measurement;

import android.os.Build;
import android.os.UserManager;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class s4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static UserManager f1899a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile boolean f1900b = !a();

    public static boolean a() {
        return Build.VERSION.SDK_INT >= 24;
    }
}
