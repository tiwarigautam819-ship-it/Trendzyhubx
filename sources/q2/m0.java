package q2;

import android.app.ProgressDialog;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.widget.ImageView;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m0 extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bundle f4764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Exception[] f4765c = new Exception[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ p0 f4766d;

    public m0(p0 p0Var, String str, Bundle bundle) {
        this.f4766d = p0Var;
        this.f4763a = str;
        this.f4764b = bundle;
    }

    /* JADX WARN: Type inference failed for: r9v1, types: [q2.l0] */
    public final String[] a(Void... voidArr) {
        if (!v2.a.b(this)) {
            try {
                d7.g.f("p0", voidArr);
                String[] stringArray = this.f4764b.getStringArray("media");
                if (stringArray != null) {
                    final String[] strArr = new String[stringArray.length];
                    this.f4765c = new Exception[stringArray.length];
                    final CountDownLatch countDownLatch = new CountDownLatch(stringArray.length);
                    ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
                    Date date = x1.a.f5789l;
                    x1.a aVarF = h8.b.f();
                    try {
                        int length = stringArray.length;
                        for (final int i6 = 0; i6 < length; i6++) {
                            if (isCancelled()) {
                                Iterator it = concurrentLinkedQueue.iterator();
                                while (it.hasNext()) {
                                    ((x1.a0) it.next()).cancel(true);
                                }
                            } else {
                                Uri uri = Uri.parse(stringArray[i6]);
                                if (g0.C(uri)) {
                                    strArr[i6] = uri.toString();
                                    countDownLatch.countDown();
                                } else {
                                    ?? r9 = new x1.v() { // from class: q2.l0
                                        @Override // x1.v
                                        public final void a(x1.c0 c0Var) {
                                            x1.o oVar;
                                            String str;
                                            String[] strArr2 = strArr;
                                            int i9 = i6;
                                            try {
                                                oVar = c0Var.f5818c;
                                                str = "Error staging photo.";
                                            } catch (Exception e9) {
                                                this.f4765c[i9] = e9;
                                            }
                                            if (oVar != null) {
                                                String strA = oVar.a();
                                                if (strA != null) {
                                                    str = strA;
                                                }
                                                throw new x1.m(c0Var, str);
                                            }
                                            JSONObject jSONObject = c0Var.f5817b;
                                            if (jSONObject == null) {
                                                throw new x1.l("Error staging photo.");
                                            }
                                            String strOptString = jSONObject.optString("uri");
                                            if (strOptString == null) {
                                                throw new x1.l("Error staging photo.");
                                            }
                                            strArr2[i9] = strOptString;
                                            countDownLatch.countDown();
                                        }
                                    };
                                    d7.g.e("uri", uri);
                                    concurrentLinkedQueue.add(android.support.v4.media.session.a.g(aVarF, uri, r9).d());
                                }
                            }
                        }
                        countDownLatch.await();
                        return strArr;
                    } catch (Exception unused) {
                        Iterator it2 = concurrentLinkedQueue.iterator();
                        while (it2.hasNext()) {
                            ((x1.a0) it2.next()).cancel(true);
                        }
                    }
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return null;
            }
        }
        return null;
    }

    public final void b(String[] strArr) {
        Bundle bundle = this.f4764b;
        p0 p0Var = this.f4766d;
        if (v2.a.b(this)) {
            return;
        }
        try {
            ProgressDialog progressDialog = p0Var.f4792e;
            if (progressDialog != null) {
                progressDialog.dismiss();
            }
            for (Exception exc : this.f4765c) {
                if (exc != null) {
                    p0Var.e(exc);
                    return;
                }
            }
            if (strArr == null) {
                p0Var.e(new x1.l("Failed to stage photos for web dialog"));
                return;
            }
            List listH = s6.f.h(strArr);
            if (listH.contains(null)) {
                p0Var.e(new x1.l("Failed to stage photos for web dialog"));
                return;
            }
            g0.H(bundle, new JSONArray((Collection) listH));
            p0Var.f4788a = g0.a(g0.p(), x1.r.d() + "/dialog/" + this.f4763a, bundle).toString();
            ImageView imageView = p0Var.f4793f;
            if (imageView == null) {
                throw new IllegalStateException("Required value was null.");
            }
            p0Var.f((imageView.getDrawable().getIntrinsicWidth() / 2) + 1);
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            return a((Void[]) objArr);
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            b((String[]) obj);
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
