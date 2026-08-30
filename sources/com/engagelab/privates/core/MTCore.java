package com.engagelab.privates.core;

import android.content.Context;
import android.os.Bundle;
import com.engagelab.privates.common.a;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.b;
import com.engagelab.privates.common.c;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.d;
import com.engagelab.privates.common.n;
import com.engagelab.privates.common.observer.MTObserver;
import com.engagelab.privates.common.p;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.core.global.MTCoreGlobal;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTCore extends MTObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f1309a = MTCommonConstants.getLogTag() + "CORE";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f1310b = MTCommonConstants.getLogTag() + "REPORT";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f1311c = MTCommonConstants.getLogTag() + "CONNECT";

    @Override // com.engagelab.privates.common.observer.MTObserver
    public void dispatchMessage(Context context, int i6, Bundle bundle) {
        if (i6 == 2001) {
            d.a().b(context);
            return;
        }
        if (i6 == 2002) {
            d.a().c(context);
            return;
        }
        if (i6 == 2233) {
            MTCommonPrivatesApi.sendMessage(context, f1310b, i6, bundle);
            return;
        }
        if (i6 == 2993) {
            String str = f1311c;
            MTCommonPrivatesApi.releaseHandler(context, str);
            MTCommonPrivatesApi.sendMessage(context, str, i6, bundle);
        } else if (i6 != 2994) {
            String str2 = f1309a;
            MTCommonPrivatesApi.buildHandler(context, str2, (int) (MTCoreGlobal.getHeartbeatInterval() + 10000));
            MTCommonPrivatesApi.sendMessage(context, str2, i6, bundle);
        } else {
            String str3 = f1311c;
            MTCommonPrivatesApi.buildHandler(context, str3, (int) (MTCoreGlobal.getHeartbeatInterval() + 10000));
            MTCommonPrivatesApi.sendMessage(context, str3, i6, bundle);
        }
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public short getSdkFlag() {
        return (short) 0;
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public String getSdkName() {
        return "core_sdk_ver";
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public int getSdkPriority() {
        return 1;
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public String getSdkVersion() {
        return "5.3.0";
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public String[] getThreadName() {
        return new String[]{f1309a, f1310b, f1311c};
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public void handleDelayMessage(Context context, int i6, Bundle bundle) {
        if (i6 == 2) {
            d.a().a(context);
        } else if (i6 == 2990) {
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.START_CONNECT, null);
        } else {
            if (i6 != 2992) {
                return;
            }
            d.a().e(context);
        }
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public void handleMessage(Context context, int i6, Bundle bundle) {
        if (i6 == 19) {
            d.a().a(context, bundle);
            return;
        }
        if (i6 == 25) {
            a.a().a(context, bundle);
            return;
        }
        if (i6 == 1991) {
            n.b(context, bundle);
            return;
        }
        if (i6 == 1999) {
            a.a().b(context);
            a.a().a(context);
            return;
        }
        if (i6 == 2222) {
            d.a().b(context, bundle);
            return;
        }
        if (i6 == 2101) {
            a.a().c(context, bundle);
            return;
        }
        if (i6 == 2102) {
            a.a().b(context, bundle);
            return;
        }
        if (i6 != 2998) {
            if (i6 != 2999) {
                switch (i6) {
                    case MTCommonConstants.RemoteWhat.START_CONNECT /* 1993 */:
                        MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.START_CONNECT, null);
                        break;
                    case MTCommonConstants.RemoteWhat.TO_BACKGROUND /* 1994 */:
                        b.a().a(context);
                        break;
                    case MTCommonConstants.RemoteWhat.TO_FOREGROUND /* 1995 */:
                        b.a().b(context);
                        break;
                    default:
                        switch (i6) {
                            case MTCoreConstants.RemoteWhat.REPORT /* 2233 */:
                                p.a().b(context, bundle);
                                break;
                            case MTCoreConstants.RemoteWhat.SET_CONFIG /* 2234 */:
                                c.a().a(context, bundle);
                                break;
                            case MTCoreConstants.RemoteWhat.CTRL_DATA /* 2235 */:
                                n.a(context, bundle);
                                break;
                            default:
                                switch (i6) {
                                    case MTCoreConstants.RemoteWhat.RETRY_CONNECT /* 2990 */:
                                        MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.START_CONNECT, null);
                                        break;
                                    case MTCoreConstants.RemoteWhat.STOP_CONNECT /* 2993 */:
                                        d.a().c(context, bundle);
                                        break;
                                    case MTCoreConstants.RemoteWhat.START_CONNECT /* 2994 */:
                                        d.a().d(context);
                                        break;
                                    case MTCoreConstants.RemoteWhat.TURN_OFF_CONNECT /* 2995 */:
                                        d.a().h(context);
                                        break;
                                    case MTCoreConstants.RemoteWhat.TURN_ON_CONNECT /* 2996 */:
                                        d.a().i(context);
                                        break;
                                }
                                break;
                        }
                        break;
                }
                return;
            }
            d.a().e(context);
            return;
        }
        d.a().g(context);
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public boolean isSdk() {
        return true;
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public boolean isSupport(int i6) {
        if (i6 == 2 || i6 == 19 || i6 == 25 || i6 == 1991 || i6 == 2222 || i6 == 1998 || i6 == 1999 || i6 == 2001 || i6 == 2002 || i6 == 2101 || i6 == 2102 || i6 == 2998 || i6 == 2999) {
            return true;
        }
        switch (i6) {
            case MTCommonConstants.RemoteWhat.START_CONNECT /* 1993 */:
            case MTCommonConstants.RemoteWhat.TO_BACKGROUND /* 1994 */:
            case MTCommonConstants.RemoteWhat.TO_FOREGROUND /* 1995 */:
                return true;
            default:
                switch (i6) {
                    case MTCoreConstants.RemoteWhat.REPORT /* 2233 */:
                    case MTCoreConstants.RemoteWhat.SET_CONFIG /* 2234 */:
                    case MTCoreConstants.RemoteWhat.CTRL_DATA /* 2235 */:
                        return true;
                    default:
                        switch (i6) {
                            case MTCoreConstants.RemoteWhat.RETRY_CONNECT /* 2990 */:
                            case MTCoreConstants.RemoteWhat.STOP_HEARTBEAT /* 2991 */:
                            case MTCoreConstants.RemoteWhat.START_HEARTBEAT /* 2992 */:
                            case MTCoreConstants.RemoteWhat.STOP_CONNECT /* 2993 */:
                            case MTCoreConstants.RemoteWhat.START_CONNECT /* 2994 */:
                            case MTCoreConstants.RemoteWhat.TURN_OFF_CONNECT /* 2995 */:
                            case MTCoreConstants.RemoteWhat.TURN_ON_CONNECT /* 2996 */:
                                return true;
                            default:
                                return false;
                        }
                }
        }
    }
}
