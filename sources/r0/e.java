package r0;

import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements KeyListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KeyListener f4950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o3.a f4951b;

    public e(KeyListener keyListener) {
        o3.a aVar = new o3.a(12);
        this.f4950a = keyListener;
        this.f4951b = aVar;
    }

    @Override // android.text.method.KeyListener
    public final void clearMetaKeyState(View view, Editable editable, int i6) {
        this.f4950a.clearMetaKeyState(view, editable, i6);
    }

    @Override // android.text.method.KeyListener
    public final int getInputType() {
        return this.f4950a.getInputType();
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyDown(View view, Editable editable, int i6, KeyEvent keyEvent) {
        boolean z5;
        this.f4951b.getClass();
        if (i6 != 67 ? i6 != 112 ? false : c5.h.h(editable, keyEvent, true) : c5.h.h(editable, keyEvent, false)) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
            z5 = true;
        } else {
            z5 = false;
        }
        return z5 || this.f4950a.onKeyDown(view, editable, i6, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f4950a.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyUp(View view, Editable editable, int i6, KeyEvent keyEvent) {
        return this.f4950a.onKeyUp(view, editable, i6, keyEvent);
    }
}
