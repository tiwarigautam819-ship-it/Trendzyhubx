package com.engagelab.privates.common.business.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Bundle;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.log.MTCommonLog;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTNetworkListener extends ConnectivityManager.NetworkCallback {
    private static final String TAG = "MTNetworkListener";
    private final Context context;

    public MTNetworkListener(Context context) {
        this.context = context;
    }

    private void onNetworkState(boolean z5, Network network) {
        try {
            MTCommonLog.d(TAG, "onNetworkState state:" + z5 + ",network:" + network.toString());
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
            Bundle bundle = new Bundle();
            bundle.putBoolean("state", z5);
            bundle.putParcelable("networkInfo", activeNetworkInfo);
            MTCommonPrivatesApi.sendMessageToMainProcess(this.context.getApplicationContext(), MTCommonConstants.MainWhat.ON_NETWORK_CHANGED, bundle);
        } catch (Throwable th) {
            x.j(th, new StringBuilder("onNetworkState failed "), TAG);
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        onNetworkState(true, network);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        onNetworkState(false, network);
    }
}
