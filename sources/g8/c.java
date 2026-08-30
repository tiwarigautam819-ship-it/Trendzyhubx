package g8;

import android.R;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.fragment.app.q;
import com.google.android.gms.internal.measurement.y4;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Iterator;
import k1.h;
import org.apache.cordova.engine.SystemWebViewEngine;
import org.apache.cordova.i;
import org.apache.cordova.j;
import org.apache.cordova.j0;
import org.apache.cordova.k;
import org.apache.cordova.l;
import org.apache.cordova.l0;
import org.apache.cordova.o;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends WebChromeClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f2872a = 104857600;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SystemWebViewEngine f2873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LinearLayout f2874c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final y4 f2875d;

    public c(SystemWebViewEngine systemWebViewEngine) {
        this.f2873b = systemWebViewEngine;
        this.f2875d = new y4(systemWebViewEngine.f4504a.getContext(), 21);
    }

    @Override // android.webkit.WebChromeClient
    public final View getVideoLoadingProgressView() {
        if (this.f2874c == null) {
            SystemWebViewEngine systemWebViewEngine = this.f2873b;
            LinearLayout linearLayout = new LinearLayout(systemWebViewEngine.getView().getContext());
            linearLayout.setOrientation(1);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            linearLayout.setLayoutParams(layoutParams);
            View progressBar = new ProgressBar(systemWebViewEngine.getView().getContext());
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = 17;
            progressBar.setLayoutParams(layoutParams2);
            linearLayout.addView(progressBar);
            this.f2874c = linearLayout;
        }
        return this.f2874c;
    }

    @Override // android.webkit.WebChromeClient
    public final void onExceededDatabaseQuota(String str, String str2, long j3, long j8, long j9, WebStorage.QuotaUpdater quotaUpdater) {
        quotaUpdater.updateQuota(this.f2872a);
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        super.onGeolocationPermissionsShowPrompt(str, callback);
        callback.invoke(str, true, false);
        o oVarC = this.f2873b.h.c("Geolocation");
        if (oVarC == null || oVarC.hasPermisssion()) {
            return;
        }
        oVarC.requestPermissions(0);
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        this.f2873b.getCordovaWebView().hideCustomView();
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        o5.c cVar = new o5.c(10, jsResult);
        y4 y4Var = this.f2875d;
        y4Var.getClass();
        AlertDialog.Builder builder = new AlertDialog.Builder((Context) y4Var.f1990b);
        builder.setMessage(str2);
        builder.setTitle("Alert");
        builder.setCancelable(true);
        builder.setPositiveButton(R.string.ok, new i(0, cVar));
        builder.setOnCancelListener(new q(1, cVar));
        builder.setOnKeyListener(new j(0, cVar));
        y4Var.f1991c = builder.show();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        h hVar = new h(10, jsResult);
        y4 y4Var = this.f2875d;
        y4Var.getClass();
        AlertDialog.Builder builder = new AlertDialog.Builder((Context) y4Var.f1990b);
        builder.setMessage(str2);
        builder.setTitle("Confirm");
        builder.setCancelable(true);
        builder.setPositiveButton(R.string.ok, new k(hVar, 0));
        builder.setNegativeButton(R.string.cancel, new k(hVar, 1));
        builder.setOnCancelListener(new q(2, hVar));
        builder.setOnKeyListener(new j(1, hVar));
        y4Var.f1991c = builder.show();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        String str4;
        String strI;
        boolean zStartsWith;
        Boolean boolShouldAllowBridgeAccess;
        JSONArray jSONArray;
        org.apache.cordova.h hVar = this.f2873b.f4507d;
        hVar.getClass();
        if (str3 == null || !str3.startsWith("gap:")) {
            str4 = str2;
            if (str3 != null && str3.startsWith("gap_bridge_mode:")) {
                try {
                    int i6 = Integer.parseInt(str3.substring(16));
                    int i9 = Integer.parseInt(str4);
                    if (hVar.b(i6)) {
                        hVar.f4523b.f(i9);
                    }
                } catch (IllegalAccessException e9) {
                    e9.printStackTrace();
                } catch (NumberFormatException e10) {
                    e10.printStackTrace();
                }
                strI = "";
            } else if (str3 != null && str3.startsWith("gap_poll:")) {
                try {
                    strI = !hVar.b(Integer.parseInt(str3.substring(9))) ? null : hVar.f4523b.d("1".equals(str4));
                    if (strI == null) {
                        strI = "";
                    }
                } catch (IllegalAccessException e11) {
                    e11.printStackTrace();
                    strI = "";
                }
            } else if (str3 == null || !str3.startsWith("gap_init:")) {
                strI = null;
            } else {
                l0 l0Var = hVar.f4522a;
                synchronized (l0Var.f4543b) {
                    try {
                        Iterator it = l0Var.f4543b.values().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                zStartsWith = str.startsWith(l0Var.b());
                                break;
                            }
                            o oVar = (o) l0Var.f4542a.get(((j0) it.next()).f4533a);
                            if (oVar != null && (boolShouldAllowBridgeAccess = oVar.shouldAllowBridgeAccess(str)) != null) {
                                zStartsWith = boolShouldAllowBridgeAccess.booleanValue();
                                break;
                            }
                        }
                    } finally {
                    }
                }
                if (zStartsWith) {
                    hVar.f4523b.f(Integer.parseInt(str3.substring(9)));
                    hVar.f4524c = new SecureRandom().nextInt(Integer.MAX_VALUE);
                    strI = a1.a.i(hVar.f4524c, "");
                } else {
                    Log.e("CordovaBridge", "gap_init called from restricted origin: " + str);
                    strI = "";
                }
            }
        } else {
            try {
                jSONArray = new JSONArray(str3.substring(4));
                str4 = str2;
            } catch (IllegalAccessException e12) {
                e = e12;
                str4 = str2;
            } catch (JSONException e13) {
                e = e13;
                str4 = str2;
            }
            try {
                strI = hVar.a(jSONArray.getInt(0), jSONArray.getString(1), jSONArray.getString(2), jSONArray.getString(3), str4);
                if (strI == null) {
                    strI = "";
                }
            } catch (IllegalAccessException e14) {
                e = e14;
                e.printStackTrace();
                strI = "";
            } catch (JSONException e15) {
                e = e15;
                e.printStackTrace();
                strI = "";
            }
        }
        if (strI != null) {
            jsPromptResult.confirm(strI);
        } else {
            y4 y4Var = this.f2875d;
            o5.c cVar = new o5.c(11, jsPromptResult);
            y4Var.getClass();
            Context context = (Context) y4Var.f1990b;
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setMessage(str4);
            EditText editText = new EditText(context);
            if (str3 != null) {
                editText.setText(str3);
            }
            builder.setView(editText);
            builder.setCancelable(false);
            builder.setPositiveButton(R.string.ok, new l(editText, cVar));
            builder.setNegativeButton(R.string.cancel, new i(1, cVar));
            y4Var.f1991c = builder.show();
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onPermissionRequest(PermissionRequest permissionRequest) {
        Arrays.toString(permissionRequest.getResources());
        permissionRequest.grant(permissionRequest.getResources());
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        this.f2873b.getCordovaWebView().showCustomView(view, customViewCallback);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onShowFileChooser(WebView webView, ValueCallback valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        Boolean bool = Boolean.FALSE;
        if (fileChooserParams.getMode() == 1) {
            bool = Boolean.TRUE;
        }
        Intent intentCreateIntent = fileChooserParams.createIntent();
        intentCreateIntent.putExtra("android.intent.extra.ALLOW_MULTIPLE", bool);
        String[] acceptTypes = fileChooserParams.getAcceptTypes();
        if (acceptTypes.length > 1) {
            intentCreateIntent.setType("*/*");
            intentCreateIntent.putExtra("android.intent.extra.MIME_TYPES", acceptTypes);
        }
        try {
            this.f2873b.f4510g.startActivityForResult(new b(valueCallback), intentCreateIntent, 5173);
            return true;
        } catch (ActivityNotFoundException unused) {
            valueCallback.onReceiveValue(null);
            return true;
        }
    }
}
