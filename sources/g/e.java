package g;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f2653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f2654b;

    public e(f fVar, i iVar) {
        this.f2654b = fVar;
        this.f2653a = iVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i6, long j3) {
        f fVar = this.f2654b;
        DialogInterface.OnClickListener onClickListener = fVar.h;
        i iVar = this.f2653a;
        onClickListener.onClick(iVar.f2714b, i6);
        if (fVar.f2677i) {
            return;
        }
        iVar.f2714b.dismiss();
    }
}
