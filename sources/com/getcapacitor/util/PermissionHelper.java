package com.getcapacitor.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import java.util.ArrayList;
import java.util.Arrays;
import z.c;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class PermissionHelper {
    public static String[] getManifestPermissions(Context context) {
        try {
            PackageInfo packageInfo = InternalUtils.getPackageInfo(context.getPackageManager(), context.getPackageName(), 4096L);
            if (packageInfo != null) {
                return packageInfo.requestedPermissions;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String[] getUndefinedPermissions(Context context, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        String[] manifestPermissions = getManifestPermissions(context);
        if (manifestPermissions == null || manifestPermissions.length <= 0) {
            return strArr;
        }
        ArrayList arrayList2 = new ArrayList(Arrays.asList(manifestPermissions));
        for (String str : strArr) {
            if (!arrayList2.contains(str)) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean hasDefinedPermission(Context context, String str) {
        String[] manifestPermissions = getManifestPermissions(context);
        return manifestPermissions != null && manifestPermissions.length > 0 && new ArrayList(Arrays.asList(manifestPermissions)).contains(str);
    }

    public static boolean hasDefinedPermissions(Context context, String[] strArr) {
        for (String str : strArr) {
            if (!hasDefinedPermission(context, str)) {
                return false;
            }
        }
        return true;
    }

    public static boolean hasPermissions(Context context, String[] strArr) {
        for (String str : strArr) {
            if (c.a(context, str) != 0) {
                return false;
            }
        }
        return true;
    }
}
