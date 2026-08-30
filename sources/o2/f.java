package o2;

import android.view.View;
import com.engagelab.privates.common.constants.MTCommonConstants;
import d7.g;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import k7.o;
import org.json.JSONObject;
import q2.g0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements View.OnClickListener {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final HashSet f4417e = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View.OnClickListener f4418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WeakReference f4419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WeakReference f4420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4421d;

    public f(View view, View view2, String str) {
        this.f4418a = c2.e.e(view);
        this.f4419b = new WeakReference(view2);
        this.f4420c = new WeakReference(view);
        String lowerCase = str.toLowerCase();
        g.e("this as java.lang.String).toLowerCase()", lowerCase);
        this.f4421d = o.t(lowerCase, MTCommonConstants.Lifecycle.KEY_ACTIVITY, "");
    }

    public final void a() {
        if (v2.a.b(this)) {
            return;
        }
        try {
            View view = (View) this.f4419b.get();
            View view2 = (View) this.f4420c.get();
            if (view == null || view2 == null) {
                return;
            }
            try {
                String strD = c.d(view2);
                String strB = b.b(view2, strD);
                if (strB != null && !a.a(strB, strD)) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("view", c.b(view, view2));
                    jSONObject.put("screenname", this.f4421d);
                    if (v2.a.b(this)) {
                        return;
                    }
                    try {
                        g0.K(new com.getcapacitor.b(jSONObject, strD, this, strB));
                    } catch (Throwable th) {
                        v2.a.a(th, this);
                    }
                }
            } catch (Exception unused) {
            }
        } catch (Throwable th2) {
            v2.a.a(th2, this);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            g.f("view", view);
            View.OnClickListener onClickListener = this.f4418a;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
            a();
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
