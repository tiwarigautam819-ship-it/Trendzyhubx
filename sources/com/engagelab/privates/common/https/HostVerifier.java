package com.engagelab.privates.common.https;

import android.text.TextUtils;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class HostVerifier implements HostnameVerifier {
    private static final String TAG = "HostVerifier";
    public String checkHost;

    public HostVerifier(String str) {
        this.checkHost = str;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return TextUtils.equals(this.checkHost, str);
    }
}
