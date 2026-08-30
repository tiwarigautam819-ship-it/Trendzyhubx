package com.engagelab.privates.push.global;

import android.content.Context;
import android.text.TextUtils;
import com.engagelab.privates.common.r;
import com.engagelab.privates.common.utils.DeviceUtil;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTJpushGlobal {
    public static String getUserLanguage(Context context) {
        String strS = r.s(context);
        return TextUtils.isEmpty(strS) ? DeviceUtil.getLanguage(context) : strS;
    }
}
