package e5;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import com.google.firebase.messaging.b0;
import com.google.firebase.messaging.y;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import v4.h;
import v4.p;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements g5.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2394c;

    public /* synthetic */ b(Object obj, int i6, Object obj2) {
        this.f2392a = i6;
        this.f2393b = obj;
        this.f2394c = obj2;
    }

    @Override // g5.a
    public final Object get() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        switch (this.f2392a) {
            case 0:
                return new b0((Context) this.f2393b, (String) this.f2394c);
            case 1:
                t4.g gVar = (t4.g) this.f2394c;
                Context contextA = (Context) this.f2393b;
                String strD = gVar.d();
                l5.a aVar = new l5.a();
                int i6 = Build.VERSION.SDK_INT;
                if (i6 >= 24) {
                    contextA = i6 >= 24 ? z.a.a(contextA) : null;
                }
                SharedPreferences sharedPreferences = contextA.getSharedPreferences("com.google.firebase.common.prefs:" + strD, 0);
                boolean z5 = true;
                if (sharedPreferences.contains("firebase_data_collection_default_enabled")) {
                    z5 = sharedPreferences.getBoolean("firebase_data_collection_default_enabled", true);
                } else {
                    try {
                        PackageManager packageManager = contextA.getPackageManager();
                        if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(contextA.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_data_collection_default_enabled")) {
                            z5 = applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
                        }
                        break;
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                aVar.f3817a = z5;
                return aVar;
            default:
                v4.e eVar = (v4.e) this.f2393b;
                v4.b bVar = (v4.b) this.f2394c;
                v4.d dVar = bVar.f5593f;
                y yVar = new y();
                HashSet hashSet = new HashSet();
                HashSet hashSet2 = new HashSet();
                HashSet hashSet3 = new HashSet();
                HashSet hashSet4 = new HashSet();
                HashSet hashSet5 = new HashSet();
                Set<h> set = bVar.f5590c;
                Set set2 = bVar.f5594g;
                for (h hVar : set) {
                    int i9 = hVar.f5609c;
                    int i10 = hVar.f5608b;
                    boolean z8 = i9 == 0;
                    p pVar = hVar.f5607a;
                    if (z8) {
                        if (i10 == 2) {
                            hashSet4.add(pVar);
                        } else {
                            hashSet.add(pVar);
                        }
                    } else if (i9 == 2) {
                        hashSet3.add(pVar);
                    } else if (i10 == 2) {
                        hashSet5.add(pVar);
                    } else {
                        hashSet2.add(pVar);
                    }
                }
                if (!set2.isEmpty()) {
                    hashSet.add(p.a(d5.c.class));
                }
                yVar.f2162a = Collections.unmodifiableSet(hashSet);
                yVar.f2163b = Collections.unmodifiableSet(hashSet2);
                Collections.unmodifiableSet(hashSet3);
                yVar.f2164c = Collections.unmodifiableSet(hashSet4);
                Collections.unmodifiableSet(hashSet5);
                yVar.f2165d = eVar;
                return dVar.create(yVar);
        }
    }

    public /* synthetic */ b(t4.g gVar, Context context) {
        this.f2392a = 1;
        this.f2394c = gVar;
        this.f2393b = context;
    }
}
