package d;

import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2200a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f2201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f2202c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ e.a f2203d;

    public /* synthetic */ g(h hVar, String str, e.a aVar, int i6) {
        this.f2200a = i6;
        this.f2201b = hVar;
        this.f2202c = str;
        this.f2203d = aVar;
    }

    @Override // d.c
    public final void a(Object obj) {
        switch (this.f2200a) {
            case 0:
                h hVar = this.f2201b;
                ArrayList arrayList = hVar.f2207d;
                LinkedHashMap linkedHashMap = hVar.f2205b;
                String str = this.f2202c;
                Object obj2 = linkedHashMap.get(str);
                e.a aVar = this.f2203d;
                if (obj2 == null) {
                    throw new IllegalStateException(("Attempting to launch an unregistered ActivityResultLauncher with contract " + aVar + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().").toString());
                }
                int iIntValue = ((Number) obj2).intValue();
                arrayList.add(str);
                try {
                    hVar.b(iIntValue, aVar, obj);
                    return;
                } catch (Exception e9) {
                    arrayList.remove(str);
                    throw e9;
                }
            default:
                h hVar2 = this.f2201b;
                ArrayList arrayList2 = hVar2.f2207d;
                LinkedHashMap linkedHashMap2 = hVar2.f2205b;
                String str2 = this.f2202c;
                Object obj3 = linkedHashMap2.get(str2);
                e.a aVar2 = this.f2203d;
                if (obj3 == null) {
                    throw new IllegalStateException(("Attempting to launch an unregistered ActivityResultLauncher with contract " + aVar2 + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().").toString());
                }
                int iIntValue2 = ((Number) obj3).intValue();
                arrayList2.add(str2);
                try {
                    hVar2.b(iIntValue2, aVar2, obj);
                    return;
                } catch (Exception e10) {
                    arrayList2.remove(str2);
                    throw e10;
                }
        }
    }

    public void b() {
        this.f2201b.f(this.f2202c);
    }
}
