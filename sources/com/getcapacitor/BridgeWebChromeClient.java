package com.getcapacitor;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.MimeTypeMap;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.EditText;
import androidx.core.content.FileProvider;
import androidx.fragment.app.t0;
import com.getcapacitor.util.PermissionHelper;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class BridgeWebChromeClient extends WebChromeClient {
    private d.c activityLauncher;
    private ActivityResultListener activityListener;
    private Bridge bridge;
    private d.c permissionLauncher;
    private PermissionListener permissionListener;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public interface ActivityResultListener {
        void onActivityResult(d.a aVar);
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public interface PermissionListener {
        void onPermissionSelect(Boolean bool);
    }

    public BridgeWebChromeClient(Bridge bridge) {
        this.bridge = bridge;
        final int i6 = 0;
        final int i9 = 1;
        this.permissionLauncher = bridge.registerForActivityResult(new t0(i9), new d.b(this) { // from class: com.getcapacitor.k

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ BridgeWebChromeClient f1346b;

            {
                this.f1346b = this;
            }

            @Override // d.b
            public final void e(Object obj) {
                switch (i6) {
                    case 0:
                        this.f1346b.lambda$new$0((Map) obj);
                        break;
                    default:
                        this.f1346b.lambda$new$1((d.a) obj);
                        break;
                }
            }
        });
        this.activityLauncher = bridge.registerForActivityResult(new t0(2), new d.b(this) { // from class: com.getcapacitor.k

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ BridgeWebChromeClient f1346b;

            {
                this.f1346b = this;
            }

            @Override // d.b
            public final void e(Object obj) {
                switch (i9) {
                    case 0:
                        this.f1346b.lambda$new$0((Map) obj);
                        break;
                    default:
                        this.f1346b.lambda$new$1((d.a) obj);
                        break;
                }
            }
        });
    }

    private File createImageFile(Activity activity) {
        return File.createTempFile(x.g("JPEG_", new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()), "_"), ".jpg", activity.getExternalFilesDir(Environment.DIRECTORY_PICTURES));
    }

    private Uri createImageFileUri() {
        g.m activity = this.bridge.getActivity();
        return FileProvider.d(activity, this.bridge.getContext().getPackageName() + ".fileprovider", createImageFile(activity));
    }

    private String[] getValidTypes(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        for (String str : strArr) {
            if (str.startsWith(".")) {
                String mimeTypeFromExtension = singleton.getMimeTypeFromExtension(str.substring(1));
                if (mimeTypeFromExtension != null && !arrayList.contains(mimeTypeFromExtension)) {
                    arrayList.add(mimeTypeFromExtension);
                }
            } else if (!arrayList.contains(str)) {
                arrayList.add(str);
            }
        }
        Object[] array = arrayList.toArray();
        return (String[]) Arrays.copyOf(array, array.length, String[].class);
    }

    private boolean isMediaCaptureSupported() {
        return PermissionHelper.hasPermissions(this.bridge.getContext(), new String[]{"android.permission.CAMERA"}) || !PermissionHelper.hasDefinedPermission(this.bridge.getContext(), "android.permission.CAMERA");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Map map) {
        if (this.permissionListener != null) {
            Iterator it = map.entrySet().iterator();
            boolean z5 = true;
            while (it.hasNext()) {
                if (!((Boolean) ((Map.Entry) it.next()).getValue()).booleanValue()) {
                    z5 = false;
                }
            }
            this.permissionListener.onPermissionSelect(Boolean.valueOf(z5));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(d.a aVar) {
        ActivityResultListener activityResultListener = this.activityListener;
        if (activityResultListener != null) {
            activityResultListener.onActivityResult(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onGeolocationPermissionsShowPrompt$11(GeolocationPermissions.Callback callback, String str, Boolean bool) {
        if (bool.booleanValue()) {
            callback.invoke(str, true, false);
            return;
        }
        String[] strArr = {"android.permission.ACCESS_COARSE_LOCATION"};
        if (Build.VERSION.SDK_INT < 31 || !PermissionHelper.hasPermissions(this.bridge.getContext(), strArr)) {
            callback.invoke(str, false, false);
        } else {
            callback.invoke(str, true, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onJsAlert$3(JsResult jsResult, DialogInterface dialogInterface, int i6) {
        dialogInterface.dismiss();
        jsResult.confirm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onJsAlert$4(JsResult jsResult, DialogInterface dialogInterface) {
        dialogInterface.dismiss();
        jsResult.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onJsConfirm$5(JsResult jsResult, DialogInterface dialogInterface, int i6) {
        dialogInterface.dismiss();
        jsResult.confirm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onJsConfirm$6(JsResult jsResult, DialogInterface dialogInterface, int i6) {
        dialogInterface.dismiss();
        jsResult.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onJsConfirm$7(JsResult jsResult, DialogInterface dialogInterface) {
        dialogInterface.dismiss();
        jsResult.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onJsPrompt$10(JsPromptResult jsPromptResult, DialogInterface dialogInterface) {
        dialogInterface.dismiss();
        jsPromptResult.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onJsPrompt$8(EditText editText, JsPromptResult jsPromptResult, DialogInterface dialogInterface, int i6) {
        dialogInterface.dismiss();
        jsPromptResult.confirm(editText.getText().toString().trim());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onJsPrompt$9(JsPromptResult jsPromptResult, DialogInterface dialogInterface, int i6) {
        dialogInterface.dismiss();
        jsPromptResult.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onPermissionRequest$2(PermissionRequest permissionRequest, Boolean bool) {
        if (bool.booleanValue()) {
            permissionRequest.grant(permissionRequest.getResources());
        } else {
            permissionRequest.deny();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onShowFileChooser$12(ValueCallback valueCallback, WebChromeClient.FileChooserParams fileChooserParams, boolean z5, Boolean bool) {
        if (bool.booleanValue()) {
            showMediaCaptureOrFilePicker(valueCallback, fileChooserParams, z5);
        } else {
            Logger.warn(Logger.tags("FileChooser"), "Camera permission not granted");
            valueCallback.onReceiveValue(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void lambda$showFilePicker$15(ValueCallback valueCallback, d.a aVar) {
        Uri[] result;
        Intent intent = aVar.f2191b;
        int i6 = aVar.f2190a;
        if (i6 != -1 || intent.getClipData() == null) {
            result = WebChromeClient.FileChooserParams.parseResult(i6, intent);
        } else {
            int itemCount = intent.getClipData().getItemCount();
            result = new Uri[itemCount];
            for (int i9 = 0; i9 < itemCount; i9++) {
                result[i9] = intent.getClipData().getItemAt(i9).getUri();
            }
        }
        valueCallback.onReceiveValue(result);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void lambda$showImageCapturePicker$13(Uri uri, ValueCallback valueCallback, d.a aVar) {
        valueCallback.onReceiveValue(aVar.f2190a == -1 ? new Uri[]{uri} : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void lambda$showVideoCapturePicker$14(ValueCallback valueCallback, d.a aVar) {
        valueCallback.onReceiveValue(aVar.f2190a == -1 ? new Uri[]{aVar.f2191b.getData()} : null);
    }

    private void showFilePicker(ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        Intent intentCreateIntent = fileChooserParams.createIntent();
        if (fileChooserParams.getMode() == 1) {
            intentCreateIntent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        }
        if (fileChooserParams.getAcceptTypes().length > 1 || intentCreateIntent.getType().startsWith(".")) {
            String[] validTypes = getValidTypes(fileChooserParams.getAcceptTypes());
            intentCreateIntent.putExtra("android.intent.extra.MIME_TYPES", validTypes);
            if (intentCreateIntent.getType().startsWith(".")) {
                intentCreateIntent.setType(validTypes[0]);
            }
        }
        try {
            this.activityListener = new f(valueCallback, 1);
            this.activityLauncher.a(intentCreateIntent);
        } catch (ActivityNotFoundException unused) {
            valueCallback.onReceiveValue(null);
        }
    }

    private boolean showImageCapturePicker(ValueCallback<Uri[]> valueCallback) {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (intent.resolveActivity(this.bridge.getActivity().getPackageManager()) == null) {
            return false;
        }
        try {
            Uri uriCreateImageFileUri = createImageFileUri();
            intent.putExtra("output", uriCreateImageFileUri);
            this.activityListener = new q(uriCreateImageFileUri, 2, valueCallback);
            this.activityLauncher.a(intent);
            return true;
        } catch (Exception e9) {
            Logger.error("Unable to create temporary media capture file: " + e9.getMessage());
            return false;
        }
    }

    private void showMediaCaptureOrFilePicker(ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams, boolean z5) {
        if ((z5 && (Build.VERSION.SDK_INT >= 24)) ? showVideoCapturePicker(valueCallback) : showImageCapturePicker(valueCallback)) {
            return;
        }
        Logger.warn(Logger.tags("FileChooser"), "Media capture intent could not be launched. Falling back to default file picker.");
        showFilePicker(valueCallback, fileChooserParams);
    }

    private boolean showVideoCapturePicker(ValueCallback<Uri[]> valueCallback) {
        Intent intent = new Intent("android.media.action.VIDEO_CAPTURE");
        if (intent.resolveActivity(this.bridge.getActivity().getPackageManager()) == null) {
            return false;
        }
        this.activityListener = new f(valueCallback, 0);
        this.activityLauncher.a(intent);
        return true;
    }

    public boolean isValidMsg(String str) {
        return (str.contains("%cresult %c") || str.contains("%cnative %c") || str.equalsIgnoreCase("[object Object]") || str.equalsIgnoreCase("console.groupEnd")) ? false : true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String strTags = Logger.tags("Console");
        if (consoleMessage.message() != null && isValidMsg(consoleMessage.message())) {
            String str = String.format("File: %s - Line %d - Msg: %s", consoleMessage.sourceId(), Integer.valueOf(consoleMessage.lineNumber()), consoleMessage.message());
            String strName = consoleMessage.messageLevel().name();
            if ("ERROR".equalsIgnoreCase(strName)) {
                Logger.error(strTags, str, null);
            } else if ("WARNING".equalsIgnoreCase(strName)) {
                Logger.warn(strTags, str);
            } else if ("TIP".equalsIgnoreCase(strName)) {
                Logger.debug(strTags, str);
            } else {
                Logger.info(strTags, str);
            }
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(final String str, final GeolocationPermissions.Callback callback) {
        super.onGeolocationPermissionsShowPrompt(str, callback);
        Logger.debug("onGeolocationPermissionsShowPrompt: DOING IT HERE FOR ORIGIN: " + str);
        String[] strArr = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};
        if (PermissionHelper.hasPermissions(this.bridge.getContext(), strArr)) {
            callback.invoke(str, true, false);
            Logger.debug("onGeolocationPermissionsShowPrompt: has required permission");
        } else {
            this.permissionListener = new PermissionListener() { // from class: com.getcapacitor.j
                @Override // com.getcapacitor.BridgeWebChromeClient.PermissionListener
                public final void onPermissionSelect(Boolean bool) {
                    this.f1342a.lambda$onGeolocationPermissionsShowPrompt$11(callback, str, bool);
                }
            };
            this.permissionLauncher.a(strArr);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        super.onHideCustomView();
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        if (this.bridge.getActivity().isFinishing()) {
            return true;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(webView.getContext());
        builder.setMessage(str2).setPositiveButton("OK", new g(jsResult, 0)).setOnCancelListener(new h(jsResult, 0));
        builder.create().show();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        if (this.bridge.getActivity().isFinishing()) {
            return true;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(webView.getContext());
        builder.setMessage(str2).setPositiveButton("OK", new g(jsResult, 1)).setNegativeButton("Cancel", new g(jsResult, 2)).setOnCancelListener(new h(jsResult, 1));
        builder.create().show();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, final JsPromptResult jsPromptResult) {
        if (this.bridge.getActivity().isFinishing()) {
            return true;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(webView.getContext());
        final EditText editText = new EditText(webView.getContext());
        builder.setMessage(str2).setView(editText).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.getcapacitor.l
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i6) {
                BridgeWebChromeClient.lambda$onJsPrompt$8(editText, jsPromptResult, dialogInterface, i6);
            }
        }).setNegativeButton("Cancel", new g(jsPromptResult, 3)).setOnCancelListener(new h(jsPromptResult, 2));
        builder.create().show();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequest(PermissionRequest permissionRequest) {
        ArrayList arrayList = new ArrayList();
        if (Arrays.asList(permissionRequest.getResources()).contains("android.webkit.resource.VIDEO_CAPTURE")) {
            arrayList.add("android.permission.CAMERA");
        }
        if (Arrays.asList(permissionRequest.getResources()).contains("android.webkit.resource.AUDIO_CAPTURE")) {
            arrayList.add("android.permission.MODIFY_AUDIO_SETTINGS");
            arrayList.add("android.permission.RECORD_AUDIO");
        }
        if (arrayList.isEmpty()) {
            permissionRequest.grant(permissionRequest.getResources());
            return;
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        this.permissionListener = new m(permissionRequest);
        this.permissionLauncher.a(strArr);
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        customViewCallback.onCustomViewHidden();
        super.onShowCustomView(view, customViewCallback);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onShowFileChooser(WebView webView, final ValueCallback<Uri[]> valueCallback, final WebChromeClient.FileChooserParams fileChooserParams) {
        List listAsList = Arrays.asList(fileChooserParams.getAcceptTypes());
        boolean zIsCaptureEnabled = fileChooserParams.isCaptureEnabled();
        final boolean z5 = false;
        boolean z8 = zIsCaptureEnabled && listAsList.contains("image/*");
        if (zIsCaptureEnabled && listAsList.contains("video/*")) {
            z5 = true;
        }
        if (!z8 && !z5) {
            showFilePicker(valueCallback, fileChooserParams);
            return true;
        }
        if (isMediaCaptureSupported()) {
            showMediaCaptureOrFilePicker(valueCallback, fileChooserParams, z5);
            return true;
        }
        this.permissionListener = new PermissionListener() { // from class: com.getcapacitor.i
            @Override // com.getcapacitor.BridgeWebChromeClient.PermissionListener
            public final void onPermissionSelect(Boolean bool) {
                this.f1338a.lambda$onShowFileChooser$12(valueCallback, fileChooserParams, z5, bool);
            }
        };
        this.permissionLauncher.a(new String[]{"android.permission.CAMERA"});
        return true;
    }
}
