package l;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public f0 f3693a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public g.k f3694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public j f3695c;

    @Override // l.y
    public final void b(n nVar, boolean z5) {
        g.k kVar;
        if ((z5 || nVar == this.f3693a) && (kVar = this.f3694b) != null) {
            kVar.dismiss();
        }
    }

    @Override // l.y
    public final boolean f(n nVar) {
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        f0 f0Var = this.f3693a;
        j jVar = this.f3695c;
        if (jVar.f3662f == null) {
            jVar.f3662f = new i(jVar);
        }
        f0Var.q(jVar.f3662f.getItem(i6), null, 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f3695c.b(this.f3693a, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i6, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        f0 f0Var = this.f3693a;
        if (i6 == 82 || i6 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f3694b.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f3694b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                f0Var.c(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return f0Var.performShortcut(i6, keyEvent, 0);
    }
}
