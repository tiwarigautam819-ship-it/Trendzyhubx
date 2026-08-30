package l6;

import android.app.Dialog;
import android.content.DialogInterface;
import android.view.View;
import com.lottery.app.MainActivity;
import y2.m;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3832a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3833b;

    public /* synthetic */ f(int i6, Object obj) {
        this.f3832a = i6;
        this.f3833b = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        int i9 = this.f3832a;
        Object obj = this.f3833b;
        switch (i9) {
            case 0:
                int i10 = MainActivity.f2183g;
                ((MainActivity) obj).finish();
                break;
            default:
                y2.g gVar = (y2.g) obj;
                d7.g.f("this$0", gVar);
                View viewN = gVar.N(false);
                Dialog dialog = gVar.f619o0;
                if (dialog != null) {
                    dialog.setContentView(viewN);
                }
                m mVar = gVar.D0;
                if (mVar != null) {
                    gVar.U(mVar);
                }
                break;
        }
    }
}
