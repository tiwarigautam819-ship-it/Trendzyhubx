package com.google.firebase;

import android.content.Context;
import android.os.Build;
import com.getcapacitor.n;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.messaging.q;
import e5.d;
import e5.e;
import e5.f;
import e5.g;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import m1.j;
import v4.a;
import v4.b;
import v4.h;
import v4.p;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class FirebaseCommonRegistrar implements ComponentRegistrar {
    public static String a(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        String str;
        ArrayList arrayList = new ArrayList();
        a aVarA = b.a(o5.b.class);
        aVarA.a(new h(2, 0, o5.a.class));
        aVarA.f5586f = new n(14);
        arrayList.add(aVarA.b());
        p pVar = new p(u4.a.class, Executor.class);
        a aVar = new a(d.class, new Class[]{f.class, g.class});
        aVar.a(h.a(Context.class));
        aVar.a(h.a(t4.g.class));
        aVar.a(new h(2, 0, e.class));
        aVar.a(new h(1, 1, o5.b.class));
        aVar.a(new h(pVar, 1, 0));
        aVar.f5586f = new q(pVar, 1);
        arrayList.add(aVar.b());
        arrayList.add(j.e("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(j.e("fire-core", "21.0.0"));
        arrayList.add(j.e("device-name", a(Build.PRODUCT)));
        arrayList.add(j.e("device-model", a(Build.DEVICE)));
        arrayList.add(j.e("device-brand", a(Build.BRAND)));
        arrayList.add(j.f("android-target-sdk", new n(19)));
        arrayList.add(j.f("android-min-sdk", new n(20)));
        arrayList.add(j.f("android-platform", new n(21)));
        arrayList.add(j.f("android-installer", new n(22)));
        try {
            r6.b.f4991b.getClass();
            str = "1.9.25";
        } catch (NoClassDefFoundError unused) {
            str = null;
        }
        if (str != null) {
            arrayList.add(j.e("kotlin", str));
        }
        return arrayList;
    }
}
