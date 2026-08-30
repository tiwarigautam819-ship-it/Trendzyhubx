package x1;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a0 extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b0 f5802a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Exception f5803b;

    public a0(b0 b0Var) {
        this.f5802a = b0Var;
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        if (!v2.a.b(this)) {
            try {
                Void[] voidArr = (Void[]) objArr;
                if (!v2.a.b(this)) {
                    try {
                        d7.g.f("params", voidArr);
                        try {
                            b0 b0Var = this.f5802a;
                            b0Var.getClass();
                            String str = z.f5942j;
                            return w.l(b0Var);
                        } catch (Exception e9) {
                            this.f5803b = e9;
                        }
                    } catch (Throwable th) {
                        v2.a.a(th, this);
                    }
                }
            } catch (Throwable th2) {
                v2.a.a(th2, this);
                return null;
            }
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        List list;
        if (v2.a.b(this)) {
            return;
        }
        try {
            list = (List) obj;
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
        if (v2.a.b(this)) {
            return;
        }
        try {
            d7.g.f("result", list);
            super.onPostExecute(list);
            Exception exc = this.f5803b;
            if (exc != null) {
                String.format("onPostExecute: exception encountered during request: %s", Arrays.copyOf(new Object[]{exc.getMessage()}, 1));
                r rVar = r.f5918a;
                return;
            }
            return;
        } catch (Throwable th2) {
            v2.a.a(th2, this);
            return;
        }
        v2.a.a(th, this);
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        b0 b0Var = this.f5802a;
        if (v2.a.b(this)) {
            return;
        }
        try {
            super.onPreExecute();
            r rVar = r.f5918a;
            if (b0Var.f5806a == null) {
                b0Var.f5806a = Thread.currentThread() instanceof HandlerThread ? new Handler() : new Handler(Looper.getMainLooper());
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final String toString() {
        String str = "{RequestAsyncTask:  connection: null, requests: " + this.f5802a + "}";
        d7.g.e("StringBuilder()\n        …(\"}\")\n        .toString()", str);
        return str;
    }
}
