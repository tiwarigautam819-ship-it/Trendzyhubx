package org.apache.cordova;

import android.content.Intent;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public interface m {
    g.m getActivity();

    ExecutorService getThreadPool();

    Object onMessage(String str, Object obj);

    void startActivityForResult(o oVar, Intent intent, int i6);
}
