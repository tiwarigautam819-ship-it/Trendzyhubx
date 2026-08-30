package com.engagelab.privates.push;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.k0;
import com.engagelab.privates.common.l0;
import com.engagelab.privates.common.o0;
import com.engagelab.privates.common.observer.MTObserver;
import com.engagelab.privates.common.p0;
import com.engagelab.privates.common.q0;
import com.engagelab.privates.common.r;
import com.engagelab.privates.common.t0;
import com.engagelab.privates.common.w0;
import com.engagelab.privates.common.x0;
import com.engagelab.privates.common.y0;
import com.engagelab.privates.common.z0;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.api.MTPushPrivatesApi;
import com.engagelab.privates.push.constants.MTPushConstants;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTPush extends MTObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f1313a = MTCommonConstants.getLogTag() + "PUSH";

    @Override // com.engagelab.privates.common.observer.MTObserver
    public void dispatchMessage(Context context, int i6, Bundle bundle) {
        if (i6 != 3303) {
            if (i6 == 3304) {
                k0.a().a(context, bundle);
                return;
            }
            switch (i6) {
                case 3001:
                    p0.b().a(context, i6, bundle);
                    break;
                case 3002:
                case 3003:
                case 3004:
                case 3005:
                    break;
                case 3006:
                    k0.a().b(context, bundle);
                    break;
                default:
                    switch (i6) {
                        case MTPushConstants.MainWhat.TAG_ADD /* 3011 */:
                        case MTPushConstants.MainWhat.TAG_DELETE /* 3012 */:
                        case MTPushConstants.MainWhat.TAG_UPDATE /* 3013 */:
                        case MTPushConstants.MainWhat.TAG_QUERY /* 3014 */:
                        case MTPushConstants.MainWhat.TAG_DELETE_ALL /* 3015 */:
                        case MTPushConstants.MainWhat.TAG_QUERY_ALL /* 3016 */:
                            y0.b().a(context, i6, bundle);
                            break;
                        case MTPushConstants.MainWhat.ALIAS_SET /* 3017 */:
                        case MTPushConstants.MainWhat.ALIAS_GET /* 3018 */:
                        case MTPushConstants.MainWhat.ALIAS_CLEAR /* 3019 */:
                            w0.b().a(context, i6, bundle);
                            break;
                        default:
                            switch (i6) {
                                case MTPushConstants.MainWhat.ON_PLATFORM_TOKEN /* 3021 */:
                                    t0.b().e(context, bundle);
                                    break;
                                case MTPushConstants.MainWhat.ON_PLATFORM_NODE /* 3022 */:
                                    t0.b().b(context, bundle);
                                    break;
                                case MTPushConstants.MainWhat.ON_MOBILE_NUMBER /* 3023 */:
                                    x0.b().a(context, i6, bundle);
                                    break;
                                case MTPushConstants.MainWhat.ON_PLATFORM_TOKEN_TO_USER /* 3024 */:
                                    t0.b().f(context, bundle);
                                    break;
                                default:
                                    MTCommonPrivatesApi.sendMessage(context, f1313a, i6, bundle);
                                    break;
                            }
                            break;
                    }
                    break;
            }
            return;
        }
        q0.b().a(context, i6, bundle);
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public short getSdkFlag() {
        return (short) 1;
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public String getSdkName() {
        return "sdk_ver";
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public int getSdkPriority() {
        return 2;
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public String getSdkVersion() {
        return MTPushPrivatesApi.SDK_VERSION_NAME;
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public String[] getThreadName() {
        return new String[]{f1313a};
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public void handleDelayMessage(Context context, int i6, Bundle bundle) {
        switch (i6) {
            case 26:
                x0.b().a(context, bundle);
                break;
            case 27:
                t0.b().c(context, bundle);
                break;
            case 28:
                y0.b().a(context, bundle);
                break;
            case 29:
                w0.b().a(context, bundle);
                break;
        }
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public void handleMessage(Context context, int i6, Bundle bundle) {
        if (i6 == 3) {
            o0.a().a(context, bundle);
            return;
        }
        if (i6 == 59) {
            q0.b().c(context, bundle);
            return;
        }
        if (i6 == 2001) {
            t0.b().b(context);
            z0.a().a(context, bundle);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTPushConstants.RemoteWhat.ON_GEOFENCE, null);
            return;
        }
        if (i6 == 2997) {
            k0.a().b(context, 0);
            return;
        }
        if (i6 == 2999) {
            t0.b().e(context);
            k0.a().e(context);
            k0.a().b(context, 2);
            return;
        }
        if (i6 != 3500) {
            if (i6 == 3796) {
                if (bundle != null) {
                    String string = bundle.getString(MTPushConstants.SetData.SET_USER_LANGUAGE);
                    if (TextUtils.equals(string, r.s(context))) {
                        return;
                    }
                    r.d(context, string);
                    k0.a().e(context);
                    return;
                }
                return;
            }
            switch (i6) {
                case 26:
                    x0.b().b(context, bundle);
                    return;
                case 27:
                    t0.b().d(context, bundle);
                    return;
                case 28:
                    y0.b().b(context, bundle);
                    return;
                case 29:
                    w0.b().b(context, bundle);
                    return;
                default:
                    switch (i6) {
                        case MTCommonConstants.RemoteWhat.TO_BACKGROUND /* 1994 */:
                            l0.a().a(context);
                            return;
                        case MTCommonConstants.RemoteWhat.TO_FOREGROUND /* 1995 */:
                            l0.a().b(context);
                            k0.a().b(context, 1);
                            return;
                        case MTCommonConstants.RemoteWhat.ON_NETWORK_DISCONNECTED /* 1996 */:
                            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.STOP_CONNECT, null);
                            return;
                        case MTCommonConstants.RemoteWhat.ON_NETWORK_CONNECTED /* 1997 */:
                            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.START_CONNECT, null);
                            return;
                        default:
                            switch (i6) {
                                case MTPushConstants.RemoteWhat.RESET_NOTIFICATION_BADGE /* 3884 */:
                                    k0.a().f(context);
                                    return;
                                case MTPushConstants.RemoteWhat.SET_NOTIFICATION_BADGE /* 3885 */:
                                    k0.a().d(context, bundle);
                                    return;
                                case MTPushConstants.RemoteWhat.RESET_NOTIFICATION_COUNT /* 3886 */:
                                    k0.a().g(context);
                                    return;
                                case MTPushConstants.RemoteWhat.SET_NOTIFICATION_COUNT /* 3887 */:
                                    k0.a().e(context, bundle);
                                    return;
                                case MTPushConstants.RemoteWhat.RESET_NOTIFICATION_LAYOUT /* 3888 */:
                                    k0.a().c(context, bundle);
                                    return;
                                case MTPushConstants.RemoteWhat.SET_NOTIFICATION_LAYOUT /* 3889 */:
                                    k0.a().f(context, bundle);
                                    return;
                                case MTPushConstants.RemoteWhat.RESET_NOTIFICATION_SILENCE_TIME /* 3890 */:
                                    k0.a().i(context);
                                    return;
                                case MTPushConstants.RemoteWhat.SET_NOTIFICATION_SILENCE_TIME /* 3891 */:
                                    k0.a().h(context, bundle);
                                    return;
                                case MTPushConstants.RemoteWhat.RESET_NOTIFICATION_SHOW_TIME /* 3892 */:
                                    k0.a().h(context);
                                    return;
                                case MTPushConstants.RemoteWhat.SET_NOTIFICATION_SHOW_TIME /* 3893 */:
                                    k0.a().g(context, bundle);
                                    return;
                                case MTPushConstants.RemoteWhat.CLEAR_NOTIFICATION /* 3894 */:
                                    q0.b().b(context, bundle);
                                    return;
                                case MTPushConstants.RemoteWhat.SHOW_NOTIFICATION /* 3895 */:
                                    q0.b().d(context, bundle);
                                    return;
                                case MTPushConstants.RemoteWhat.ON_NOTIFICATION_MESSAGE /* 3896 */:
                                    q0.b().a(context, bundle);
                                    return;
                                case MTPushConstants.RemoteWhat.ON_CUSTOM_MESSAGE /* 3897 */:
                                    p0.b().a(context, bundle);
                                    return;
                                case MTPushConstants.RemoteWhat.TURN_OFF_PUSH /* 3898 */:
                                    MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.TURN_OFF_CONNECT, null);
                                    MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.TURN_OFF_PLATFORM_PUSH, null);
                                    return;
                                case MTPushConstants.RemoteWhat.TURN_ON_PUSH /* 3899 */:
                                    MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.TURN_ON_CONNECT, null);
                                    MTCommonPrivatesApi.sendMessageToMainProcess(context, 3102, null);
                                    return;
                                default:
                                    switch (i6) {
                                        case MTPushConstants.RemoteWhat.ON_PLATFORM_CLEAR_TOKEN /* 3977 */:
                                            t0.b().a(context);
                                            return;
                                        case MTPushConstants.RemoteWhat.ON_MOBILE_NUMBER /* 3978 */:
                                            x0.b().b(context, i6, bundle);
                                            return;
                                        case MTPushConstants.RemoteWhat.ON_PLATFORM_TOKEN /* 3979 */:
                                            t0.b().g(context, bundle);
                                            return;
                                        default:
                                            switch (i6) {
                                                case MTPushConstants.RemoteWhat.ALIAS_CLEAR /* 3981 */:
                                                case MTPushConstants.RemoteWhat.ALIAS_GET /* 3982 */:
                                                case MTPushConstants.RemoteWhat.ALIAS_SET /* 3983 */:
                                                    w0.b().b(context, i6, bundle);
                                                    return;
                                                case MTPushConstants.RemoteWhat.TAG_QUERY_ALL /* 3984 */:
                                                case MTPushConstants.RemoteWhat.TAG_DELETE_ALL /* 3985 */:
                                                case MTPushConstants.RemoteWhat.TAG_QUERY /* 3986 */:
                                                case MTPushConstants.RemoteWhat.TAG_UPDATE /* 3987 */:
                                                case MTPushConstants.RemoteWhat.TAG_DELETE /* 3988 */:
                                                case MTPushConstants.RemoteWhat.TAG_ADD /* 3989 */:
                                                    y0.b().b(context, i6, bundle);
                                                    return;
                                                default:
                                                    switch (i6) {
                                                        case MTPushConstants.RemoteWhat.ON_NOTIFICATION_OPENED /* 3995 */:
                                                        case MTPushConstants.RemoteWhat.ON_NOTIFICATION_DELETED /* 3996 */:
                                                        case MTPushConstants.RemoteWhat.ON_NOTIFICATION_CLICKED /* 3997 */:
                                                            break;
                                                        case MTPushConstants.RemoteWhat.ON_NOTIFICATION_ARRIVED /* 3998 */:
                                                            k0.a().b(context, 3);
                                                            break;
                                                        case MTPushConstants.RemoteWhat.ON_CUSTOM_ARRIVED /* 3999 */:
                                                            p0.b().b(context, i6, bundle);
                                                            return;
                                                        default:
                                                            return;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        q0.b().b(context, i6, bundle);
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public boolean isSdk() {
        return true;
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public boolean isSupport(int i6) {
        if (i6 == 3102 || i6 == 3103 || i6 == 3303 || i6 == 3304 || i6 == 3 || i6 == 59 || i6 == 2001 || i6 == 2999 || i6 == 3500) {
            return true;
        }
        switch (i6) {
            case MTPushConstants.RemoteWhat.DELETE_GEOFENCE /* 3880 */:
            case MTPushConstants.RemoteWhat.ADD_GEOFENCE /* 3881 */:
            case MTPushConstants.RemoteWhat.SET_GEOFENCE_INTERVAL /* 3882 */:
            case MTPushConstants.RemoteWhat.SET_GEOFENCE_COUNT /* 3883 */:
            case MTPushConstants.RemoteWhat.RESET_NOTIFICATION_BADGE /* 3884 */:
            case MTPushConstants.RemoteWhat.SET_NOTIFICATION_BADGE /* 3885 */:
            case MTPushConstants.RemoteWhat.RESET_NOTIFICATION_COUNT /* 3886 */:
            case MTPushConstants.RemoteWhat.SET_NOTIFICATION_COUNT /* 3887 */:
            case MTPushConstants.RemoteWhat.RESET_NOTIFICATION_LAYOUT /* 3888 */:
            case MTPushConstants.RemoteWhat.SET_NOTIFICATION_LAYOUT /* 3889 */:
            case MTPushConstants.RemoteWhat.RESET_NOTIFICATION_SILENCE_TIME /* 3890 */:
            case MTPushConstants.RemoteWhat.SET_NOTIFICATION_SILENCE_TIME /* 3891 */:
            case MTPushConstants.RemoteWhat.RESET_NOTIFICATION_SHOW_TIME /* 3892 */:
            case MTPushConstants.RemoteWhat.SET_NOTIFICATION_SHOW_TIME /* 3893 */:
            case MTPushConstants.RemoteWhat.CLEAR_NOTIFICATION /* 3894 */:
            case MTPushConstants.RemoteWhat.SHOW_NOTIFICATION /* 3895 */:
            case MTPushConstants.RemoteWhat.ON_NOTIFICATION_MESSAGE /* 3896 */:
            case MTPushConstants.RemoteWhat.ON_CUSTOM_MESSAGE /* 3897 */:
            case MTPushConstants.RemoteWhat.TURN_OFF_PUSH /* 3898 */:
            case MTPushConstants.RemoteWhat.TURN_ON_PUSH /* 3899 */:
                return true;
            default:
                switch (i6) {
                    case MTPushConstants.RemoteWhat.ALIAS_CLEAR /* 3981 */:
                    case MTPushConstants.RemoteWhat.ALIAS_GET /* 3982 */:
                    case MTPushConstants.RemoteWhat.ALIAS_SET /* 3983 */:
                    case MTPushConstants.RemoteWhat.TAG_QUERY_ALL /* 3984 */:
                    case MTPushConstants.RemoteWhat.TAG_DELETE_ALL /* 3985 */:
                    case MTPushConstants.RemoteWhat.TAG_QUERY /* 3986 */:
                    case MTPushConstants.RemoteWhat.TAG_UPDATE /* 3987 */:
                    case MTPushConstants.RemoteWhat.TAG_DELETE /* 3988 */:
                    case MTPushConstants.RemoteWhat.TAG_ADD /* 3989 */:
                        return true;
                    default:
                        switch (i6) {
                            case MTPushConstants.RemoteWhat.ON_NOTIFICATION_STATE /* 3994 */:
                            case MTPushConstants.RemoteWhat.ON_NOTIFICATION_OPENED /* 3995 */:
                            case MTPushConstants.RemoteWhat.ON_NOTIFICATION_DELETED /* 3996 */:
                            case MTPushConstants.RemoteWhat.ON_NOTIFICATION_CLICKED /* 3997 */:
                            case MTPushConstants.RemoteWhat.ON_NOTIFICATION_ARRIVED /* 3998 */:
                            case MTPushConstants.RemoteWhat.ON_CUSTOM_ARRIVED /* 3999 */:
                                return true;
                            default:
                                switch (i6) {
                                    case 26:
                                    case 27:
                                    case 28:
                                    case 29:
                                        return true;
                                    default:
                                        switch (i6) {
                                            case MTCommonConstants.RemoteWhat.TO_BACKGROUND /* 1994 */:
                                            case MTCommonConstants.RemoteWhat.TO_FOREGROUND /* 1995 */:
                                            case MTCommonConstants.RemoteWhat.ON_NETWORK_DISCONNECTED /* 1996 */:
                                            case MTCommonConstants.RemoteWhat.ON_NETWORK_CONNECTED /* 1997 */:
                                                return true;
                                            default:
                                                switch (i6) {
                                                    case 3001:
                                                    case 3002:
                                                    case 3003:
                                                    case 3004:
                                                    case 3005:
                                                    case 3006:
                                                        return true;
                                                    default:
                                                        switch (i6) {
                                                            case MTPushConstants.MainWhat.TAG_ADD /* 3011 */:
                                                            case MTPushConstants.MainWhat.TAG_DELETE /* 3012 */:
                                                            case MTPushConstants.MainWhat.TAG_UPDATE /* 3013 */:
                                                            case MTPushConstants.MainWhat.TAG_QUERY /* 3014 */:
                                                            case MTPushConstants.MainWhat.TAG_DELETE_ALL /* 3015 */:
                                                            case MTPushConstants.MainWhat.TAG_QUERY_ALL /* 3016 */:
                                                            case MTPushConstants.MainWhat.ALIAS_SET /* 3017 */:
                                                            case MTPushConstants.MainWhat.ALIAS_GET /* 3018 */:
                                                            case MTPushConstants.MainWhat.ALIAS_CLEAR /* 3019 */:
                                                                return true;
                                                            default:
                                                                switch (i6) {
                                                                    case MTPushConstants.MainWhat.ON_PLATFORM_TOKEN /* 3021 */:
                                                                    case MTPushConstants.MainWhat.ON_PLATFORM_NODE /* 3022 */:
                                                                    case MTPushConstants.MainWhat.ON_MOBILE_NUMBER /* 3023 */:
                                                                    case MTPushConstants.MainWhat.ON_PLATFORM_TOKEN_TO_USER /* 3024 */:
                                                                        return true;
                                                                    default:
                                                                        switch (i6) {
                                                                            case MTPushConstants.RemoteWhat.SET_USER_LANGUAGE /* 3796 */:
                                                                            case MTPushConstants.RemoteWhat.TURN_OFF_GEOFENCESWITCH /* 3797 */:
                                                                            case MTPushConstants.RemoteWhat.TURN_ON_GEOFENCESWITCH /* 3798 */:
                                                                                return true;
                                                                            default:
                                                                                switch (i6) {
                                                                                    case MTPushConstants.RemoteWhat.ON_PLATFORM_CLEAR_TOKEN /* 3977 */:
                                                                                    case MTPushConstants.RemoteWhat.ON_MOBILE_NUMBER /* 3978 */:
                                                                                    case MTPushConstants.RemoteWhat.ON_PLATFORM_TOKEN /* 3979 */:
                                                                                        return true;
                                                                                    default:
                                                                                        return false;
                                                                                }
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }
}
