package com.engagelab.privates.common.observer;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.engagelab.privates.common.binder.MTMessenger;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import java.util.Arrays;
import java.util.concurrent.ConcurrentLinkedQueue;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTObservable {
    private static final String TAG = "MTObservable";
    public static final int WHAT_OBSERVER = 101;
    private static volatile MTObservable instance;
    public ConcurrentLinkedQueue<MTObserver> observeQueue = new ConcurrentLinkedQueue<>();
    public ConcurrentLinkedQueue<String> observeNameQueue = new ConcurrentLinkedQueue<>();

    public static MTObservable getInstance() {
        if (instance == null) {
            synchronized (MTObservable.class) {
                instance = new MTObservable();
            }
        }
        return instance;
    }

    public void dispatchMessage(Context context, int i6, Bundle bundle) {
        for (MTObserver mTObserver : this.observeQueue) {
            try {
                if (mTObserver.isSupport(i6)) {
                    mTObserver.dispatchMessage(context, i6, bundle);
                }
            } catch (Throwable th) {
                MTCommonLog.w(TAG, "handleMessage dispatchMessage failed what=" + i6);
                x.j(th, new StringBuilder("handleMessage dispatchMessage failed "), TAG);
            }
        }
    }

    public void handleMessage(Context context, int i6, String str, int i9, Bundle bundle) {
        for (MTObserver mTObserver : this.observeQueue) {
            if (Arrays.asList(mTObserver.getThreadName()).contains(str) && mTObserver.isSupport(i9)) {
                if (i6 == 0) {
                    mTObserver.handleMessage(context, i9, bundle);
                }
                if (i6 == 1) {
                    mTObserver.handleDelayMessage(context, i9, bundle);
                }
            }
        }
    }

    public void observer(Context context, MTObserver mTObserver) {
        if (this.observeQueue.contains(mTObserver)) {
            return;
        }
        String canonicalName = mTObserver.getClass().getCanonicalName();
        if (this.observeNameQueue.contains(canonicalName)) {
            return;
        }
        MTCommonLog.d(TAG, "observer " + canonicalName);
        this.observeQueue.add(mTObserver);
        this.observeNameQueue.add(canonicalName);
        Bundle bundle = new Bundle();
        bundle.putString(MTCommonConstants.Observer.KEY_OBSERVER_NAME, canonicalName);
        if (MTGlobal.isMainProcess(context)) {
            boolean lifecycleState = MTGlobal.getLifecycleState();
            String currentActivityName = MTGlobal.getCurrentActivityName();
            if (!TextUtils.isEmpty(currentActivityName)) {
                bundle.putBoolean("state", lifecycleState);
                bundle.putString(MTCommonConstants.Lifecycle.KEY_ACTIVITY, currentActivityName);
                if (mTObserver.isSupport(MTCommonConstants.MainWhat.TO_FOREGROUND) || mTObserver.isSupport(MTCommonConstants.MainWhat.TO_BACKGROUND)) {
                    mTObserver.dispatchMessage(context, MTCommonConstants.MainWhat.TO_FOREGROUND, null);
                }
            }
            boolean networkState = MTGlobal.getNetworkState();
            int networkType = MTGlobal.getNetworkType();
            String networkName = MTGlobal.getNetworkName();
            String networkRadio = MTGlobal.getNetworkRadio();
            if (!TextUtils.isEmpty(networkRadio)) {
                bundle.putBoolean("state", networkState);
                bundle.putInt("type", networkType);
                bundle.putString("name", networkName);
                bundle.putString(MTCommonConstants.Network.KEY_RADIO, networkRadio);
                int i6 = MTCommonConstants.MainWhat.ON_NETWORK_CONNECTED;
                if (mTObserver.isSupport(MTCommonConstants.MainWhat.ON_NETWORK_CONNECTED) || mTObserver.isSupport(MTCommonConstants.MainWhat.ON_NETWORK_DISCONNECTED)) {
                    if (!networkState) {
                        i6 = 1004;
                    }
                    mTObserver.dispatchMessage(context, i6, null);
                }
            }
        }
        MTMessenger.getInstance().sendMessageToRemoteProcess(context, WHAT_OBSERVER, bundle);
    }

    public void observerOnRemoteProcess(Context context, Bundle bundle) {
        try {
            String string = bundle.getString(MTCommonConstants.Observer.KEY_OBSERVER_NAME);
            if (this.observeNameQueue.contains(string)) {
                return;
            }
            Object objNewInstance = Class.forName(string).newInstance();
            if (objNewInstance instanceof MTObserver) {
                MTObserver mTObserver = (MTObserver) objNewInstance;
                observer(context, mTObserver);
                boolean z5 = bundle.getBoolean("state");
                String string2 = bundle.getString(MTCommonConstants.Lifecycle.KEY_ACTIVITY);
                if (!TextUtils.isEmpty(string2)) {
                    MTGlobal.setLifecycleState(z5);
                    MTGlobal.setCurrentActivityName(string2);
                    int i6 = MTCommonConstants.RemoteWhat.TO_FOREGROUND;
                    if (mTObserver.isSupport(MTCommonConstants.RemoteWhat.TO_FOREGROUND) || mTObserver.isSupport(MTCommonConstants.RemoteWhat.TO_BACKGROUND)) {
                        if (!z5) {
                            i6 = 1994;
                        }
                        mTObserver.dispatchMessage(context, i6, null);
                    }
                }
                boolean z8 = bundle.getBoolean("state");
                int i9 = bundle.getInt("type");
                String string3 = bundle.getString("name");
                String string4 = bundle.getString(MTCommonConstants.Network.KEY_RADIO);
                if (TextUtils.isEmpty(string4)) {
                    return;
                }
                MTGlobal.setNetworkState(z8);
                MTGlobal.setNetworkType(i9);
                MTGlobal.setNetworkName(string3);
                MTGlobal.setNetworkRadio(string4);
                int i10 = MTCommonConstants.RemoteWhat.ON_NETWORK_CONNECTED;
                if (mTObserver.isSupport(MTCommonConstants.RemoteWhat.ON_NETWORK_CONNECTED) || mTObserver.isSupport(MTCommonConstants.RemoteWhat.ON_NETWORK_DISCONNECTED)) {
                    if (!z5) {
                        i10 = 1996;
                    }
                    mTObserver.dispatchMessage(context, i10, null);
                }
            }
        } catch (Throwable th) {
            x.j(th, new StringBuilder("observer failed "), TAG);
        }
    }
}
