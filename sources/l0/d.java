package l0;

import android.os.Build;
import android.os.Bundle;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import com.google.firebase.messaging.j0;
import k1.h;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends InputConnectionWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j0 f3743a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(InputConnection inputConnection, j0 j0Var) {
        super(inputConnection, false);
        this.f3743a = j0Var;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i6, Bundle bundle) {
        h hVar = null;
        if (inputContentInfo != null && Build.VERSION.SDK_INT >= 25) {
            hVar = new h(16, new f(inputContentInfo));
        }
        if (this.f3743a.f(hVar, i6, bundle)) {
            return true;
        }
        return super.commitContent(inputContentInfo, i6, bundle);
    }
}
