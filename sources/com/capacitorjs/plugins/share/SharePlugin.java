package com.capacitorjs.plugins.share;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.webkit.MimeTypeMap;
import androidx.core.content.FileProvider;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.getcapacitor.Bridge;
import com.getcapacitor.JSArray;
import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.ActivityCallback;
import com.getcapacitor.annotation.CapacitorPlugin;
import d.a;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import q2.d;
import z.c;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
@CapacitorPlugin(name = "Share")
public class SharePlugin extends Plugin {
    private BroadcastReceiver broadcastReceiver;
    private ComponentName chosenComponent;
    private boolean stopped = false;
    private boolean isPresenting = false;

    @ActivityCallback
    private void activityResult(PluginCall pluginCall, a aVar) {
        if (aVar.f2190a != 0 || this.stopped) {
            JSObject jSObject = new JSObject();
            ComponentName componentName = this.chosenComponent;
            jSObject.put("activityType", componentName != null ? componentName.getPackageName() : "");
            pluginCall.resolve(jSObject);
        } else {
            pluginCall.reject("Share canceled");
        }
        this.isPresenting = false;
    }

    private String getMimeType(String str) {
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (fileExtensionFromUrl != null) {
            return MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ComponentName getParcelableExtraLegacy(Intent intent, String str) {
        return (ComponentName) intent.getParcelableExtra(str);
    }

    private boolean isFileUrl(String str) {
        return str.startsWith("file:");
    }

    private boolean isHttpUrl(String str) {
        return str.startsWith(Bridge.CAPACITOR_HTTP_SCHEME);
    }

    private void shareFiles(JSArray jSArray, Intent intent, PluginCall pluginCall) {
        ArrayList arrayList = new ArrayList();
        try {
            List list = jSArray.toList();
            for (int i6 = 0; i6 < list.size(); i6++) {
                String str = (String) list.get(i6);
                if (!isFileUrl(str)) {
                    pluginCall.reject("only file urls are supported");
                    return;
                }
                String mimeType = getMimeType(str);
                if (mimeType == null || list.size() > 1) {
                    mimeType = "*/*";
                }
                intent.setType(mimeType);
                arrayList.add(FileProvider.d(getActivity(), getContext().getPackageName() + ".fileprovider", new File(Uri.parse(str).getPath())));
            }
            if (arrayList.size() > 1) {
                intent.putExtra("android.intent.extra.STREAM", arrayList);
            } else if (arrayList.size() == 1) {
                if (Build.VERSION.SDK_INT >= 29) {
                    intent.setClipData(ClipData.newRawUri("", (Uri) arrayList.get(0)));
                }
                intent.putExtra("android.intent.extra.STREAM", (Parcelable) arrayList.get(0));
            }
            intent.setFlags(1);
        } catch (Exception e9) {
            pluginCall.reject(e9.getLocalizedMessage());
        }
    }

    @PluginMethod
    public void canShare(PluginCall pluginCall) {
        JSObject jSObject = new JSObject();
        jSObject.put("value", true);
        pluginCall.resolve(jSObject);
    }

    @Override // com.getcapacitor.Plugin
    public void handleOnDestroy() {
        if (this.broadcastReceiver != null) {
            getActivity().unregisterReceiver(this.broadcastReceiver);
        }
    }

    @Override // com.getcapacitor.Plugin
    public void handleOnStop() {
        super.handleOnStop();
        this.stopped = true;
    }

    @Override // com.getcapacitor.Plugin
    public void load() {
        this.broadcastReceiver = new d(5, this);
        c.c(getContext(), this.broadcastReceiver, new IntentFilter("android.intent.extra.CHOSEN_COMPONENT"));
    }

    @PluginMethod
    public void share(PluginCall pluginCall) {
        if (this.isPresenting) {
            pluginCall.reject("Can't share while sharing is in progress");
            return;
        }
        String string = pluginCall.getString(MTCommonConstants.Lifecycle.KEY_TITLE, "");
        String string2 = pluginCall.getString("text");
        String string3 = pluginCall.getString("url");
        JSArray array = pluginCall.getArray("files");
        String string4 = pluginCall.getString("dialogTitle", "Share");
        if (string2 == null && string3 == null && (array == null || array.length() == 0)) {
            pluginCall.reject("Must provide a URL or Message or files");
            return;
        }
        if (string3 != null && !isFileUrl(string3) && !isHttpUrl(string3)) {
            pluginCall.reject("Unsupported url");
            return;
        }
        Intent intent = new Intent((array == null || array.length() <= 1) ? "android.intent.action.SEND" : "android.intent.action.SEND_MULTIPLE");
        if (string2 != null) {
            if (string3 != null && isHttpUrl(string3)) {
                string2 = string2 + " " + string3;
            }
            intent.putExtra("android.intent.extra.TEXT", string2);
            intent.setTypeAndNormalize("text/plain");
        }
        if (string3 != null && isHttpUrl(string3) && string2 == null) {
            intent.putExtra("android.intent.extra.TEXT", string3);
            intent.setTypeAndNormalize("text/plain");
        } else if (string3 != null && isFileUrl(string3)) {
            JSArray jSArray = new JSArray();
            jSArray.put(string3);
            shareFiles(jSArray, intent, pluginCall);
        }
        if (string != null) {
            intent.putExtra("android.intent.extra.SUBJECT", string);
        }
        if (array != null && array.length() != 0) {
            shareFiles(array, intent, pluginCall);
        }
        int i6 = Build.VERSION.SDK_INT;
        int i9 = i6 >= 31 ? 167772160 : 134217728;
        if (i6 >= 34) {
            i9 |= 16777216;
        }
        Intent intentCreateChooser = Intent.createChooser(intent, string4, PendingIntent.getBroadcast(getContext(), 0, new Intent("android.intent.extra.CHOSEN_COMPONENT"), i9).getIntentSender());
        this.chosenComponent = null;
        intentCreateChooser.addCategory("android.intent.category.DEFAULT");
        this.stopped = false;
        this.isPresenting = true;
        startActivityForResult(pluginCall, intentCreateChooser, "activityResult");
    }
}
