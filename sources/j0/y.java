package j0;

import android.text.TextUtils;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class y extends a0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f3330e;

    public y(int i6, Class cls, int i9, int i10, int i11) {
        this.f3330e = i11;
        this.f3246a = i6;
        this.f3249d = cls;
        this.f3248c = i9;
        this.f3247b = i10;
    }

    @Override // j0.a0
    public final Object b(View view) {
        switch (this.f3330e) {
            case 0:
                return Boolean.valueOf(f0.c(view));
            case 1:
                return f0.a(view);
            default:
                return Boolean.valueOf(f0.b(view));
        }
    }

    @Override // j0.a0
    public final void c(View view, Object obj) {
        switch (this.f3330e) {
            case 0:
                f0.f(view, ((Boolean) obj).booleanValue());
                break;
            case 1:
                f0.e(view, (CharSequence) obj);
                break;
            default:
                f0.d(view, ((Boolean) obj).booleanValue());
                break;
        }
    }

    @Override // j0.a0
    public final boolean e(Object obj, Object obj2) {
        switch (this.f3330e) {
            case 0:
                Boolean bool = (Boolean) obj;
                Boolean bool2 = (Boolean) obj2;
                return !((bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue()));
            case 1:
                return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
            default:
                Boolean bool3 = (Boolean) obj;
                Boolean bool4 = (Boolean) obj2;
                return !((bool3 != null && bool3.booleanValue()) == (bool4 != null && bool4.booleanValue()));
        }
    }
}
