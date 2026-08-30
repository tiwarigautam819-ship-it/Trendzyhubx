package com.engagelab.privates.common;

import android.content.Context;
import android.os.Bundle;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.binder.MTMessenger;
import com.engagelab.privates.common.business.lifecycle.MTLifecycleBusiness;
import com.engagelab.privates.common.business.network.MTNetworkBusiness;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.log.MTLogConfigHelper;
import com.engagelab.privates.common.observer.MTObserver;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTCommon extends MTObserver {
    public static final String THREAD_COMMON = MTCommonConstants.getLogTag() + "COMMON";

    @Override // com.engagelab.privates.common.observer.MTObserver
    public void dispatchMessage(Context context, int i6, Bundle bundle) {
        MTCommonPrivatesApi.sendMessage(context, THREAD_COMMON, i6, bundle);
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public String[] getThreadName() {
        return new String[]{THREAD_COMMON};
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public void handleDelayMessage(Context context, int i6, Bundle bundle) {
        if (i6 != 1000) {
            return;
        }
        MTMessenger.getInstance().initOnMainProcess(context);
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public void handleMessage(Context context, int i6, Bundle bundle) {
        if (i6 == 1000) {
            MTMessenger.getInstance().initOnMainProcess(context);
            return;
        }
        if (i6 == 1013) {
            MTLifecycleBusiness.getInstance().onActivityResumed(context, bundle);
            return;
        }
        if (i6 == 1019) {
            MTLogConfigHelper.updateLogCacheConfigMain(context, bundle);
            return;
        }
        if (i6 == 1007) {
            MTNetworkBusiness.getInstance().onMainNetworkState(context, bundle);
            return;
        }
        if (i6 == 1008) {
            MTLifecycleBusiness.getInstance().onMainLifecycleState(context, bundle);
            return;
        }
        switch (i6) {
            case MTCommonConstants.RemoteWhat.TO_BACKGROUND /* 1994 */:
            case MTCommonConstants.RemoteWhat.TO_FOREGROUND /* 1995 */:
                MTLifecycleBusiness.getInstance().onRemoteLifecycleState(context, bundle);
                break;
            case MTCommonConstants.RemoteWhat.ON_NETWORK_DISCONNECTED /* 1996 */:
            case MTCommonConstants.RemoteWhat.ON_NETWORK_CONNECTED /* 1997 */:
                MTNetworkBusiness.getInstance().onRemoteNetworkState(context, bundle);
                break;
        }
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public boolean isSupport(int i6) {
        if (i6 == 1000 || i6 == 1013 || i6 == 1019 || i6 == 1007 || i6 == 1008) {
            return true;
        }
        switch (i6) {
            case MTCommonConstants.RemoteWhat.TO_BACKGROUND /* 1994 */:
            case MTCommonConstants.RemoteWhat.TO_FOREGROUND /* 1995 */:
            case MTCommonConstants.RemoteWhat.ON_NETWORK_DISCONNECTED /* 1996 */:
            case MTCommonConstants.RemoteWhat.ON_NETWORK_CONNECTED /* 1997 */:
                return true;
            default:
                return false;
        }
    }
}
