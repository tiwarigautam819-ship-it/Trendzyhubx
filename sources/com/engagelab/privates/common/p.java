package com.engagelab.privates.common;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.observer.MTObservable;
import com.engagelab.privates.common.observer.MTObserver;
import com.engagelab.privates.common.utils.AESUtil;
import com.engagelab.privates.common.utils.FileUtils;
import com.engagelab.privates.common.utils.GZipUtil;
import com.engagelab.privates.common.utils.SM4Util;
import com.engagelab.privates.common.utils.StringUtil;
import com.engagelab.privates.common.utils.SystemUtil;
import com.engagelab.privates.common.utils.Utils;
import com.engagelab.privates.core.api.MTReporter;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.core.global.MTCoreGlobal;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f1235d = 1000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f1236e = {4, 16, 32, 64, 128, 256, 512};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f1237f = 7;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final ScheduledExecutorService f1238g = Executors.newSingleThreadScheduledExecutor();
    public static final Random h = new Random();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile p f1239i = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f1241b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1240a = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f1242c = "";

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class a implements Comparator<File> {
        public a(p pVar) {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            long jLastModified = file.lastModified() - file2.lastModified();
            if (jLastModified < 0) {
                return -1;
            }
            return jLastModified > 0 ? 1 : 0;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f1243a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f1244b;

        public b(Context context, int i6) {
            this.f1243a = context;
            this.f1244b = i6;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.a(this.f1243a, this.f1244b + 1);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f1246a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f1247b;

        public c(Context context, int i6) {
            this.f1246a = context;
            this.f1247b = i6;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.a(this.f1246a, this.f1247b + 1);
        }
    }

    public final String b() {
        return this.f1242c;
    }

    public File c(Context context, Bundle bundle) {
        Throwable th;
        FileOutputStream fileOutputStream;
        try {
            MTReporter mTReporter = (MTReporter) bundle.getParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL);
            JSONObject jSONObject = new JSONObject(mTReporter.getContent());
            jSONObject.put("type", mTReporter.getType());
            JSONObject jSONObjectA = a(context, jSONObject);
            if (jSONObjectA == null) {
                return null;
            }
            String appkey = mTReporter.getAppkey();
            String string = jSONObjectA.toString();
            String str = a(context, appkey) + File.separator + System.currentTimeMillis();
            MTCommonLog.d("MTReportBusiness", "save file:" + str);
            File file = new File(str);
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                return null;
            }
            if (!file.exists() && !file.createNewFile()) {
                return null;
            }
            fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(string.getBytes(MTCommonConstants.UTF_8));
                try {
                    fileOutputStream.close();
                } catch (Throwable unused) {
                }
                return file;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
        try {
            MTCommonLog.w("MTReportBusiness", "saveReportContent failed " + th.getMessage());
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Throwable unused2) {
                }
            }
            return null;
        } catch (Throwable th4) {
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Throwable unused3) {
                }
            }
            throw th4;
        }
    }

    public String a(Context context) {
        if (TextUtils.isEmpty(this.f1241b)) {
            String absolutePath = context.getFilesDir().getAbsolutePath();
            StringBuilder sb = new StringBuilder();
            sb.append(absolutePath);
            String str = File.separator;
            sb.append(str);
            sb.append("com_engagelab_privates_core");
            sb.append(str);
            this.f1241b = sb.toString();
        }
        return q2.x.h(new StringBuilder(), this.f1241b, MTGlobal.getAppKey(context));
    }

    public void b(Context context, Bundle bundle) {
        try {
            bundle.setClassLoader(MTReporter.class.getClassLoader());
            if (!bundle.containsKey(MTCoreConstants.Protocol.KEY_PROTOCOL)) {
                b(context);
                return;
            }
            if (r.r(context) == 0) {
                MTCommonLog.d("MTReportBusiness", "report uid is 0");
                return;
            }
            if (!a(context, bundle)) {
                MTCommonLog.d("MTReportBusiness", "appkey is not same, cache first, not report");
                c(context, bundle);
                return;
            }
            FileUtils.deleteCacheFileMaximum(a(context), f1235d);
            MTReporter mTReporter = (MTReporter) bundle.getParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL);
            JSONObject jSONObject = new JSONObject(mTReporter.getContent());
            jSONObject.put("type", mTReporter.getType());
            JSONObject jSONObjectA = a(context, jSONObject);
            if (jSONObjectA == null) {
                return;
            }
            File fileB = b(context, jSONObjectA.toString());
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObjectA);
            if (a(context, mTReporter.getType(), jSONArray, new File[]{fileB}) == 0) {
                b(context);
            }
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("report failed "), "MTReportBusiness");
        }
    }

    public static p a() {
        if (f1239i == null) {
            synchronized (p.class) {
                f1239i = new p();
            }
        }
        return f1239i;
    }

    public final void a(String str) {
        this.f1242c = str;
        MTCommonLog.d("MTReportBusiness", "set last success report address: " + str);
    }

    public final int a(Context context, String str, JSONArray jSONArray, File[] fileArr) {
        int i6;
        String str2 = "report success encrypt:";
        String str3 = "/v4/report";
        String str4 = "/v3/sgm/report";
        String str5 = "sgm";
        try {
        } catch (Throwable th) {
            th = th;
            str5 = "MTReportBusiness";
            i6 = -1;
        }
        if (!SystemUtil.isNetworkConnecting(context)) {
            MTCommonLog.d("MTReportBusiness", "can't report, network is disConnected");
            return -1;
        }
        long jR = r.r(context);
        if (jR == 0) {
            MTCommonLog.d("MTReportBusiness", "uid is 0");
            return -1;
        }
        List<String> httpAddress = MTCoreGlobal.getHttpAddress(context);
        if (httpAddress.isEmpty()) {
            MTCommonLog.d("MTReportBusiness", "there are no report url");
            return -1;
        }
        try {
        } catch (Throwable th2) {
            th = th2;
        }
        if (jSONArray != null && jSONArray.length() != 0) {
            String strB = b();
            i6 = -1;
            try {
                MTCommonLog.d("MTReportBusiness", "last success address: " + strB);
                ArrayList arrayList = new ArrayList();
                if (!TextUtils.isEmpty(strB) && httpAddress.contains(strB)) {
                    arrayList.add(strB);
                }
                for (String str6 : httpAddress) {
                    if (!str6.equals(strB)) {
                        arrayList.add(str6);
                    }
                }
                for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                    jSONArray.getJSONObject(i9).put("uid", jR);
                }
                byte[] bArrZip = GZipUtil.zip(jSONArray.toString().getBytes(MTCommonConstants.UTF_8));
                String md5AesKey = AESUtil.getMd5AesKey(AESUtil.generateSeed());
                String str7 = "report failed code:";
                String iv = AESUtil.getIv(new String("\u000b\r\u0012PRQRVRWRT\u00032\tC".getBytes(), Charset.forName("UTF-8")), 'b');
                int encryptType = MTGlobal.getEncryptType();
                byte[] bArrEncryptBytes = SM4Util.encryptBytes(bArrZip, md5AesKey, iv);
                String str8 = "MTReportBusiness";
                try {
                    String str9 = "Basic " + Base64.encodeToString((jR + ":" + StringUtil.getBytesSHA1(jR + StringUtil.getMD5Utf8(r.g(context)) + StringUtil.getBytesSHA1(bArrEncryptBytes)) + ":" + md5AesKey).getBytes(), 10);
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.addAll(arrayList);
                    int size = arrayList2.size();
                    int i10 = 0;
                    while (i10 < size) {
                        Object obj = arrayList2.get(i10);
                        i10++;
                        String str10 = (String) obj;
                        String str11 = (!str.contains(str5) || str10.contains(str4)) ? str10 : str10 + str4;
                        if (!str.contains(str5) && !str11.contains(str3)) {
                            str11 = str11 + str3;
                        }
                        int iA = t.a(context, str11, str9, bArrEncryptBytes, new HashMap());
                        byte[] bArr = bArrEncryptBytes;
                        String str12 = str3;
                        String str13 = str4;
                        String str14 = str5;
                        if (iA == 200) {
                            try {
                                str5 = str8;
                                try {
                                    MTCommonLog.debug(str5, str2 + encryptType + ", url:" + str11 + ", fileName:" + Arrays.toString(fileArr) + jSONArray);
                                    MTCommonLog.d(str5, str2 + encryptType + ", url:" + str11 + ", type:" + str);
                                    a(str10);
                                    for (File file : fileArr) {
                                        if (file.exists()) {
                                            boolean zDelete = file.delete();
                                            StringBuilder sb = new StringBuilder();
                                            sb.append("delete ");
                                            sb.append(zDelete ? FirebaseAnalytics.Param.SUCCESS : "failed");
                                            sb.append(" file:");
                                            sb.append(file.getAbsolutePath());
                                            MTCommonLog.d(str5, sb.toString());
                                        }
                                    }
                                    return 0;
                                } catch (Throwable th3) {
                                    th = th3;
                                    q2.x.j(th, new StringBuilder("report failed "), str5);
                                    return i6;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                str5 = str8;
                                q2.x.j(th, new StringBuilder("report failed "), str5);
                                return i6;
                            }
                        }
                        String str15 = str8;
                        int i11 = encryptType;
                        StringBuilder sb2 = new StringBuilder();
                        String str16 = str2;
                        String str17 = str7;
                        sb2.append(str17);
                        sb2.append(iA);
                        sb2.append(", url:");
                        sb2.append(str11);
                        sb2.append(", fileName:");
                        sb2.append(Arrays.toString(fileArr));
                        sb2.append(jSONArray);
                        MTCommonLog.debug(str15, sb2.toString());
                        MTCommonLog.d(str15, str17 + iA + ", url:" + str11 + ", type:" + str);
                        str7 = str17;
                        encryptType = i11;
                        bArrEncryptBytes = bArr;
                        str2 = str16;
                        str3 = str12;
                        str4 = str13;
                        str8 = str15;
                        str5 = str14;
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Throwable th6) {
                th = th6;
                str5 = "MTReportBusiness";
            }
            return i6;
        }
        MTCommonLog.e("MTReportBusiness", "reportJsonArr is null or empty");
        return -1;
    }

    public File b(Context context, String str) {
        Throwable th;
        FileOutputStream fileOutputStream;
        try {
            String str2 = a(context) + File.separator + System.currentTimeMillis();
            MTCommonLog.d("MTReportBusiness", "save file:" + str2);
            File file = new File(str2);
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                return null;
            }
            if (!file.exists() && !file.createNewFile()) {
                return null;
            }
            fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(str.getBytes(MTCommonConstants.UTF_8));
                try {
                    fileOutputStream.close();
                } catch (Throwable unused) {
                }
                return file;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
        try {
            MTCommonLog.w("MTReportBusiness", "saveReportContent failed " + th.getMessage());
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Throwable unused2) {
                }
            }
            return null;
        } catch (Throwable th4) {
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Throwable unused3) {
                }
            }
            throw th4;
        }
    }

    public synchronized void b(Context context) {
        a(context, 0);
    }

    public final void b(Context context, List<File> list, List<JSONObject> list2, int i6) {
        if (list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (int i9 = 0; i9 < list.size(); i9++) {
            File file = list.get(i9);
            JSONObject jSONObject = list2.get(i9);
            arrayList3.add(file);
            arrayList4.add(jSONObject);
            if (arrayList4.size() >= 100) {
                arrayList.add(new ArrayList(arrayList3));
                arrayList2.add(new ArrayList(arrayList4));
                arrayList3.clear();
                arrayList4.clear();
            }
        }
        if (!arrayList4.isEmpty()) {
            arrayList.add(new ArrayList(arrayList3));
            arrayList2.add(new ArrayList(arrayList4));
        }
        a(context, arrayList, arrayList2, i6);
    }

    public final JSONObject a(Context context, JSONObject jSONObject) {
        try {
            jSONObject.put("itime", System.currentTimeMillis() / 1000);
            jSONObject.put("account_id", "");
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject);
            jSONObject2.put(FirebaseAnalytics.Param.CONTENT, jSONArray);
            jSONObject2.put(MTPushConstants.PlatformNode.KEY_PLATFORM, "a");
            jSONObject2.put("uid", r.r(context));
            jSONObject2.put("app_version", MTGlobal.getAppVersionName(context));
            jSONObject2.put("app_key", MTGlobal.getAppKey(context));
            jSONObject2.put("channel", MTGlobal.getAppChannel(context));
            for (MTObserver mTObserver : MTObservable.getInstance().observeQueue) {
                if (mTObserver.isSdk() && !TextUtils.isEmpty(mTObserver.getSdkName()) && !TextUtils.isEmpty(mTObserver.getSdkVersion())) {
                    jSONObject2.put(mTObserver.getSdkName(), mTObserver.getSdkVersion());
                }
            }
            return jSONObject2;
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("prepareReportJson failed "), "MTReportBusiness");
            return null;
        }
    }

    public final synchronized void a(Context context, int i6) {
        String strA;
        int iNextInt;
        if (this.f1240a) {
            return;
        }
        MTCommonLog.d("MTReportBusiness", "report cache begin, retryCount: " + i6);
        this.f1240a = true;
        try {
            strA = a(context);
        } catch (Throwable th) {
            try {
                MTCommonLog.w("MTReportBusiness", "reportCache failed: " + th.getMessage());
            } finally {
                this.f1240a = false;
            }
        }
        if (TextUtils.isEmpty(strA)) {
            MTCommonLog.d("MTReportBusiness", "there are no report cache");
            return;
        }
        File file = new File(strA);
        if (!file.exists()) {
            MTCommonLog.d("MTReportBusiness", "there are no report cache");
            return;
        }
        FileUtils.deleteCacheFileMaximum(strA, f1235d);
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length != 0) {
            List<File> listAsList = Arrays.asList(fileArrListFiles);
            Collections.sort(listAsList, new a(this));
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (File file2 : listAsList) {
                if (file2.exists()) {
                    JSONObject jSONObjectA = a(file2);
                    if (jSONObjectA == null) {
                        MTCommonLog.d("MTReportBusiness", "readCacheFile failed for file: " + file2.getAbsolutePath());
                    } else {
                        arrayList.add(file2);
                        arrayList2.add(jSONObjectA);
                    }
                } else {
                    MTCommonLog.d("MTReportBusiness", "cacheFile [" + file2.getAbsolutePath() + "] is no exist");
                }
            }
            if (arrayList.isEmpty()) {
                MTCommonLog.d("MTReportBusiness", "no valid cache files");
                return;
            }
            if (i6 > 0) {
                iNextInt = h.nextInt(arrayList.size());
                MTCommonLog.d("MTReportBusiness", "retry " + i6 + ", randomly selected file index: " + iNextInt);
            } else {
                iNextInt = 0;
            }
            File file3 = (File) arrayList.get(iNextInt);
            JSONObject jSONObject = (JSONObject) arrayList2.get(iNextInt);
            String strOptString = jSONObject.optString("type");
            MTCommonLog.d("MTReportBusiness", "attempting to report first file: " + file3.getAbsolutePath());
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject);
            if (a(context, strOptString, jSONArray, new File[]{file3}) == 0) {
                MTCommonLog.d("MTReportBusiness", "first report success, start batch reporting remaining data");
                arrayList.remove(iNextInt);
                arrayList2.remove(iNextInt);
                if (!arrayList.isEmpty()) {
                    b(context, arrayList, arrayList2, i6);
                }
            } else {
                MTCommonLog.w("MTReportBusiness", "first report failed, scheduling retry. retryCount: " + i6);
                if (i6 < f1237f) {
                    int i9 = f1236e[i6];
                    MTCommonLog.d("MTReportBusiness", "scheduling retry in " + i9 + " seconds");
                    f1238g.schedule(new b(context, i6), (long) i9, TimeUnit.SECONDS);
                } else {
                    MTCommonLog.w("MTReportBusiness", "max retry count reached, giving up");
                }
            }
            this.f1240a = false;
            MTCommonLog.d("MTReportBusiness", "report cache finish");
            return;
        }
        MTCommonLog.d("MTReportBusiness", "there are no report cache");
    }

    public final JSONObject a(File file) {
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[fileInputStream.available()];
                fileInputStream.read(bArr);
                String str = new String(bArr, MTCommonConstants.UTF_8);
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                return new JSONObject(str);
            } catch (Throwable th) {
                th = th;
                try {
                    MTCommonLog.w("MTReportBusiness", "readCacheFile failed: " + th.getMessage());
                    return null;
                } finally {
                    Utils.closeQuietly(fileInputStream);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
    }

    public final int a(Context context, List<JSONObject> list, List<File> list2) {
        if (list == null || list.isEmpty()) {
            return 0;
        }
        try {
            String strOptString = list.get(0).optString("type");
            JSONArray jSONArray = new JSONArray();
            Iterator<JSONObject> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
            return a(context, strOptString, jSONArray, (File[]) list2.toArray(new File[list2.size()]));
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("batch report failed: "), "MTReportBusiness");
            return -1;
        }
    }

    /* JADX WARN: Finally extract failed */
    public final void a(Context context, List<List<File>> list, List<List<JSONObject>> list2, int i6) {
        int iIncrementAndGet;
        AtomicInteger atomicInteger = new AtomicInteger(0);
        AtomicInteger atomicInteger2 = new AtomicInteger(0);
        int size = list.size();
        MTCommonLog.d("MTReportBusiness", "Starting parallel batch reports, total batches: " + size + ", currentRetryCount: " + i6);
        int i9 = 0;
        while (i9 < size) {
            List<File> list3 = list.get(i9);
            List<JSONObject> list4 = list2.get(i9);
            boolean z5 = true;
            try {
                MTCommonLog.d("MTReportBusiness", "Executing batch " + i9 + " with " + list4.size() + " items");
                if (a(context, list4, list3) != 0) {
                    MTCommonLog.w("MTReportBusiness", "Batch " + i9 + " failed");
                    atomicInteger2.incrementAndGet();
                } else {
                    MTCommonLog.d("MTReportBusiness", "Batch " + i9 + " succeeded");
                }
            } finally {
                try {
                    if (iIncrementAndGet == size) {
                        a(context, z5, i6);
                        i9++;
                    } else {
                        i9++;
                    }
                } catch (Throwable th) {
                }
            }
            if (atomicInteger.incrementAndGet() != size) {
                i9++;
            } else {
                if (atomicInteger2.get() <= 0) {
                    z5 = false;
                }
                a(context, z5, i6);
                i9++;
            }
        }
    }

    public final void a(Context context, boolean z5, int i6) {
        if (!z5) {
            MTCommonLog.d("MTReportBusiness", "All batch reports succeeded");
            return;
        }
        MTCommonLog.w("MTReportBusiness", "Some batch reports failed, will retry through reportCacheWithRetry");
        if (i6 < f1237f) {
            int i9 = f1236e[i6];
            MTCommonLog.d("MTReportBusiness", "Scheduling retry through reportCacheWithRetry in " + i9 + " seconds, retryCount: " + (i6 + 1));
            f1238g.schedule(new c(context, i6), (long) i9, TimeUnit.SECONDS);
            return;
        }
        MTCommonLog.w("MTReportBusiness", "Max retry count reached for batch reports, giving up");
    }

    public final boolean a(Context context, Bundle bundle) {
        String appkey = ((MTReporter) bundle.getParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL)).getAppkey();
        String appKey = MTGlobal.getAppKey(context);
        return TextUtils.isEmpty(appKey) || TextUtils.isEmpty(appkey) || appkey.equals(appKey);
    }

    public String a(Context context, String str) {
        if (TextUtils.isEmpty(this.f1241b)) {
            String absolutePath = context.getFilesDir().getAbsolutePath();
            StringBuilder sb = new StringBuilder();
            sb.append(absolutePath);
            String str2 = File.separator;
            sb.append(str2);
            sb.append("com_engagelab_privates_core");
            sb.append(str2);
            this.f1241b = sb.toString();
        }
        return q2.x.h(new StringBuilder(), this.f1241b, str);
    }
}
