package org.apache.cordova;

import android.util.Pair;
import android.util.SparseArray;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4499a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SparseArray f4500b;

    public final synchronized Pair a(int i6) {
        Pair pair;
        pair = (Pair) this.f4500b.get(i6);
        this.f4500b.remove(i6);
        return pair;
    }
}
