package com.engagelab.privates.common;

import android.content.Context;
import android.os.Bundle;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.observer.MTObserver;
import com.engagelab.privates.push.constants.MTPushConstants;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class z0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile z0 f1304e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Bundle f1305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1306b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1307c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f1308d = null;

    public static z0 a() {
        if (f1304e == null) {
            synchronized (z0.class) {
                f1304e = new z0();
            }
        }
        return f1304e;
    }

    public synchronized void b(Context context, Bundle bundle) {
        MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.OTH_SOUND_MESSAGE, bundle);
    }

    public synchronized void a(Context context, Bundle bundle) {
        Bundle bundle2;
        try {
            MTCommonLog.d("MTSoundBusiness", "on_tcp_connected init:" + this.f1306b);
            String appKey = MTGlobal.getAppKey(context);
            String str = this.f1308d;
            if (str == null) {
                this.f1308d = appKey;
            } else if (!str.equals(appKey)) {
                this.f1306b = false;
                this.f1305a = null;
            }
            if (this.f1306b) {
                return;
            }
            a(context);
            if (bundle != null && (bundle2 = this.f1305a) != null) {
                bundle.putAll(bundle2);
            }
            MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.OTH_SOUND_INIT, bundle);
            this.f1306b = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void a(Context context) {
        try {
            MTCommonPrivatesApi.observer(context, (MTObserver) Class.forName("com.engagelab.privates.push.oth.sound.OTHSound").newInstance());
            this.f1307c = true;
        } catch (Throwable unused) {
            MTCommonLog.d("MTSoundBusiness", "not integrated OTHSound.aar");
        }
    }

    public synchronized void a(Context context, boolean z5) {
        try {
            MTCommonLog.d("MTSoundBusiness", "setEnablePushTextToSpeech");
            Bundle bundle = new Bundle();
            bundle.putBoolean(MTPushConstants.OTHConfig.OTH_SOUND_ENABLE_SET, z5);
            if (this.f1306b && this.f1307c) {
                MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.OTH_SOUND_ENABLE_SET, bundle);
            } else {
                this.f1305a = bundle;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
