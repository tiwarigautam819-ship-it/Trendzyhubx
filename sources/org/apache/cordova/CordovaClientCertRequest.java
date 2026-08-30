package org.apache.cordova;

import android.webkit.ClientCertRequest;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class CordovaClientCertRequest implements c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ClientCertRequest f4458a;

    public CordovaClientCertRequest(ClientCertRequest clientCertRequest) {
        this.f4458a = clientCertRequest;
    }

    public void cancel() {
        this.f4458a.cancel();
    }

    public String getHost() {
        return this.f4458a.getHost();
    }

    public String[] getKeyTypes() {
        return this.f4458a.getKeyTypes();
    }

    public int getPort() {
        return this.f4458a.getPort();
    }

    public Principal[] getPrincipals() {
        return this.f4458a.getPrincipals();
    }

    public void ignore() {
        this.f4458a.ignore();
    }

    public void proceed(PrivateKey privateKey, X509Certificate[] x509CertificateArr) {
        this.f4458a.proceed(privateKey, x509CertificateArr);
    }
}
