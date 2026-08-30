package y;

import android.app.Activity;
import android.os.Build;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b extends z.c {
    /* JADX WARN: Multi-variable type inference failed */
    public static void d(Activity activity, String[] strArr, int i6) {
        HashSet hashSet = new HashSet();
        for (int i9 = 0; i9 < strArr.length; i9++) {
            if (TextUtils.isEmpty(strArr[i9])) {
                throw new IllegalArgumentException(q2.x.h(new StringBuilder("Permission request for permissions "), Arrays.toString(strArr), " must not contain null or empty values"));
            }
            if (Build.VERSION.SDK_INT < 33 && TextUtils.equals(strArr[i9], "android.permission.POST_NOTIFICATIONS")) {
                hashSet.add(Integer.valueOf(i9));
            }
        }
        int size = hashSet.size();
        String[] strArr2 = size > 0 ? new String[strArr.length - size] : strArr;
        if (size > 0) {
            if (size == strArr.length) {
                return;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < strArr.length; i11++) {
                if (!hashSet.contains(Integer.valueOf(i11))) {
                    strArr2[i10] = strArr[i11];
                    i10++;
                }
            }
        }
        if (activity instanceof a) {
            ((a) activity).validateRequestPermissionsRequestCode(i6);
        }
        activity.requestPermissions(strArr, i6);
    }
}
