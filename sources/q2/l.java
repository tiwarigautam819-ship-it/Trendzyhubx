package q2;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashSet f4756a = i2.t.i("8a3c4b262d721acd49a4bf97d5213199c86fa2b9", "cc2751449a350f668590264ed76692694a80308a", "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc", "df6b721c8b4d3b6eb44c861d4415007e5a35fc95", "9b8f518b086098de3d77736f9458a3d2f6f95a37", "2438bce1ddb7bd026d5ff89f598b3b5e5bb824b3", "c56fb7d591ba6704df047fd98f535372fea00211");

    public static final boolean a(Context context, String str) {
        String string;
        d7.g.f("context", context);
        String str2 = Build.BRAND;
        int i6 = context.getApplicationInfo().flags;
        d7.g.e("brand", str2);
        if (k7.o.v(str2, "generic", false) && (i6 & 2) != 0) {
            return true;
        }
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(str, 64).signatures;
            if (signatureArr != null && signatureArr.length != 0) {
                d7.g.e("packageInfo.signatures", signatureArr);
                for (Signature signature : signatureArr) {
                    HashSet hashSet = f4756a;
                    byte[] byteArray = signature.toByteArray();
                    d7.g.e("it.toByteArray()", byteArray);
                    try {
                        MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                        d7.g.e("hash", messageDigest);
                        messageDigest.update(byteArray);
                        byte[] bArrDigest = messageDigest.digest();
                        StringBuilder sb = new StringBuilder();
                        d7.g.e("digest", bArrDigest);
                        for (byte b3 : bArrDigest) {
                            sb.append(Integer.toHexString((b3 >> 4) & 15));
                            sb.append(Integer.toHexString(b3 & 15));
                        }
                        string = sb.toString();
                        d7.g.e("builder.toString()", string);
                    } catch (NoSuchAlgorithmException unused) {
                        string = null;
                    }
                    if (s6.g.p(hashSet, string)) {
                    }
                }
                return true;
            }
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        return false;
    }
}
