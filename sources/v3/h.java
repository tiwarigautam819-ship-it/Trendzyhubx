package v3;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.t;
import com.google.android.gms.common.internal.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class h extends t {

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public Dialog f5553t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public DialogInterface.OnCancelListener f5554u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public AlertDialog f5555v0;

    @Override // androidx.fragment.app.t
    public final Dialog K(Bundle bundle) {
        Dialog dialog = this.f5553t0;
        if (dialog != null) {
            return dialog;
        }
        this.f615k0 = false;
        if (this.f5555v0 == null) {
            Context contextE = e();
            d0.h(contextE);
            this.f5555v0 = new AlertDialog.Builder(contextE).create();
        }
        return this.f5555v0;
    }

    @Override // androidx.fragment.app.t, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f5554u0;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }
}
