package com.engagelab.privates.common;

import android.content.Context;
import android.os.Bundle;
import com.engagelab.privates.common.log.MTLogConfigHelper;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.core.global.MTCoreGlobal;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class n {
    public static void a(Context context, Bundle bundle) {
        MTLogConfigHelper.Ctrl.ctrl(context, bundle.getInt(MTCoreConstants.Protocol.KEY_CMD), bundle.getString(MTCoreConstants.Protocol.KEY_PROTOCOL));
    }

    public static void b(Context context, Bundle bundle) {
        MTLogConfigHelper.Report.report(context, MTCoreGlobal.getHttpAddress(context), r.r(context), r.g(context));
    }
}
