package com.getcapacitor;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ JsResult f1337b;

    public /* synthetic */ h(JsResult jsResult, int i6) {
        this.f1336a = i6;
        this.f1337b = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        switch (this.f1336a) {
            case 0:
                BridgeWebChromeClient.lambda$onJsAlert$4(this.f1337b, dialogInterface);
                break;
            case 1:
                BridgeWebChromeClient.lambda$onJsConfirm$7(this.f1337b, dialogInterface);
                break;
            default:
                BridgeWebChromeClient.lambda$onJsPrompt$10((JsPromptResult) this.f1337b, dialogInterface);
                break;
        }
    }
}
