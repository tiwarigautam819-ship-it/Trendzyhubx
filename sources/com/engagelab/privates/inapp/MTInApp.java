package com.engagelab.privates.inapp;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.observer.MTObserver;
import com.engagelab.privates.common.u;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTInApp extends MTObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f1312a = MTCommonConstants.getLogTag() + "INAPP";

    @Override // com.engagelab.privates.common.observer.MTObserver
    public void dispatchMessage(Context context, int i6, Bundle bundle) {
        if (i6 != 1005) {
            if (i6 != 1006) {
                if (i6 != 1013 && i6 != 1014 && i6 != 1017 && i6 != 1018) {
                    if (i6 != 1994) {
                        if (i6 != 1995) {
                            if (i6 != 3304) {
                                switch (i6) {
                                    case 4000:
                                    case 4001:
                                    case 4002:
                                    case 4003:
                                    case 4004:
                                    case 4005:
                                    case 4006:
                                    case 4007:
                                    case 4008:
                                        break;
                                    default:
                                        MTCommonPrivatesApi.sendMessage(context, f1312a, i6, bundle);
                                        break;
                                }
                                return;
                            }
                        }
                    }
                }
                u.a().a(context, i6, bundle);
                return;
            }
            u.a().a(false);
            return;
        }
        u.a().a(true);
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public String[] getThreadName() {
        return new String[]{f1312a};
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public void handleDelayMessage(Context context, int i6, Bundle bundle) {
        if (i6 == 4002 || i6 == 4005) {
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                u.a().a(context, i6, bundle);
            } else {
                MTCommonPrivatesApi.sendMessageToMainProcess(context, i6, bundle);
            }
        }
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public void handleMessage(Context context, int i6, Bundle bundle) {
        if (i6 == 59) {
            u.a().c(context, bundle);
        } else {
            if (i6 == 3795) {
                u.a().b(context, bundle);
                return;
            }
            switch (i6) {
                case 4996:
                case 4997:
                case 4998:
                case 4999:
                    u.a().b(context, i6, bundle);
                    break;
            }
        }
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public boolean isSupport(int i6) {
        if (i6 == 59 || i6 == 3304 || i6 == 3795 || i6 == 1005 || i6 == 1006 || i6 == 1013 || i6 == 1014 || i6 == 1017 || i6 == 1018 || i6 == 1994 || i6 == 1995) {
            return true;
        }
        switch (i6) {
            case 4000:
            case 4001:
            case 4002:
            case 4003:
            case 4004:
            case 4005:
            case 4006:
            case 4007:
            case 4008:
                return true;
            default:
                switch (i6) {
                    case 4996:
                    case 4997:
                    case 4998:
                    case 4999:
                        return true;
                    default:
                        return false;
                }
        }
    }
}
