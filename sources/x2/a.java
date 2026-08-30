package x2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.Base64;
import androidx.lifecycle.k0;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.getcapacitor.Bridge;
import com.getcapacitor.p;
import d7.g;
import d7.k;
import e5.e;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.cert.Certificate;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import r7.f;
import r7.i;
import r7.y;
import s6.o;
import s7.b;
import u6.j;
import u6.l;
import x1.r;
import z7.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public a() {
        new ConcurrentHashMap();
    }

    public static i g(SSLSession sSLSession) throws IOException {
        Certificate[] peerCertificates;
        List listK = o.f5282a;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        if (cipherSuite.equals("TLS_NULL_WITH_NULL_NULL") ? true : cipherSuite.equals("SSL_NULL_WITH_NULL_NULL")) {
            throw new IOException("cipherSuite == ".concat(cipherSuite));
        }
        f fVarC = f.f5029b.c(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        if ("NONE".equals(protocol)) {
            throw new IOException("tlsVersion == NONE");
        }
        y yVarE = d.e(protocol);
        try {
            peerCertificates = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused) {
        }
        List listK2 = peerCertificates != null ? b.k(Arrays.copyOf(peerCertificates, peerCertificates.length)) : listK;
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        if (localCertificates != null) {
            listK = b.k(Arrays.copyOf(localCertificates, localCertificates.length));
        }
        return new i(yVarE, fVarC, listK, new k0(1, listK2));
    }

    public static final PublicKey h(String str) throws InvalidKeySpecException {
        byte[] bArrDecode = Base64.decode(k7.o.t(k7.o.t(k7.o.t(str, "\n", ""), "-----BEGIN PUBLIC KEY-----", ""), "-----END PUBLIC KEY-----", ""), 0);
        g.e("decode(pubKeyString, Base64.DEFAULT)", bArrDecode);
        PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArrDecode));
        g.e("kf.generatePublic(x509publicKey)", publicKeyGeneratePublic);
        return publicKeyGeneratePublic;
    }

    public static final String i(String str) {
        g.f("kid", str);
        URL url = new URL(Bridge.CAPACITOR_HTTPS_SCHEME, "www." + r.f5933q, "/.well-known/oauth/openid/keys/");
        ReentrantLock reentrantLock = new ReentrantLock();
        Condition conditionNewCondition = reentrantLock.newCondition();
        k kVar = new k();
        r.c().execute(new p(url, kVar, str, reentrantLock, conditionNewCondition));
        reentrantLock.lock();
        try {
            conditionNewCondition.await(5000L, TimeUnit.MILLISECONDS);
            reentrantLock.unlock();
            return (String) kVar.f2298b;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public static u6.k j(u6.i iVar, j jVar) {
        g.f("key", jVar);
        return g.a(iVar.getKey(), jVar) ? l.f5505a : iVar;
    }

    public static u6.k m(u6.i iVar, u6.k kVar) {
        g.f("context", kVar);
        return t4.b.j(iVar, kVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00e9 A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:5:0x000e, B:7:0x0016, B:10:0x001d, B:11:0x0025, B:13:0x002b, B:18:0x004d, B:25:0x0062, B:28:0x0068, B:29:0x006b, B:31:0x0083, B:34:0x008d, B:36:0x00a3, B:41:0x00dd, B:44:0x00eb, B:47:0x0109, B:49:0x0111, B:56:0x0138, B:50:0x0115, B:52:0x0119, B:54:0x0125, B:55:0x0130, B:37:0x00ac, B:38:0x00b4, B:40:0x00cd, B:43:0x00e9, B:57:0x0141, B:58:0x0146, B:64:0x0160, B:61:0x0151), top: B:68:0x000e, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void p(java.util.HashMap r14) {
        /*
            Method dump skipped, instruction units count: 360
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: x2.a.p(java.util.HashMap):void");
    }

    public static final boolean q(PublicKey publicKey, String str, String str2) {
        g.f(MTCoreConstants.Protocol.KEY_DATA, str);
        g.f("signature", str2);
        try {
            Signature signature = Signature.getInstance("SHA256withRSA");
            signature.initVerify(publicKey);
            byte[] bytes = str.getBytes(k7.a.f3570a);
            g.e("this as java.lang.String).getBytes(charset)", bytes);
            signature.update(bytes);
            byte[] bArrDecode = Base64.decode(str2, 8);
            g.e("decode(signature, Base64.URL_SAFE)", bArrDecode);
            return signature.verify(bArrDecode);
        } catch (Exception unused) {
            return false;
        }
    }

    public abstract Typeface a(Context context, b0.f fVar, Resources resources, int i6);

    public abstract Typeface b(Context context, g0.j[] jVarArr, int i6);

    public Typeface c(Context context, List list, int i6) {
        throw new IllegalStateException("createFromFontInfoWithFallback must only be called on API 29+");
    }

    public Typeface d(Context context, InputStream inputStream) {
        File fileQ = y1.g.q(context);
        if (fileQ == null) {
            return null;
        }
        try {
            if (y1.g.i(fileQ, inputStream)) {
                return Typeface.createFromFile(fileQ.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileQ.delete();
        }
    }

    public Typeface e(Context context, Resources resources, int i6, String str, int i9) {
        File fileQ = y1.g.q(context);
        if (fileQ == null) {
            return null;
        }
        try {
            if (y1.g.h(fileQ, resources, i6)) {
                return Typeface.createFromFile(fileQ.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileQ.delete();
        }
    }

    public g0.j f(g0.j[] jVarArr, int i6) {
        new e(6);
        int i9 = (i6 & 1) == 0 ? 400 : 700;
        boolean z5 = (i6 & 2) != 0;
        g0.j jVar = null;
        int i10 = Integer.MAX_VALUE;
        for (g0.j jVar2 : jVarArr) {
            int iAbs = (Math.abs(jVar2.f2843c - i9) * 2) + (jVar2.f2844d == z5 ? 0 : 1);
            if (jVar == null || i10 > iAbs) {
                jVar = jVar2;
                i10 = iAbs;
            }
        }
        return jVar;
    }

    public abstract void k(Throwable th);

    public abstract void l(com.google.firebase.messaging.y yVar);

    public abstract void o();

    public void n() {
    }
}
