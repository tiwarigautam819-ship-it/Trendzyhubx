package com.getcapacitor;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ JsResult f1335b;

    public /* synthetic */ g(JsResult jsResult, int i6) {
        this.f1334a = i6;
        this.f1335b = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        switch (this.f1334a) {
            case 0:
                BridgeWebChromeClient.lambda$onJsAlert$3(this.f1335b, dialogInterface, i6);
                break;
            case 1:
                BridgeWebChromeClient.lambda$onJsConfirm$5(this.f1335b, dialogInterface, i6);
                break;
            case 2:
                BridgeWebChromeClient.lambda$onJsConfirm$6(this.f1335b, dialogInterface, i6);
                break;
            default:
                BridgeWebChromeClient.lambda$onJsPrompt$9((JsPromptResult) this.f1335b, dialogInterface, i6);
                break;
        }
    }
}
