package org.apache.cordova;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.webkit.WebChromeClient;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public interface t {
    boolean backHistory();

    void clearCache();

    void clearHistory();

    Context getContext();

    l0 getPluginManager();

    q getPreferences();

    void handleDestroy();

    void handlePause(boolean z5);

    void handleResume(boolean z5);

    void handleStart();

    void handleStop();

    void hideCustomView();

    boolean isButtonPlumbedToJs(int i6);

    void onNewIntent(Intent intent);

    void sendPluginResult(m0 m0Var, String str);

    void setButtonPlumbedToJs(int i6, boolean z5);

    void showCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback);

    void showWebPage(String str, boolean z5, boolean z8, Map map);
}
