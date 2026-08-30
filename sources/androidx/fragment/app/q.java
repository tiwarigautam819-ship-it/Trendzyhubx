package androidx.fragment.app;

import android.app.Dialog;
import android.content.DialogInterface;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f601a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f602b;

    public /* synthetic */ q(int i6, Object obj) {
        this.f601a = i6;
        this.f602b = obj;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        switch (this.f601a) {
            case 0:
                t tVar = (t) this.f602b;
                Dialog dialog = tVar.f619o0;
                if (dialog != null) {
                    tVar.onCancel(dialog);
                }
                break;
            case 1:
                ((o5.c) this.f602b).o(null, false);
                break;
            default:
                ((k1.h) this.f602b).C(null, false);
                break;
        }
    }
}
