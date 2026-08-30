package com.google.android.gms.internal.measurement;

import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s.e f1544a = new s.e(0);

    public static synchronized Uri a(String str) {
        Uri uri;
        s.e eVar = f1544a;
        uri = (Uri) eVar.get(str);
        if (uri == null) {
            uri = Uri.parse("content://com.google.android.gms.phenotype/" + Uri.encode(str));
            eVar.put(str, uri);
        }
        return uri;
    }
}
