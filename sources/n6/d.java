package n6;

import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.a0;
import p0.o;
import p0.v;
import r7.u;
import r7.w;
import s5.n;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements o, n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4368b;

    public /* synthetic */ d(String str, int i6) {
        this.f4367a = i6;
        this.f4368b = str;
    }

    public void b(u uVar) {
        int i6 = uVar.f5152d;
        String strO = null;
        try {
            w wVar = uVar.f5155g;
            if (wVar != null) {
                strO = wVar.o();
            }
        } catch (Exception unused) {
        }
        Log.d("GA4Reporter", "logEvent response code=" + i6 + ", body=" + strO);
        if (200 > i6 || i6 >= 300) {
            Log.e("GA4Reporter", "logEvent response not successful");
        } else {
            Log.d("GA4Reporter", "logEvent success(validate): ".concat(this.f4368b));
        }
        uVar.close();
    }

    @Override // p0.o
    public boolean c(CharSequence charSequence, int i6, int i9, v vVar) {
        if (!TextUtils.equals(charSequence.subSequence(i6, i9), this.f4368b)) {
            return true;
        }
        vVar.f4623c = (vVar.f4623c & 3) | 4;
        return false;
    }

    @Override // s5.n
    public Object m() {
        throw new a0(this.f4368b);
    }

    public String toString() {
        switch (this.f4367a) {
            case 2:
                return "<" + this.f4368b + '>';
            default:
                return super.toString();
        }
    }

    @Override // p0.o
    public Object a() {
        return this;
    }
}
