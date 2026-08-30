package com.engagelab.privates.common.component;

import android.content.Intent;
import android.text.TextUtils;
import com.engagelab.privates.common.log.MTCommonLog;
import java.net.URISyntaxException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class TransferCheck {
    private static final String TAG = "TransferCheck";

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
    
        if (com.engagelab.privates.common.utils.StringUtil.get16MD5String(r6).equals(com.engagelab.privates.common.utils.RsaUitl.deRsa(r7)) == false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isAllowTransfer(android.content.Context r5, java.lang.String r6, java.lang.String r7) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r7)
            r1 = 0
            if (r0 != 0) goto L16
            java.lang.String r0 = com.engagelab.privates.common.utils.StringUtil.get16MD5String(r6)     // Catch: java.lang.Exception -> L15
            java.lang.String r7 = com.engagelab.privates.common.utils.RsaUitl.deRsa(r7)     // Catch: java.lang.Exception -> L15
            boolean r7 = r0.equals(r7)     // Catch: java.lang.Exception -> L15
            if (r7 != 0) goto L16
        L15:
            return r1
        L16:
            java.lang.String r7 = com.engagelab.privates.common.global.MTGlobal.getTransfer(r5)
            java.lang.String r0 = "null"
            boolean r0 = r0.equals(r7)
            r2 = 1
            if (r0 != 0) goto L60
            boolean r0 = android.text.TextUtils.isEmpty(r7)
            if (r0 == 0) goto L2a
            goto L60
        L2a:
            java.lang.String r0 = "/"
            java.lang.String[] r7 = r7.split(r0)     // Catch: java.lang.Throwable -> L50
            r0 = r1
        L31:
            int r3 = r7.length     // Catch: java.lang.Throwable -> L50
            if (r0 >= r3) goto L52
            android.content.pm.PackageManager r3 = r5.getPackageManager()     // Catch: java.lang.Throwable -> L50
            android.content.Intent r4 = parseUri(r6)     // Catch: java.lang.Throwable -> L50
            android.content.pm.ResolveInfo r3 = r3.resolveActivity(r4, r1)     // Catch: java.lang.Throwable -> L50
            android.content.pm.ActivityInfo r3 = r3.activityInfo     // Catch: java.lang.Throwable -> L50
            java.lang.String r3 = r3.name     // Catch: java.lang.Throwable -> L50
            r4 = r7[r0]     // Catch: java.lang.Throwable -> L50
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Throwable -> L50
            if (r3 == 0) goto L4d
            return r2
        L4d:
            int r0 = r0 + 1
            goto L31
        L50:
            r5 = move-exception
            goto L53
        L52:
            return r1
        L53:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r7 = "isAllowTransfer failed "
            r6.<init>(r7)
            java.lang.String r7 = "TransferCheck"
            q2.x.j(r5, r6, r7)
            return r1
        L60:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.engagelab.privates.common.component.TransferCheck.isAllowTransfer(android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    private static Intent parseUri(String str) throws URISyntaxException {
        if (TextUtils.isEmpty(str)) {
            MTCommonLog.w(TAG, "intent uri is null");
            return null;
        }
        Intent uri = Intent.parseUri(str, 4);
        Intent intent = new Intent(uri);
        uri.addCategory("android.intent.category.BROWSABLE");
        uri.setComponent(null);
        uri.setSelector(null);
        return intent;
    }
}
