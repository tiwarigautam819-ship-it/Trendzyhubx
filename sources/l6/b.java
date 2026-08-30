package l6;

import android.view.View;
import com.lottery.app.GameActivity;
import q2.p0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View.OnCreateContextMenuListener f3821b;

    public /* synthetic */ b(View.OnCreateContextMenuListener onCreateContextMenuListener, int i6) {
        this.f3820a = i6;
        this.f3821b = onCreateContextMenuListener;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i6 = this.f3820a;
        View.OnCreateContextMenuListener onCreateContextMenuListener = this.f3821b;
        switch (i6) {
            case 0:
                int i9 = GameActivity.f2177e;
                ((GameActivity) onCreateContextMenuListener).finish();
                break;
            case 1:
                p0 p0Var = (p0) onCreateContextMenuListener;
                d7.g.f("this$0", p0Var);
                p0Var.cancel();
                break;
            default:
                y2.g gVar = (y2.g) onCreateContextMenuListener;
                d7.g.f("this$0", gVar);
                gVar.O();
                break;
        }
    }
}
