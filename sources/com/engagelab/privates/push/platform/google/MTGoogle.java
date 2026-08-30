package com.engagelab.privates.push.platform.google;

import android.content.Context;
import android.os.Bundle;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.observer.MTObserver;
import com.engagelab.privates.push.platform.google.business.MTGoogleBusiness;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTGoogle extends MTObserver {
    private static final String THREAD_PLATFORM = MTCommonConstants.getLogTag() + "PLATFORM-8";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f1314d = 0;

    @Override // com.engagelab.privates.common.observer.MTObserver
    public void dispatchMessage(Context context, int i6, Bundle bundle) {
        MTCommonPrivatesApi.sendMessage(context, THREAD_PLATFORM, i6, bundle);
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public String[] getThreadName() {
        return new String[]{THREAD_PLATFORM};
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public void handleMessage(Context context, int i6, Bundle bundle) {
        if (i6 != 3101) {
            return;
        }
        MTGoogleBusiness.getInstance().init(context);
    }

    @Override // com.engagelab.privates.common.observer.MTObserver
    public boolean isSupport(int i6) {
        return i6 == 3101;
    }
}
