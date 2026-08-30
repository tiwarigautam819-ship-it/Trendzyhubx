package com.engagelab.privates.push.utils;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ApplicationContextUtil {
    public static Context mApplicationContext;

    public static Context getAppContext() {
        return mApplicationContext;
    }

    public static void init(Context context) {
        mApplicationContext = context;
    }
}
