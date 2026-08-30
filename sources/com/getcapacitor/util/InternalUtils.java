package com.getcapacitor.util;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class InternalUtils {
    public static PackageInfo getPackageInfo(PackageManager packageManager, String str) {
        return getPackageInfo(packageManager, str, 0L);
    }

    private static PackageInfo getPackageInfoLegacy(PackageManager packageManager, String str, long j3) {
        return packageManager.getPackageInfo(str, (int) j3);
    }

    public static PackageInfo getPackageInfo(PackageManager packageManager, String str, long j3) {
        return Build.VERSION.SDK_INT >= 33 ? packageManager.getPackageInfo(str, PackageManager.PackageInfoFlags.of(j3)) : getPackageInfoLegacy(packageManager, str, (int) j3);
    }
}
