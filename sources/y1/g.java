package y1;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import androidx.fragment.app.m1;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import q2.g0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g implements y5.d {
    public static final void a(u7.a aVar, u7.c cVar, String str) {
        u7.d.h.getClass();
        u7.d.f5519j.fine(cVar.f5513b + ' ' + String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1)) + ": " + aVar.f5506a);
    }

    public static void b(String str, String str2, Bundle bundle, o oVar) {
        d7.g.f("key", str);
        d7.g.f("value", str2);
        int iE = m1.e(p(str));
        if (iE == 0) {
            bundle.putCharSequence(str, str2);
            return;
        }
        p pVar = p.f6142a;
        if (iE == 1) {
            oVar.a(pVar, str, str2);
        } else {
            if (iE != 2) {
                return;
            }
            oVar.a(pVar, str, str2);
            bundle.putCharSequence(str, str2);
        }
    }

    public static r6.d c(String str, String str2, Bundle bundle, o oVar) {
        int iE = m1.e(p(str));
        if (iE != 0) {
            p pVar = p.f6142a;
            if (iE == 1) {
                if (oVar == null) {
                    oVar = new o();
                }
                oVar.a(pVar, str, str2);
            } else if (iE == 2) {
                if (oVar == null) {
                    oVar = new o();
                }
                if (bundle == null) {
                    bundle = new Bundle();
                }
                oVar.a(pVar, str, str2);
                bundle.putCharSequence(str, str2);
            }
        } else {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putCharSequence(str, str2);
        }
        return new r6.d(bundle, oVar);
    }

    public static int d(boolean[] zArr, int i6, int[] iArr, boolean z5) {
        int i9 = 0;
        for (int i10 : iArr) {
            int i11 = 0;
            while (i11 < i10) {
                zArr[i6] = z5;
                i11++;
                i6++;
            }
            i9 += i10;
            z5 = !z5;
        }
        return i9;
    }

    public static void e(String str) {
        if (str.length() <= 0) {
            throw new IllegalArgumentException("name is empty");
        }
        int length = str.length();
        for (int i6 = 0; i6 < length; i6++) {
            char cCharAt = str.charAt(i6);
            if ('!' > cCharAt || cCharAt >= 127) {
                throw new IllegalArgumentException(s7.b.h("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i6), str).toString());
            }
        }
    }

    public static void f(String str, String str2) {
        int length = str.length();
        for (int i6 = 0; i6 < length; i6++) {
            char cCharAt = str.charAt(i6);
            if (cCharAt != '\t' && (' ' > cCharAt || cCharAt >= 127)) {
                StringBuilder sb = new StringBuilder();
                sb.append(s7.b.h("Unexpected char %#04x at %d in %s value", Integer.valueOf(cCharAt), Integer.valueOf(i6), str2));
                sb.append(s7.b.p(str2) ? "" : ": ".concat(str));
                throw new IllegalArgumentException(sb.toString().toString());
            }
        }
    }

    public static void g(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static boolean h(File file, Resources resources, int i6) throws Throwable {
        InputStream inputStreamOpenRawResource;
        try {
            inputStreamOpenRawResource = resources.openRawResource(i6);
            try {
                boolean zI = i(file, inputStreamOpenRawResource);
                g(inputStreamOpenRawResource);
                return zI;
            } catch (Throwable th) {
                th = th;
                g(inputStreamOpenRawResource);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStreamOpenRawResource = null;
        }
    }

    public static boolean i(File file, InputStream inputStream) throws Throwable {
        FileOutputStream fileOutputStream;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, false);
            } catch (IOException e9) {
                e = e9;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i6 = inputStream.read(bArr);
                if (i6 == -1) {
                    g(fileOutputStream);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    return true;
                }
                fileOutputStream.write(bArr, 0, i6);
            }
        } catch (IOException e10) {
            e = e10;
            fileOutputStream2 = fileOutputStream;
            Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
            g(fileOutputStream2);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            g(fileOutputStream2);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            throw th;
        }
    }

    public static final String l(long j3) {
        String str;
        if (j3 <= -999500000) {
            str = ((j3 - ((long) 500000000)) / ((long) 1000000000)) + " s ";
        } else if (j3 <= -999500) {
            str = ((j3 - ((long) 500000)) / ((long) 1000000)) + " ms";
        } else if (j3 <= 0) {
            str = ((j3 - ((long) 500)) / ((long) 1000)) + " µs";
        } else if (j3 < 999500) {
            str = ((j3 + ((long) 500)) / ((long) 1000)) + " µs";
        } else if (j3 < 999500000) {
            str = ((j3 + ((long) 500000)) / ((long) 1000000)) + " ms";
        } else {
            str = ((j3 + ((long) 500000000)) / ((long) 1000000000)) + " s ";
        }
        return String.format("%6s", Arrays.copyOf(new Object[]{str}, 1));
    }

    public static Set n() {
        try {
            Object objInvoke = Class.forName("android.text.EmojiConsistency").getMethod("getEmojiConsistencySet", null).invoke(null, null);
            if (objInvoke == null) {
                return Collections.EMPTY_SET;
            }
            Set set = (Set) objInvoke;
            Iterator it = set.iterator();
            while (it.hasNext()) {
                if (!(it.next() instanceof int[])) {
                    return Collections.EMPTY_SET;
                }
            }
            return set;
        } catch (Throwable unused) {
            return Collections.EMPTY_SET;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object o(java.lang.String r3, android.os.Bundle r4, y1.o r5) {
        /*
            java.lang.String r0 = "key"
            d7.g.f(r0, r3)
            r0 = 0
            if (r5 == 0) goto L20
            java.util.LinkedHashMap r5 = r5.f6141a
            y1.p r1 = y1.p.f6142a
            boolean r2 = r5.containsKey(r1)
            if (r2 != 0) goto L13
            goto L20
        L13:
            java.lang.Object r5 = r5.get(r1)
            java.util.Map r5 = (java.util.Map) r5
            if (r5 == 0) goto L20
            java.lang.Object r5 = r5.get(r3)
            goto L21
        L20:
            r5 = r0
        L21:
            if (r4 == 0) goto L27
            java.lang.CharSequence r0 = r4.getCharSequence(r3)
        L27:
            if (r5 != 0) goto L2a
            return r0
        L2a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: y1.g.o(java.lang.String, android.os.Bundle, y1.o):java.lang.Object");
    }

    public static int p(String str) {
        d7.g.f("parameter", str);
        Map map = o.f6140b;
        p pVar = p.f6142a;
        r6.d dVar = (r6.d) map.get(pVar);
        Set set = dVar != null ? (Set) dVar.f4993a : null;
        r6.d dVar2 = (r6.d) map.get(pVar);
        Set set2 = dVar2 != null ? (Set) dVar2.f4994b : null;
        if (set == null || !set.contains(str)) {
            return (set2 == null || !set2.contains(str)) ? 1 : 3;
        }
        return 2;
    }

    public static File q(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i6 = 0; i6 < 100; i6++) {
            File file = new File(cacheDir, str + i6);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    public static boolean r(String str) {
        k1.b bVar = k1.k.f3504a;
        Set<k1.d> setUnmodifiableSet = Collections.unmodifiableSet(k1.c.f3495c);
        HashSet hashSet = new HashSet();
        for (k1.d dVar : setUnmodifiableSet) {
            if (((k1.c) dVar).f3496a.equals(str)) {
                hashSet.add(dVar);
            }
        }
        if (hashSet.isEmpty()) {
            throw new RuntimeException("Unknown feature ".concat(str));
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            k1.c cVar = (k1.c) ((k1.d) it.next());
            if (cVar.a() || cVar.b()) {
                return true;
            }
        }
        return false;
    }

    public static MappedByteBuffer s(Context context, Uri uri) {
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        try {
            parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r", null);
        } catch (IOException unused) {
        }
        if (parcelFileDescriptorOpenFileDescriptor == null) {
            if (parcelFileDescriptorOpenFileDescriptor != null) {
                parcelFileDescriptorOpenFileDescriptor.close();
                return null;
            }
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
            try {
                FileChannel channel = fileInputStream.getChannel();
                MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                fileInputStream.close();
                parcelFileDescriptorOpenFileDescriptor.close();
                return map;
            } finally {
            }
        } finally {
        }
    }

    public static r7.k t(String... strArr) {
        if (strArr.length % 2 != 0) {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        String[] strArr2 = (String[]) strArr.clone();
        int length = strArr2.length;
        int i6 = 0;
        for (int i9 = 0; i9 < length; i9++) {
            String str = strArr2[i9];
            if (str == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            strArr2[i9] = k7.g.P(str).toString();
        }
        int iM = l2.e.m(0, strArr2.length - 1, 2);
        if (iM >= 0) {
            while (true) {
                String str2 = strArr2[i6];
                String str3 = strArr2[i6 + 1];
                e(str2);
                f(str3, str2);
                if (i6 == iM) {
                    break;
                }
                i6 += 2;
            }
        }
        return new r7.k(strArr2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0095 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #3 {, blocks: (B:4:0x0003, B:8:0x0028, B:9:0x002b, B:45:0x0095, B:14:0x0039, B:32:0x0069, B:33:0x006c, B:37:0x007e, B:36:0x0077, B:26:0x0056, B:27:0x0059, B:43:0x0090, B:38:0x007f, B:39:0x0082), top: B:56:0x0003, inners: #6, #7 }] */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final synchronized y1.r u() {
        /*
            java.lang.Class<y1.g> r0 = y1.g.class
            monitor-enter(r0)
            android.content.Context r1 = x1.r.a()     // Catch: java.lang.Throwable -> L35
            r2 = 0
            java.lang.String r3 = "AppEventsLogger.persistedevents"
            java.io.FileInputStream r3 = r1.openFileInput(r3)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4a java.io.FileNotFoundException -> L4d
            java.lang.String r4 = "context.openFileInput(PERSISTED_EVENTS_FILENAME)"
            d7.g.e(r4, r3)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4a java.io.FileNotFoundException -> L4d
            y1.f r4 = new y1.f     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4a java.io.FileNotFoundException -> L4d
            java.io.BufferedInputStream r5 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4a java.io.FileNotFoundException -> L4d
            r5.<init>(r3)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4a java.io.FileNotFoundException -> L4d
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4a java.io.FileNotFoundException -> L4d
            java.lang.Object r3 = r4.readObject()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44 java.io.FileNotFoundException -> L7f
            java.lang.String r5 = "null cannot be cast to non-null type com.facebook.appevents.PersistedEvents"
            d7.g.d(r5, r3)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44 java.io.FileNotFoundException -> L7f
            y1.r r3 = (y1.r) r3     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44 java.io.FileNotFoundException -> L7f
            q2.g0.d(r4)     // Catch: java.lang.Throwable -> L35
            java.lang.String r2 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r1.getFileStreamPath(r2)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L38
            r1.delete()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L38
            goto L40
        L35:
            r1 = move-exception
            goto L9c
        L38:
            r1 = move-exception
            java.lang.String r2 = "y1.g"
            java.lang.String r4 = "Got unexpected exception when removing events file: "
            android.util.Log.w(r2, r4, r1)     // Catch: java.lang.Throwable -> L35
        L40:
            r2 = r3
            goto L93
        L42:
            r2 = move-exception
            goto L69
        L44:
            r3 = move-exception
            goto L4f
        L46:
            r3 = move-exception
            r4 = r2
            r2 = r3
            goto L69
        L4a:
            r3 = move-exception
            r4 = r2
            goto L4f
        L4d:
            r4 = r2
            goto L7f
        L4f:
            java.lang.String r5 = "y1.g"
            java.lang.String r6 = "Got unexpected exception while reading events: "
            android.util.Log.w(r5, r6, r3)     // Catch: java.lang.Throwable -> L42
            q2.g0.d(r4)     // Catch: java.lang.Throwable -> L35
            java.lang.String r3 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r1.getFileStreamPath(r3)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L63
            r1.delete()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L63
            goto L93
        L63:
            r1 = move-exception
            java.lang.String r3 = "y1.g"
        L66:
            java.lang.String r4 = "Got unexpected exception when removing events file: "
            goto L90
        L69:
            q2.g0.d(r4)     // Catch: java.lang.Throwable -> L35
            java.lang.String r3 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r1.getFileStreamPath(r3)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L76
            r1.delete()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L76
            goto L7e
        L76:
            r1 = move-exception
            java.lang.String r3 = "y1.g"
            java.lang.String r4 = "Got unexpected exception when removing events file: "
            android.util.Log.w(r3, r4, r1)     // Catch: java.lang.Throwable -> L35
        L7e:
            throw r2     // Catch: java.lang.Throwable -> L35
        L7f:
            q2.g0.d(r4)     // Catch: java.lang.Throwable -> L35
            java.lang.String r3 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r1.getFileStreamPath(r3)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8c
            r1.delete()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8c
            goto L93
        L8c:
            r1 = move-exception
            java.lang.String r3 = "y1.g"
            goto L66
        L90:
            android.util.Log.w(r3, r4, r1)     // Catch: java.lang.Throwable -> L35
        L93:
            if (r2 != 0) goto L9a
            y1.r r2 = new y1.r     // Catch: java.lang.Throwable -> L35
            r2.<init>()     // Catch: java.lang.Throwable -> L35
        L9a:
            monitor-exit(r0)
            return r2
        L9c:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L35
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: y1.g.u():y1.r");
    }

    public static final void v(r rVar) {
        ObjectOutputStream objectOutputStream;
        Context contextA = x1.r.a();
        ObjectOutputStream objectOutputStream2 = null;
        try {
            objectOutputStream = new ObjectOutputStream(new BufferedOutputStream(contextA.openFileOutput("AppEventsLogger.persistedevents", 0)));
        } catch (Throwable th) {
            th = th;
        }
        try {
            objectOutputStream.writeObject(rVar);
            g0.d(objectOutputStream);
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream2 = objectOutputStream;
            try {
                Log.w("y1.g", "Got unexpected exception while persisting events: ", th);
                try {
                    contextA.getFileStreamPath("AppEventsLogger.persistedevents").delete();
                } catch (Exception unused) {
                }
            } finally {
                g0.d(objectOutputStream2);
            }
        }
    }

    @Override // y5.d
    public b6.b j(String str, int i6, EnumMap enumMap) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        int iM = m();
        y5.a aVar = y5.a.f6257f;
        if (enumMap.containsKey(aVar)) {
            iM = Integer.parseInt(enumMap.get(aVar).toString());
        }
        boolean[] zArrK = k(str);
        int length = zArrK.length;
        int i9 = iM + length;
        int iMax = Math.max(200, i9);
        int iMax2 = Math.max(1, 200);
        int i10 = iMax / i9;
        int i11 = (iMax - (length * i10)) / 2;
        b6.b bVar = new b6.b(iMax, iMax2);
        int i12 = 0;
        while (i12 < length) {
            if (zArrK[i12]) {
                bVar.c(i11, 0, i10, iMax2);
            }
            i12++;
            i11 += i10;
        }
        return bVar;
    }

    public abstract boolean[] k(String str);

    public int m() {
        return 10;
    }
}
