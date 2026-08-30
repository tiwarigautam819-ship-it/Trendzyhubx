package com.engagelab.privates.common;

import android.content.Context;
import android.text.TextUtils;
import com.engagelab.privates.common.log.MTCommonLog;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.security.InvalidKeyException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class i extends f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SSLSocket f1188d;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class a implements X509TrustManager {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public X509TrustManager f1189a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public X509Certificate f1190b;

        /* JADX INFO: renamed from: com.engagelab.privates.common.i$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
        public static class C0000a extends CertificateException {
            public C0000a(String str) {
                super(q2.x.k("MyCertificateException:", str));
            }
        }

        public a(String str) throws C0000a {
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.getBytes());
                X509Certificate x509Certificate = (X509Certificate) certificateFactory.generateCertificate(byteArrayInputStream);
                byteArrayInputStream.close();
                this.f1190b = x509Certificate;
                KeyStore.TrustedCertificateEntry trustedCertificateEntry = new KeyStore.TrustedCertificateEntry(x509Certificate);
                KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                keyStore.load(null, null);
                keyStore.setEntry("ca_root", trustedCertificateEntry, null);
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init(keyStore);
                for (TrustManager trustManager : trustManagerFactory.getTrustManagers()) {
                    if (trustManager instanceof X509TrustManager) {
                        this.f1189a = (X509TrustManager) trustManager;
                        return;
                    }
                }
            } catch (Throwable th) {
                MTCommonLog.e("SSLTrustManager", "init trustManager failed, error:" + th);
                throw new C0000a("SSLTrustManager init : " + th);
            }
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            MTCommonLog.d("SSLTrustManager", "checkClientTrusted");
            this.f1189a.checkClientTrusted(x509CertificateArr, str);
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            MTCommonLog.d("SSLTrustManager", "checkServerTrusted");
            if (x509CertificateArr != null && x509CertificateArr.length != 0) {
                if (x509CertificateArr[0] != null) {
                    try {
                        for (X509Certificate x509Certificate : x509CertificateArr) {
                            x509Certificate.checkValidity();
                            x509Certificate.verify(this.f1190b.getPublicKey());
                        }
                        return;
                    } catch (InvalidKeyException e9) {
                        MTCommonLog.e("SSLTrustManager", ":checkServerTrusted: InvalidKeyException:" + e9);
                        throw new C0000a("InvalidKeyException:" + e9);
                    } catch (NoSuchAlgorithmException e10) {
                        MTCommonLog.e("SSLTrustManager", ":checkServerTrusted: NoSuchAlgorithmException:" + e10);
                        throw new C0000a("NoSuchAlgorithmException:" + e10);
                    } catch (NoSuchProviderException e11) {
                        MTCommonLog.e("SSLTrustManager", ":checkServerTrusted: NoSuchProviderException:" + e11);
                        throw new C0000a("NoSuchProviderException:" + e11);
                    } catch (SignatureException e12) {
                        MTCommonLog.e("SSLTrustManager", ":checkServerTrusted: SignatureException:" + e12);
                        throw new C0000a("SignatureException:" + e12);
                    } catch (CertificateExpiredException e13) {
                        MTCommonLog.e("SSLTrustManager", ":checkServerTrusted: CertificateExpiredException:" + e13);
                        throw new C0000a("CertificateExpiredException:" + e13);
                    } catch (CertificateNotYetValidException e14) {
                        MTCommonLog.e("SSLTrustManager", ":checkServerTrusted: CertificateNotYetValidException:" + e14);
                        throw new C0000a("CertificateNotYetValidException:" + e14);
                    }
                }
            }
            throw new C0000a("Check Server x509Certificates is empty");
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            MTCommonLog.d("SSLTrustManager", "getAcceptedIssuers");
            return this.f1189a.getAcceptedIssuers();
        }
    }

    @Override // com.engagelab.privates.common.f
    public String a() {
        return "TcpSSLClient";
    }

    @Override // com.engagelab.privates.common.f
    public boolean b(Context context, String str, int i6) {
        SSLSocket sSLSocketC = c(context, str, i6);
        if (sSLSocketC == null) {
            MTCommonLog.d("TcpSSLClient", "tcp connect fai");
            return false;
        }
        this.f1188d = sSLSocketC;
        MTCommonLog.d("TcpSSLClient", "tcp connect success");
        return true;
    }

    @Override // com.engagelab.privates.common.f
    public List<String> c(Context context) {
        return i(context);
    }

    @Override // com.engagelab.privates.common.f
    public byte[] d(Context context) {
        try {
        } catch (IOException e9) {
            MTCommonLog.w("TcpSSLClient", "receive IOException " + e9.getMessage());
            a(context, true);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("receive failed "), "TcpSSLClient");
            a(context, true);
        }
        if (!b()) {
            MTCommonLog.d("TcpSSLClient", "tcp is not connecting");
            return null;
        }
        if (!this.f1188d.isConnected()) {
            MTCommonLog.w("TcpSSLClient", "socketChannel is disConnected");
            a(context, true);
            return null;
        }
        if (b()) {
            byte[] bArr = new byte[2];
            int i6 = this.f1188d.getInputStream().read(bArr);
            if (i6 < 0) {
                MTCommonLog.w("TcpSSLClient", "read ahead length = " + i6);
                a(context, true);
                return null;
            }
            int i9 = ByteBuffer.wrap(bArr).getShort() & 16383;
            MTCommonLog.d("TcpSSLClient", "read total length = " + i9);
            if (i9 == 0) {
                a(context, true);
                return null;
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i9 - 2);
            while (byteBufferAllocate.hasRemaining()) {
                byte[] bArr2 = new byte[byteBufferAllocate.remaining()];
                int i10 = this.f1188d.getInputStream().read(bArr2);
                MTCommonLog.w("TcpSSLClient", "read content length = " + i10);
                if (i10 <= 0) {
                    a(context, true);
                    return null;
                }
                byteBufferAllocate.put(bArr2);
            }
            byte[] bArrArray = byteBufferAllocate.array();
            MTCommonLog.d("TcpSSLClient", "read total contentBytes.length = " + bArrArray.length);
            byte[] bArr3 = new byte[i9];
            System.arraycopy(bArr, 0, bArr3, 0, 2);
            System.arraycopy(bArrArray, 0, bArr3, 2, bArrArray.length);
            return bArr3;
        }
        return null;
    }

    public final List<String> i(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(j(context));
        return arrayList;
    }

    public final List<String> j(Context context) {
        return r.o(context);
    }

    @Override // com.engagelab.privates.common.f
    public void a(Context context) {
        try {
            MTCommonLog.d("TcpSSLClient", "tcp disconnectImp");
            SSLSocket sSLSocket = this.f1188d;
            if (sSLSocket != null) {
                sSLSocket.close();
                this.f1188d = null;
            }
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("disconnect failed "), "TcpSSLClient");
        }
    }

    @Override // com.engagelab.privates.common.f
    public boolean c(Context context, byte[] bArr) throws IOException {
        SSLSocket sSLSocket = this.f1188d;
        if (sSLSocket == null || !sSLSocket.isConnected()) {
            return false;
        }
        this.f1188d.getOutputStream().write(bArr);
        return true;
    }

    public final SSLSocket c(Context context, String str, int i6) {
        SSLSocket sSLSocket = null;
        try {
            String strA = r.a(context);
            if (TextUtils.isEmpty(strA)) {
                MTCommonLog.e("TcpSSLClient", "ssl cer is null");
                return null;
            }
            MTCommonLog.d("TcpSSLClient", "host:" + str + ",port:" + i6);
            SSLContext sSLContext = SSLContext.getInstance("TLSv1.2");
            sSLContext.init(null, new TrustManager[]{a(strA)}, new SecureRandom());
            SSLSocket sSLSocket2 = (SSLSocket) sSLContext.getSocketFactory().createSocket(str, i6);
            try {
                sSLSocket2.setKeepAlive(true);
                return sSLSocket2;
            } catch (SocketException e9) {
                sSLSocket = sSLSocket2;
                e = e9;
                MTCommonLog.e("TcpSSLClient", "ssl SocketException:" + e.getMessage());
                return sSLSocket;
            } catch (UnknownHostException e10) {
                sSLSocket = sSLSocket2;
                e = e10;
                MTCommonLog.e("TcpSSLClient", "ssl UnknownHostException:" + e.getMessage());
                return sSLSocket;
            } catch (IOException e11) {
                sSLSocket = sSLSocket2;
                e = e11;
                MTCommonLog.e("TcpSSLClient", "ssl IOException:" + e.getMessage());
                return sSLSocket;
            } catch (KeyManagementException e12) {
                sSLSocket = sSLSocket2;
                e = e12;
                MTCommonLog.e("TcpSSLClient", "ssl KeyManagementException:" + e.getMessage());
                return sSLSocket;
            } catch (NoSuchAlgorithmException e13) {
                sSLSocket = sSLSocket2;
                e = e13;
                MTCommonLog.e("TcpSSLClient", "ssl NoSuchAlgorithmException:" + e.getMessage());
                return sSLSocket;
            } catch (CertificateException e14) {
                sSLSocket = sSLSocket2;
                e = e14;
                MTCommonLog.e("TcpSSLClient", "ssl CertificateException:" + e.getMessage());
                return sSLSocket;
            }
        } catch (SocketException e15) {
            e = e15;
        } catch (UnknownHostException e16) {
            e = e16;
        } catch (IOException e17) {
            e = e17;
        } catch (KeyManagementException e18) {
            e = e18;
        } catch (NoSuchAlgorithmException e19) {
            e = e19;
        } catch (CertificateException e20) {
            e = e20;
        }
    }

    public final TrustManager a(String str) {
        return new a(str);
    }
}
