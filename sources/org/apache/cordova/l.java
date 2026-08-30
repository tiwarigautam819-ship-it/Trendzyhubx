package org.apache.cordova;

import android.content.DialogInterface;
import android.widget.EditText;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ EditText f4540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o5.c f4541b;

    public l(EditText editText, o5.c cVar) {
        this.f4540a = editText;
        this.f4541b = cVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        this.f4541b.o(this.f4540a.getText().toString(), true);
    }
}
