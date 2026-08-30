package com.engagelab.privates.common.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ReceiverUtils {
    public static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler) {
        return Build.VERSION.SDK_INT >= 33 ? context.getApplicationContext().registerReceiver(broadcastReceiver, intentFilter, str, handler, 2) : context.getApplicationContext().registerReceiver(broadcastReceiver, intentFilter, str, handler);
    }

    public static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (Build.VERSION.SDK_INT >= 33) {
            return context.getApplicationContext().registerReceiver(broadcastReceiver, intentFilter, 2);
        }
        return context.getApplicationContext().registerReceiver(broadcastReceiver, intentFilter);
    }
}
