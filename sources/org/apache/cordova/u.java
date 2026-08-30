package org.apache.cordova;

import android.view.KeyEvent;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public interface u {
    void clearLoadTimeoutTimer();

    Boolean onDispatchKeyEvent(KeyEvent keyEvent);

    boolean onNavigationAttempt(String str);

    void onPageFinishedLoading(String str);

    void onPageStarted(String str);

    void onReceivedError(int i6, String str, String str2);
}
