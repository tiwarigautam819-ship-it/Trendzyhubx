package m;

import android.content.Context;
import android.view.View;
import android.view.Window;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d3 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l.a f3939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ androidx.appcompat.widget.i f3940b;

    public d3(androidx.appcompat.widget.i iVar) {
        this.f3940b = iVar;
        Context context = iVar.f327a.getContext();
        CharSequence charSequence = iVar.h;
        l.a aVar = new l.a();
        aVar.f3592e = 4096;
        aVar.f3594g = 4096;
        aVar.f3598l = null;
        aVar.f3599m = null;
        aVar.f3600n = false;
        aVar.f3601o = false;
        aVar.f3602p = 16;
        aVar.f3595i = context;
        aVar.f3588a = charSequence;
        this.f3939a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        androidx.appcompat.widget.i iVar = this.f3940b;
        Window.Callback callback = iVar.f336k;
        if (callback == null || !iVar.f337l) {
            return;
        }
        callback.onMenuItemSelected(0, this.f3939a);
    }
}
