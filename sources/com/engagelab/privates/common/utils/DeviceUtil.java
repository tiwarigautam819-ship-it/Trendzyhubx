package com.engagelab.privates.common.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.helper.CollectControlHelper;
import com.engagelab.privates.common.ids.IdHelper;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.time.ZoneId;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class DeviceUtil {
    public static String ANDROID_ID = null;
    private static final FileFilter CPU_FILTER = new a();
    private static String CPU_HARDWARE = "";
    private static String CPU_INFO = "";
    public static String GAID = null;
    private static final String TAG = "DeviceUtil";

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class a implements FileFilter {
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file.getName();
            if (!name.startsWith("cpu")) {
                return false;
            }
            for (int i6 = 3; i6 < name.length(); i6++) {
                if (name.charAt(i6) < '0' || name.charAt(i6) > '9') {
                    return false;
                }
            }
            return true;
        }
    }

    private static int extractValue(byte[] bArr, int i6) {
        byte b3;
        byte b7;
        while (i6 < bArr.length && (b3 = bArr[i6]) != 10) {
            try {
                if (b3 >= 48 && b3 <= 57) {
                    int i9 = i6 + 1;
                    while (i9 < bArr.length && (b7 = bArr[i9]) >= 48 && b7 <= 57) {
                        i9++;
                    }
                    return Integer.parseInt(new String(bArr, 0, i6, i9 - i6));
                }
                i6++;
            } catch (Throwable unused) {
            }
            return -1;
        }
        return -1;
    }

    public static String getAndroidId(Context context) {
        if (!CollectControlHelper.getInstance().getCollectControl(CollectControlHelper.Type.AID)) {
            return "";
        }
        String str = ANDROID_ID;
        if (str != null) {
            return str;
        }
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        ANDROID_ID = string;
        return string;
    }

    public static String getBrand() {
        return String.format(Locale.ENGLISH, Build.BRAND, new Object[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
    
        if ((-1) != r4.read(r1)) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0044, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0045, code lost:
    
        r5 = r1[r3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0049, code lost:
    
        if (r5 < 48) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004d, code lost:
    
        if (r5 > 57) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004f, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0052, code lost:
    
        r0 = java.lang.Integer.parseInt(new java.lang.String(r1, 0, r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005b, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0062, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0063, code lost:
    
        r3 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006c, code lost:
    
        r0 = new java.io.FileInputStream("/proc/cpuinfo");
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0079, code lost:
    
        r1 = parseFileForValue("cpu MHz", r0) * 1000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007f, code lost:
    
        r3 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0080, code lost:
    
        if (r3 != null) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0082, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0085, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002e, code lost:
    
        r1 = new byte[128];
        r4 = new java.io.FileInputStream(r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int getCPUMaxFreqKHz() {
        /*
            r0 = 0
            r1 = r0
        L2:
            r2 = -1
            r3 = 0
            int r4 = getCpuCoreCount()     // Catch: java.lang.Throwable -> L80
            if (r1 >= r4) goto L6c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L65
            r4.<init>()     // Catch: java.lang.Throwable -> L65
            java.lang.String r5 = "/sys/devices/system/cpu/cpu"
            r4.append(r5)     // Catch: java.lang.Throwable -> L65
            r4.append(r1)     // Catch: java.lang.Throwable -> L65
            java.lang.String r5 = "/cpufreq/cpuinfo_max_freq"
            r4.append(r5)     // Catch: java.lang.Throwable -> L65
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L65
            java.io.File r5 = new java.io.File     // Catch: java.lang.Throwable -> L65
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L65
            boolean r4 = r5.exists()     // Catch: java.lang.Throwable -> L65
            if (r4 != 0) goto L2e
            int r1 = r1 + 1
            goto L2
        L2e:
            r1 = 128(0x80, float:1.8E-43)
            byte[] r1 = new byte[r1]     // Catch: java.lang.Throwable -> L65
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L65
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L65
            int r3 = r4.read(r1)     // Catch: java.lang.Throwable -> L62
            if (r2 != r3) goto L44
            r4.close()     // Catch: java.lang.Throwable -> L40
        L40:
            r4.close()     // Catch: java.lang.Throwable -> L43
        L43:
            return r2
        L44:
            r3 = r0
        L45:
            r5 = r1[r3]     // Catch: java.lang.Throwable -> L62
            r6 = 48
            if (r5 < r6) goto L52
            r6 = 57
            if (r5 > r6) goto L52
            int r3 = r3 + 1
            goto L45
        L52:
            java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> L62
            r5.<init>(r1, r0, r3)     // Catch: java.lang.Throwable -> L62
            int r0 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.Throwable -> L62
            r4.close()     // Catch: java.lang.Throwable -> L5e
        L5e:
            r4.close()     // Catch: java.lang.Throwable -> L61
        L61:
            return r0
        L62:
            r0 = move-exception
            r3 = r4
            goto L66
        L65:
            r0 = move-exception
        L66:
            if (r3 == 0) goto L6b
            r3.close()     // Catch: java.lang.Throwable -> L6b
        L6b:
            throw r0     // Catch: java.lang.Throwable -> L80
        L6c:
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L80
            java.lang.String r1 = "/proc/cpuinfo"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L80
            java.lang.String r1 = "cpu MHz"
            int r1 = parseFileForValue(r1, r0)     // Catch: java.lang.Throwable -> L7f
            int r1 = r1 * 1000
            r0.close()     // Catch: java.lang.Throwable -> L7e
        L7e:
            return r1
        L7f:
            r3 = r0
        L80:
            if (r3 == 0) goto L85
            r3.close()     // Catch: java.lang.Throwable -> L85
        L85:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.engagelab.privates.common.utils.DeviceUtil.getCPUMaxFreqKHz():int");
    }

    public static String getCarrier(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String getCountryCodeByLocale() {
        return Locale.getDefault().getCountry();
    }

    public static int getCpuCoreCount() {
        File[] fileArrListFiles;
        try {
            File file = new File("/sys/devices/system/cpu/");
            if (file.exists() && (fileArrListFiles = file.listFiles(CPU_FILTER)) != null && fileArrListFiles.length != 0) {
                return fileArrListFiles.length;
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static String getCpuHardwareInfo() {
        if (!TextUtils.isEmpty(CPU_HARDWARE)) {
            return CPU_HARDWARE;
        }
        matchCpuInfo();
        return CPU_HARDWARE;
    }

    public static String getCpuInfo() {
        if (!TextUtils.isEmpty(CPU_INFO)) {
            return CPU_INFO;
        }
        matchCpuInfo();
        return CPU_INFO;
    }

    public static String getGAID(Context context) {
        if (!CollectControlHelper.getInstance().getCollectControl("gaid")) {
            return "";
        }
        String str = GAID;
        if (str != null) {
            return str;
        }
        String gaid = IdHelper.getGaid(context);
        GAID = gaid;
        return gaid;
    }

    public static String getLanguage(Context context) {
        return context.getResources().getConfiguration().locale.toString();
    }

    public static String getManufacturer() {
        return String.format(Locale.ENGLISH, Build.MANUFACTURER, new Object[0]);
    }

    public static String getModel() {
        return String.format(Locale.ENGLISH, Build.MODEL, new Object[0]);
    }

    public static String getNetworkOperator(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperator();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String getProduct() {
        return String.format(Locale.ENGLISH, Build.PRODUCT, new Object[0]);
    }

    public static long getRamSize(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(MTCommonConstants.Lifecycle.KEY_ACTIVITY);
            activityManager.getProcessMemoryInfo(new int[]{0});
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo.totalMem / 1024;
        } catch (Throwable unused) {
            return -1L;
        }
    }

    public static String getResolution(Context context) {
        DisplayMetrics displayMetrics;
        try {
            if (context.getResources() == null || (displayMetrics = context.getResources().getDisplayMetrics()) == null) {
                return "0*0";
            }
            return displayMetrics.widthPixels + "*" + displayMetrics.heightPixels;
        } catch (Throwable unused) {
            return "0*0";
        }
    }

    public static long getRomSize(Context context) {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return (((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize())) / 1024;
        } catch (Throwable unused) {
            return -1L;
        }
    }

    public static double getScreenSize(Context context) {
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            return Math.sqrt(Math.pow(displayMetrics.widthPixels / displayMetrics.xdpi, 2.0d) + Math.pow(displayMetrics.heightPixels / displayMetrics.ydpi, 2.0d));
        } catch (Throwable unused) {
            return 0.0d;
        }
    }

    public static String getSystemDevice() {
        return Build.DEVICE.toLowerCase();
    }

    public static String getSystemVersionRelease() {
        return String.format(Locale.ENGLISH, Build.VERSION.RELEASE, new Object[0]);
    }

    public static int getSystemVersionSdkInt() {
        return Build.VERSION.SDK_INT;
    }

    public static String getTimeZone() {
        String str;
        long rawOffset = TimeZone.getDefault().getRawOffset() / 3600000;
        if (rawOffset > 0) {
            str = "+" + rawOffset;
        } else if (rawOffset < 0) {
            str = "-" + rawOffset;
        } else {
            str = "" + rawOffset;
        }
        return str.replace("--", "-");
    }

    public static String getTimeZoneId() {
        return Build.VERSION.SDK_INT >= 26 ? ZoneId.systemDefault().getId() : TimeZone.getDefault().getID();
    }

    public static boolean hasGAIDPermission(Context context) {
        return IdHelper.hasGAIDPermission(context);
    }

    public static boolean isAdTrackingEnabled(Context context) {
        return !IdHelper.isLimitAdTrackingEnabled(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void matchCpuInfo() {
        /*
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L67
            java.lang.String r1 = "/proc/cpuinfo"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L67
            boolean r1 = r0.exists()     // Catch: java.lang.Throwable -> L67
            if (r1 != 0) goto Le
            goto L6d
        Le:
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.lang.Throwable -> L67
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L67
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L67
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L67
        L18:
            java.lang.String r1 = r0.readLine()     // Catch: java.lang.Throwable -> L68
            if (r1 == 0) goto L6a
            java.lang.String r2 = "Processor"
            boolean r2 = r1.contains(r2)     // Catch: java.lang.Throwable -> L68
            java.lang.String r3 = ":"
            if (r2 == 0) goto L4e
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L68
            r2.<init>()     // Catch: java.lang.Throwable -> L68
            int r4 = r1.indexOf(r3)     // Catch: java.lang.Throwable -> L68
            if (r4 < 0) goto L48
            int r5 = r1.length()     // Catch: java.lang.Throwable -> L68
            int r5 = r5 + (-1)
            if (r4 >= r5) goto L48
            int r4 = r4 + 1
            java.lang.String r4 = r1.substring(r4)     // Catch: java.lang.Throwable -> L68
            java.lang.String r4 = r4.trim()     // Catch: java.lang.Throwable -> L68
            r2.append(r4)     // Catch: java.lang.Throwable -> L68
        L48:
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L68
            com.engagelab.privates.common.utils.DeviceUtil.CPU_INFO = r2     // Catch: java.lang.Throwable -> L68
        L4e:
            java.lang.String r2 = "Hardware"
            boolean r2 = r1.contains(r2)     // Catch: java.lang.Throwable -> L68
            if (r2 == 0) goto L18
            int r2 = r1.indexOf(r3)     // Catch: java.lang.Throwable -> L68
            int r2 = r2 + 1
            java.lang.String r1 = r1.substring(r2)     // Catch: java.lang.Throwable -> L68
            java.lang.String r1 = r1.trim()     // Catch: java.lang.Throwable -> L68
            com.engagelab.privates.common.utils.DeviceUtil.CPU_HARDWARE = r1     // Catch: java.lang.Throwable -> L68
            goto L18
        L67:
            r0 = 0
        L68:
            if (r0 == 0) goto L6d
        L6a:
            r0.close()     // Catch: java.lang.Throwable -> L6d
        L6d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.engagelab.privates.common.utils.DeviceUtil.matchCpuInfo():void");
    }

    private static int parseFileForValue(String str, FileInputStream fileInputStream) {
        byte[] bArr;
        int i6;
        int i9;
        try {
            bArr = new byte[1024];
            i6 = fileInputStream.read(bArr);
            i9 = 0;
        } catch (Throwable unused) {
        }
        while (i9 < i6) {
            byte b3 = bArr[i9];
            if (b3 == 10 || i9 == 0) {
                if (b3 == 10) {
                    i9++;
                }
                for (int i10 = i9; i10 < i6; i10++) {
                    int i11 = i10 - i9;
                    if (bArr[i10] != str.charAt(i11)) {
                        break;
                    }
                    if (i11 == str.length() - 1) {
                        return extractValue(bArr, i10);
                    }
                    return -1;
                }
            }
            i9++;
        }
        return -1;
    }
}
