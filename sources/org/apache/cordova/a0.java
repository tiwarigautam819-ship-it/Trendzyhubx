package org.apache.cordova;

import android.content.Context;
import android.view.KeyEvent;
import android.widget.FrameLayout;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a0 extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v f4492a;

    public a0(Context context, v vVar) {
        super(context);
        this.f4492a = vVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean zDispatchKeyEvent = this.f4492a.getView().dispatchKeyEvent(keyEvent);
        return !zDispatchKeyEvent ? super.dispatchKeyEvent(keyEvent) : zDispatchKeyEvent;
    }
}
