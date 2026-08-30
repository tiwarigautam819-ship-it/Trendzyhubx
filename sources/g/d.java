package g;

import android.view.View;
import androidx.appcompat.widget.Toolbar;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2651b;

    public /* synthetic */ d(int i6, Object obj) {
        this.f2650a = i6;
        this.f2651b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f2650a) {
            case 0:
                i iVar = (i) this.f2651b;
                iVar.f2733v.obtainMessage(1, iVar.f2714b).sendToTarget();
                break;
            case 1:
                ((k.b) this.f2651b).a();
                break;
            default:
                androidx.appcompat.widget.h hVar = ((Toolbar) this.f2651b).U;
                l.p pVar = hVar == null ? null : hVar.f325b;
                if (pVar != null) {
                    pVar.collapseActionView();
                }
                break;
        }
    }
}
