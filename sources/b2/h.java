package b2;

import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import q2.t;
import q2.w;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashSet f923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f924d;

    public h(View view, Handler handler, HashSet hashSet, String str) {
        d7.g.f("handler", handler);
        d7.g.f("listenerSet", hashSet);
        this.f921a = new WeakReference(view);
        this.f923c = hashSet;
        this.f924d = str;
        handler.postDelayed(this, 200L);
    }

    public final void a(g gVar, View view, c2.a aVar) {
        View viewA = gVar.a();
        if (viewA == null) {
            return;
        }
        String str = gVar.f920b;
        View.OnClickListener onClickListenerE = c2.e.e(viewA);
        boolean z5 = (onClickListenerE instanceof a) && ((a) onClickListenerE).f900e;
        HashSet hashSet = this.f923c;
        if (hashSet.contains(str) || z5) {
            return;
        }
        a aVar2 = null;
        if (!v2.a.b(c.class)) {
            try {
                a aVar3 = new a();
                aVar3.f896a = aVar;
                aVar3.f897b = new WeakReference(viewA);
                aVar3.f898c = new WeakReference(view);
                aVar3.f899d = c2.e.e(viewA);
                aVar3.f900e = true;
                aVar2 = aVar3;
            } catch (Throwable th) {
                v2.a.a(th, c.class);
            }
        }
        viewA.setOnClickListener(aVar2);
        hashSet.add(str);
    }

    public final void b(g gVar, View view, c2.a aVar) {
        AdapterView adapterView = (AdapterView) gVar.a();
        if (adapterView == null) {
            return;
        }
        String str = gVar.f920b;
        AdapterView.OnItemClickListener onItemClickListener = adapterView.getOnItemClickListener();
        boolean z5 = (onItemClickListener instanceof b) && ((b) onItemClickListener).f905e;
        HashSet hashSet = this.f923c;
        if (hashSet.contains(str) || z5) {
            return;
        }
        b bVar = null;
        if (!v2.a.b(c.class)) {
            try {
                b bVar2 = new b();
                bVar2.f901a = aVar;
                bVar2.f902b = new WeakReference(adapterView);
                bVar2.f903c = new WeakReference(view);
                bVar2.f904d = adapterView.getOnItemClickListener();
                bVar2.f905e = true;
                bVar = bVar2;
            } catch (Throwable th) {
                v2.a.a(th, c.class);
            }
        }
        adapterView.setOnItemClickListener(bVar);
        hashSet.add(str);
    }

    public final void c(g gVar, View view, c2.a aVar) {
        View viewA = gVar.a();
        if (viewA == null) {
            return;
        }
        String str = gVar.f920b;
        View.OnTouchListener onTouchListenerF = c2.e.f(viewA);
        boolean z5 = (onTouchListenerF instanceof j) && ((j) onTouchListenerF).f936e;
        HashSet hashSet = this.f923c;
        if (hashSet.contains(str) || z5) {
            return;
        }
        j jVar = null;
        if (!v2.a.b(k.class)) {
            try {
                jVar = new j(aVar, view, viewA);
            } catch (Throwable th) {
                v2.a.a(th, k.class);
            }
        }
        viewA.setOnTouchListener(jVar);
        hashSet.add(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c5 A[Catch: Exception -> 0x00c3, TRY_LEAVE, TryCatch #3 {Exception -> 0x00c3, blocks: (B:49:0x00b6, B:51:0x00be, B:53:0x00c5, B:47:0x00b0, B:33:0x007e, B:42:0x00a1, B:44:0x00a9, B:39:0x0098), top: B:77:0x00b6, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void d() {
        /*
            Method dump skipped, instruction units count: 249
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b2.h.d():void");
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        d();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        d();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (v2.a.b(this)) {
            return;
        }
        try {
            t tVarB = w.b(r.b());
            if (tVarB != null && tVarB.f4816g) {
                JSONArray jSONArray = tVarB.h;
                ArrayList arrayList = new ArrayList();
                if (jSONArray != null) {
                    try {
                        int length = jSONArray.length();
                        for (int i6 = 0; i6 < length; i6++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i6);
                            d7.g.e("array.getJSONObject(i)", jSONObject);
                            arrayList.add(y1.j.g(jSONObject));
                        }
                    } catch (IllegalArgumentException | JSONException unused) {
                    }
                }
                this.f922b = arrayList;
                View view = (View) this.f921a.get();
                if (view == null) {
                    return;
                }
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnGlobalLayoutListener(this);
                    viewTreeObserver.addOnScrollChangedListener(this);
                }
                d();
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
