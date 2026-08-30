package com.getcapacitor;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.webkit.WebView;
import j0.b1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class CapacitorWebView extends WebView {
    private Bridge bridge;
    private BaseInputConnection capInputConnection;

    public CapacitorWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static b1 lambda$edgeToEdgeHandler$0(View view, b1 b1Var) {
        c0.c cVarF = b1Var.f3254a.f(135);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.leftMargin = cVarF.f989a;
        marginLayoutParams.bottomMargin = cVarF.f992d;
        marginLayoutParams.rightMargin = cVarF.f991c;
        marginLayoutParams.topMargin = cVarF.f990b;
        view.setLayoutParams(marginLayoutParams);
        return b1.f3253b;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 2) {
            return super.dispatchKeyEvent(keyEvent);
        }
        evaluateJavascript("document.activeElement.value = document.activeElement.value + '" + keyEvent.getCharacters() + "';", null);
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void edgeToEdgeHandler(com.getcapacitor.Bridge r6) {
        /*
            r5 = this;
            com.getcapacitor.CapConfig r6 = r6.getConfig()
            java.lang.String r6 = r6.adjustMarginsForEdgeToEdge()
            java.lang.String r0 = "disable"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L11
            goto L4d
        L11:
            java.lang.String r0 = "force"
            boolean r0 = r6.equals(r0)
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 35
            r3 = 0
            if (r1 < r2) goto L47
            java.lang.String r1 = "auto"
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L47
            android.util.TypedValue r6 = new android.util.TypedValue
            r6.<init>()
            android.content.Context r1 = r5.getContext()
            android.content.res.Resources$Theme r1 = r1.getTheme()
            r2 = 16844442(0x101069a, float:2.3698294E-38)
            r4 = 1
            boolean r1 = r1.resolveAttribute(r2, r6, r4)
            int r6 = r6.data
            if (r6 == 0) goto L41
            r6 = r4
            goto L42
        L41:
            r6 = r3
        L42:
            if (r1 == 0) goto L48
            if (r6 != 0) goto L47
            goto L48
        L47:
            r4 = r3
        L48:
            if (r0 != 0) goto L4e
            if (r4 == 0) goto L4d
            goto L4e
        L4d:
            return
        L4e:
            com.getcapacitor.n r6 = new com.getcapacitor.n
            r6.<init>(r3)
            java.util.WeakHashMap r0 = j0.k0.f3286a
            j0.d0.i(r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.getcapacitor.CapacitorWebView.edgeToEdgeHandler(com.getcapacitor.Bridge):void");
    }

    @Override // android.webkit.WebView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        Bridge bridge = this.bridge;
        if (!(bridge != null ? bridge.getConfig() : CapConfig.loadDefault(getContext())).isInputCaptured()) {
            return super.onCreateInputConnection(editorInfo);
        }
        if (this.capInputConnection == null) {
            this.capInputConnection = new BaseInputConnection(this, false);
        }
        return this.capInputConnection;
    }

    public void setBridge(Bridge bridge) {
        this.bridge = bridge;
    }
}
