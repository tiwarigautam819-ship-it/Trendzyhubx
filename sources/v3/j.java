package v3;

import com.google.android.gms.common.internal.d0;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f5558a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f5559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ m f5560c;

    public /* synthetic */ j(boolean z5, String str, m mVar) {
        this.f5558a = z5;
        this.f5559b = str;
        this.f5560c = mVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        MessageDigest messageDigest;
        boolean z5 = this.f5558a;
        String str = this.f5559b;
        m mVar = this.f5560c;
        String str2 = (z5 || !o.b(str, mVar, true, false).f5578a) ? "not allowed" : "debug cert rejected";
        int i6 = 0;
        while (true) {
            if (i6 >= 2) {
                messageDigest = null;
                break;
            }
            try {
                messageDigest = MessageDigest.getInstance("SHA-256");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                break;
            }
            i6++;
        }
        d0.h(messageDigest);
        byte[] bArrDigest = messageDigest.digest(mVar.f5565d);
        int length = bArrDigest.length;
        char[] cArr = new char[length + length];
        int i9 = 0;
        for (byte b3 : bArrDigest) {
            char[] cArr2 = b4.c.f947b;
            cArr[i9] = cArr2[(b3 & 255) >>> 4];
            cArr[i9 + 1] = cArr2[b3 & 15];
            i9 += 2;
        }
        return str2 + ": pkg=" + str + ", sha256=" + new String(cArr) + ", atk=" + z5 + ", ver=12451000.false";
    }
}
