package com.engagelab.privates.push.platform.google.business;

import a2.i;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.push.api.MTPushPrivatesApi;
import com.engagelab.privates.push.api.PlatformTokenMessage;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.engagelab.privates.push.platform.google.callback.MTGoogleListener;
import com.google.firebase.messaging.FirebaseMessaging;
import p4.j;
import v3.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTGoogleBusiness {
    private static final String TAG = "MTGoogleBusiness";
    private static volatile MTGoogleBusiness instance;

    public static MTGoogleBusiness getInstance() {
        if (instance == null) {
            synchronized (MTGoogleBusiness.class) {
                instance = new MTGoogleBusiness();
            }
        }
        return instance;
    }

    public void init(Context context) {
        try {
            int iB = e.f5544b.b(context, e.f5543a);
            if (iB != 0) {
                MTCommonLog.e(TAG, "not support google push, code:" + iB);
                onNode(context, 3002, iB, MTPushConstants.PlatformNode.KEY_EVENT_TYPE_TOKEN_FAILED, 1);
                return;
            }
            MTCommonLog.d(TAG, "support google push");
            FirebaseMessaging firebaseMessagingC = FirebaseMessaging.c();
            firebaseMessagingC.getClass();
            j jVar = new j();
            firebaseMessagingC.f2037f.execute(new i(firebaseMessagingC, 8, jVar));
            jVar.f4641a.h(new MTGoogleListener(context));
        } catch (Throwable th) {
            MTCommonLog.e(TAG, "init failed " + th.getMessage());
        }
    }

    public void onNode(Context context, int i6, int i9, int i10, int i11) {
        Bundle bundle = new Bundle();
        bundle.putByte(MTPushConstants.PlatformNode.KEY_PLATFORM, (byte) 8);
        bundle.putInt("code", i6);
        bundle.putInt(MTPushConstants.PlatformNode.KEY_M_CODE, i9);
        bundle.putInt("type", i10);
        bundle.putInt(MTPushConstants.PlatformNode.KEY_FROM, i11);
        MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.ON_PLATFORM_NODE, bundle);
    }

    public void onToken(Context context, String str, int i6) {
        if (TextUtils.isEmpty(str)) {
            MTCommonLog.d(TAG, "onToken:token is empty");
            return;
        }
        PlatformTokenMessage token = new PlatformTokenMessage().setPlatform((byte) 8).setToken(str);
        Bundle bundle = new Bundle();
        bundle.putParcelable(MTPushConstants.Message.KEY_MESSAGE, token);
        MTPushPrivatesApi.init(context);
        MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.ON_PLATFORM_TOKEN, bundle);
        onNode(context, MTPushConstants.PlatformNode.CODE_GET_TOKEN_SUCCESS, 0, MTPushConstants.PlatformNode.KEY_EVENT_TYPE_TOKEN_SUCCESS, i6);
    }
}
