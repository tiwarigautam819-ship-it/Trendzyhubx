package com.engagelab.privates.push.platform.google.callback;

import android.content.Context;
import android.text.TextUtils;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.engagelab.privates.push.platform.google.business.MTGoogleBusiness;
import p4.d;
import p4.i;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTGoogleListener implements d {
    private static final String TAG = "MTGoogleListener";
    private final Context context;

    public MTGoogleListener(Context context) {
        this.context = context;
    }

    @Override // p4.d
    public void onComplete(i iVar) {
        if (iVar == null) {
            MTCommonLog.d(TAG, "onTokenFailed");
            MTGoogleBusiness.getInstance().onNode(this.context, 3003, 0, MTPushConstants.PlatformNode.KEY_EVENT_TYPE_TOKEN_FAILED, 1);
            return;
        }
        if (!iVar.g()) {
            MTCommonLog.d(TAG, "onTokenFailed " + iVar.d());
            MTGoogleBusiness.getInstance().onNode(this.context, 3003, 0, MTPushConstants.PlatformNode.KEY_EVENT_TYPE_TOKEN_FAILED, 1);
            return;
        }
        String str = (String) iVar.e();
        if (TextUtils.isEmpty(str)) {
            MTCommonLog.d(TAG, "onTokenFailed:get token is empty");
            MTGoogleBusiness.getInstance().onNode(this.context, 3003, 0, MTPushConstants.PlatformNode.KEY_EVENT_TYPE_TOKEN_FAILED, 1);
        } else {
            MTCommonLog.d(TAG, "onTokenSuccess:get token is " + str);
            MTGoogleBusiness.getInstance().onToken(this.context, str, 1);
        }
    }
}
