package com.google.android.gms.internal.measurement;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.Spannable;
import android.text.SpannableString;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.cardview.widget.CardView;
import com.YaarWin.app.R;
import com.engagelab.privates.core.api.WakeMessage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.TreeMap;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class y4 implements x4, k.a, h3.b, p0.o {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static y4 f1988d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1989a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f1990b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f1991c;

    public /* synthetic */ y4(int i6, Object obj) {
        this.f1989a = i6;
        this.f1990b = obj;
        this.f1991c = null;
    }

    public static synchronized void I() {
        Context context;
        try {
            y4 y4Var = f1988d;
            if (y4Var != null && (context = (Context) y4Var.f1990b) != null && ((z4) y4Var.f1991c) != null) {
                context.getContentResolver().unregisterContentObserver((z4) f1988d.f1991c);
            }
            f1988d = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0046 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0041 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.internal.measurement.y4 d(android.content.Context r5) {
        /*
            java.lang.String r0 = "generatefid.lock"
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch: java.nio.channels.OverlappingFileLockException -> L30 java.lang.Error -> L34 java.io.IOException -> L36
            java.io.File r5 = r5.getFilesDir()     // Catch: java.nio.channels.OverlappingFileLockException -> L30 java.lang.Error -> L34 java.io.IOException -> L36
            r2.<init>(r5, r0)     // Catch: java.nio.channels.OverlappingFileLockException -> L30 java.lang.Error -> L34 java.io.IOException -> L36
            java.io.RandomAccessFile r5 = new java.io.RandomAccessFile     // Catch: java.nio.channels.OverlappingFileLockException -> L30 java.lang.Error -> L34 java.io.IOException -> L36
            java.lang.String r0 = "rw"
            r5.<init>(r2, r0)     // Catch: java.nio.channels.OverlappingFileLockException -> L30 java.lang.Error -> L34 java.io.IOException -> L36
            java.nio.channels.FileChannel r5 = r5.getChannel()     // Catch: java.nio.channels.OverlappingFileLockException -> L30 java.lang.Error -> L34 java.io.IOException -> L36
            java.nio.channels.FileLock r0 = r5.lock()     // Catch: java.nio.channels.OverlappingFileLockException -> L29 java.lang.Error -> L2c java.io.IOException -> L2e
            com.google.android.gms.internal.measurement.y4 r2 = new com.google.android.gms.internal.measurement.y4     // Catch: java.nio.channels.OverlappingFileLockException -> L23 java.lang.Error -> L25 java.io.IOException -> L27
            r3 = 15
            r2.<init>(r5, r3, r0)     // Catch: java.nio.channels.OverlappingFileLockException -> L23 java.lang.Error -> L25 java.io.IOException -> L27
            return r2
        L23:
            r2 = move-exception
            goto L38
        L25:
            r2 = move-exception
            goto L38
        L27:
            r2 = move-exception
            goto L38
        L29:
            r2 = move-exception
        L2a:
            r0 = r1
            goto L38
        L2c:
            r2 = move-exception
            goto L2a
        L2e:
            r2 = move-exception
            goto L2a
        L30:
            r2 = move-exception
        L31:
            r5 = r1
            r0 = r5
            goto L38
        L34:
            r2 = move-exception
            goto L31
        L36:
            r2 = move-exception
            goto L31
        L38:
            java.lang.String r3 = "CrossProcessLock"
            java.lang.String r4 = "encountered error while creating and acquiring the lock, ignoring"
            android.util.Log.e(r3, r4, r2)
            if (r0 == 0) goto L44
            r0.release()     // Catch: java.io.IOException -> L44
        L44:
            if (r5 == 0) goto L49
            r5.close()     // Catch: java.io.IOException -> L49
        L49:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.y4.d(android.content.Context):com.google.android.gms.internal.measurement.y4");
    }

    public static void x(File file) {
        try {
            File[] fileArrListFiles = file.listFiles(new m1.g(0));
            if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                int i6 = 0;
                long length = 0;
                for (File file2 : fileArrListFiles) {
                    length += file2.length();
                }
                if (length <= 524288000) {
                    return;
                }
                Arrays.sort(fileArrListFiles, Comparator.comparingLong(new m1.h()));
                int length2 = fileArrListFiles.length;
                int i9 = 0;
                int i10 = 0;
                while (i9 < length2) {
                    File file3 = fileArrListFiles[i9];
                    if (length <= 524288000) {
                        break;
                    }
                    long length3 = file3.length();
                    File file4 = new File(file, file3.getName().substring(i6, r14.length() - 4) + ".meta");
                    if (file3.delete()) {
                        length -= length3;
                        file4.delete();
                        i10++;
                    }
                    i9++;
                    i6 = 0;
                }
                if (i10 > 0) {
                    Log.d("LruEvictor", "evicted=" + i10 + " dir=" + file.getName() + " size=" + length);
                }
            }
        } catch (Throwable th) {
            Log.w("LruEvictor", "evict failed", th);
        }
    }

    public String A(String str) {
        String str2 = (String) this.f1991c;
        Resources resources = (Resources) this.f1990b;
        int identifier = resources.getIdentifier(str, "string", str2);
        if (identifier == 0) {
            return null;
        }
        return resources.getString(identifier);
    }

    public void B(i5.b bVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", bVar.f3211a);
            jSONObject.put("Status", androidx.fragment.app.m1.e(bVar.f3212b));
            jSONObject.put("AuthToken", bVar.f3213c);
            jSONObject.put("RefreshToken", bVar.f3214d);
            jSONObject.put("TokenCreationEpochInSecs", bVar.f3216f);
            jSONObject.put("ExpiresInSecs", bVar.f3215e);
            jSONObject.put("FisError", bVar.f3217g);
            t4.g gVar = (t4.g) this.f1991c;
            gVar.a();
            File fileCreateTempFile = File.createTempFile("PersistedInstallation", "tmp", gVar.f5320a.getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (fileCreateTempFile.renameTo(z())) {
            } else {
                throw new IOException("unable to rename the tmpfile to PersistedInstallation");
            }
        } catch (IOException | JSONException unused) {
        }
    }

    public void C(g0.h hVar) {
        f3.o oVar = (f3.o) this.f1991c;
        k1.h hVar2 = (k1.h) this.f1990b;
        int i6 = hVar.f2836b;
        if (i6 != 0) {
            oVar.execute(new androidx.fragment.app.p(hVar2, i6));
        } else {
            oVar.execute(new s4.b(hVar2, 1, hVar.f2835a));
        }
    }

    public i5.b D() {
        JSONObject jSONObject;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(z());
            while (true) {
                try {
                    int i6 = fileInputStream.read(bArr, 0, 16384);
                    if (i6 < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i6);
                } finally {
                }
            }
            jSONObject = new JSONObject(byteArrayOutputStream.toString());
            fileInputStream.close();
        } catch (IOException | JSONException unused) {
            jSONObject = new JSONObject();
        }
        String strOptString = jSONObject.optString("Fid", null);
        int iOptInt = jSONObject.optInt("Status", 0);
        String strOptString2 = jSONObject.optString("AuthToken", null);
        String strOptString3 = jSONObject.optString("RefreshToken", null);
        long jOptLong = jSONObject.optLong("TokenCreationEpochInSecs", 0L);
        long jOptLong2 = jSONObject.optLong("ExpiresInSecs", 0L);
        String strOptString4 = jSONObject.optString("FisError", null);
        int i9 = androidx.fragment.app.m1.h(5)[iOptInt];
        if (i9 == 0) {
            throw new NullPointerException("Null registrationStatus");
        }
        String str = i9 == 0 ? " registrationStatus" : "";
        if (str.isEmpty()) {
            return new i5.b(jOptLong2, i9, jOptLong, strOptString, strOptString2, strOptString3, strOptString4);
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }

    public void E() {
        try {
            ((FileLock) this.f1991c).release();
            ((FileChannel) this.f1990b).close();
        } catch (IOException e9) {
            Log.e("CrossProcessLock", "encountered error while releasing, ignoring", e9);
        }
    }

    public void F(int i6, int i9, int i10, int i11) {
        CardView cardView = (CardView) this.f1991c;
        cardView.f348d.set(i6, i9, i10, i11);
        Rect rect = cardView.f347c;
        super/*android.widget.FrameLayout*/.setPadding(i6 + rect.left, i9 + rect.top, i10 + rect.right, i11 + rect.bottom);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0c62  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x0c66  */
    /* JADX WARN: Type inference failed for: r13v0, types: [com.google.firebase.messaging.y] */
    /* JADX WARN: Type inference failed for: r13v114, types: [com.google.android.gms.internal.measurement.n] */
    /* JADX WARN: Type inference failed for: r13v146, types: [com.google.android.gms.internal.measurement.n] */
    /* JADX WARN: Type inference failed for: r14v102, types: [com.google.android.gms.internal.measurement.n] */
    /* JADX WARN: Type inference failed for: r14v108, types: [com.google.android.gms.internal.measurement.f] */
    /* JADX WARN: Type inference failed for: r14v112, types: [com.google.android.gms.internal.measurement.n] */
    /* JADX WARN: Type inference failed for: r14v18, types: [com.google.android.gms.internal.measurement.g] */
    /* JADX WARN: Type inference failed for: r14v196, types: [com.google.android.gms.internal.measurement.g] */
    /* JADX WARN: Type inference failed for: r14v199, types: [com.google.android.gms.internal.measurement.n] */
    /* JADX WARN: Type inference failed for: r14v210 */
    /* JADX WARN: Type inference failed for: r14v237, types: [com.google.android.gms.internal.measurement.e] */
    /* JADX WARN: Type inference failed for: r14v244, types: [com.google.android.gms.internal.measurement.m] */
    /* JADX WARN: Type inference failed for: r14v248 */
    /* JADX WARN: Type inference failed for: r14v293, types: [com.google.android.gms.internal.measurement.p] */
    /* JADX WARN: Type inference failed for: r14v299 */
    /* JADX WARN: Type inference failed for: r14v300 */
    /* JADX WARN: Type inference failed for: r14v39, types: [com.google.android.gms.internal.measurement.g] */
    /* JADX WARN: Type inference failed for: r14v61, types: [com.google.android.gms.internal.measurement.j, com.google.android.gms.internal.measurement.n, com.google.android.gms.internal.measurement.o] */
    /* JADX WARN: Type inference failed for: r14v73, types: [com.google.android.gms.internal.measurement.h] */
    /* JADX WARN: Type inference failed for: r2v32, types: [com.google.android.gms.internal.measurement.t] */
    /* JADX WARN: Type inference failed for: r2v39, types: [com.google.android.gms.internal.measurement.h] */
    /* JADX WARN: Type inference failed for: r2v40, types: [com.google.android.gms.internal.measurement.t] */
    /* JADX WARN: Type inference failed for: r2v50, types: [com.google.android.gms.internal.measurement.t] */
    /* JADX WARN: Type inference failed for: r2v57, types: [com.google.android.gms.internal.measurement.h] */
    /* JADX WARN: Type inference failed for: r2v58, types: [com.google.android.gms.internal.measurement.t] */
    /* JADX WARN: Type inference failed for: r2v76 */
    /* JADX WARN: Type inference failed for: r2v88, types: [com.google.android.gms.internal.measurement.h] */
    /* JADX WARN: Type inference failed for: r2v92, types: [com.google.android.gms.internal.measurement.h] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.android.gms.internal.measurement.n G(com.google.firebase.messaging.y r13, com.google.android.gms.internal.measurement.n r14) {
        /*
            Method dump skipped, instruction units count: 3846
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.y4.G(com.google.firebase.messaging.y, com.google.android.gms.internal.measurement.n):com.google.android.gms.internal.measurement.n");
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0106, code lost:
    
        r2.f1830j.getClass();
        r0 = com.google.android.gms.internal.measurement.a6.c(r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x010f, code lost:
    
        if (r0 == null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0115, code lost:
    
        if (r0.equals(null) == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0117, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0118, code lost:
    
        monitor-enter(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x011b, code lost:
    
        if (r3 != r2.f1828g) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x011d, code lost:
    
        r2.f1823b.put(r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0123, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0125, code lost:
    
        monitor-exit(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0126, code lost:
    
        if (r0 == null) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0128, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0129, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x012b, code lost:
    
        throw r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0100 A[Catch: all -> 0x003e, DONT_GENERATE, TryCatch #3 {all -> 0x003e, blocks: (B:5:0x0015, B:7:0x001b, B:13:0x006b, B:15:0x0076, B:18:0x0081, B:20:0x0083, B:22:0x0088, B:24:0x0090, B:26:0x0094, B:27:0x0096, B:28:0x00a5, B:30:0x00ab, B:31:0x00d3, B:33:0x00d9, B:35:0x00e1, B:36:0x00e4, B:37:0x00e9, B:38:0x00eb, B:40:0x00f3, B:43:0x00fe, B:45:0x0100, B:47:0x0102, B:48:0x0105, B:10:0x0041, B:12:0x0049), top: B:79:0x0015 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object H() {
        /*
            Method dump skipped, instruction units count: 314
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.y4.H():java.lang.Object");
    }

    public void J(s sVar) {
        ArrayList arrayList = sVar.f1895a;
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            ((HashMap) this.f1990b).put(((f0) obj).toString(), sVar);
        }
    }

    public void K(com.google.firebase.messaging.y yVar, c5.h hVar) {
        TreeMap treeMap = (TreeMap) this.f1991c;
        j7 j7Var = new j7(hVar);
        TreeMap treeMap2 = (TreeMap) this.f1990b;
        for (Integer num : treeMap2.keySet()) {
            c cVar = (c) ((c) hVar.f1061c).clone();
            n nVarE = ((o) treeMap2.get(num)).e(yVar, Collections.singletonList(j7Var));
            int iM = nVarE instanceof g ? p4.m(((g) nVarE).f1647a.doubleValue()) : -1;
            if (iM == 2 || iM == -1) {
                hVar.f1061c = cVar;
            }
        }
        Iterator it = treeMap.keySet().iterator();
        while (it.hasNext()) {
            n nVarE2 = ((o) treeMap.get((Integer) it.next())).e(yVar, Collections.singletonList(j7Var));
            if (nVarE2 instanceof g) {
                p4.m(((g) nVarE2).f1647a.doubleValue());
            }
        }
    }

    @Override // p0.o
    public Object a() {
        return (p0.y) this.f1990b;
    }

    @Override // k.a
    public boolean b(k.b bVar, MenuItem menuItem) {
        return ((k.a) this.f1990b).b(bVar, menuItem);
    }

    @Override // p0.o
    public boolean c(CharSequence charSequence, int i6, int i9, p0.v vVar) {
        if ((vVar.f4623c & 4) > 0) {
            return true;
        }
        if (((p0.y) this.f1990b) == null) {
            this.f1990b = new p0.y(charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence));
        }
        ((o3.a) this.f1991c).getClass();
        ((p0.y) this.f1990b).setSpan(new p0.w(vVar), i6, i9, 33);
        return true;
    }

    @Override // k.a
    public boolean e(k.b bVar, Menu menu) {
        return ((k.a) this.f1990b).e(bVar, menu);
    }

    public void f(String str, Object obj) {
        ((ArrayList) this.f1990b).add(str + "=" + String.valueOf(obj));
    }

    public void g(androidx.fragment.app.c0 c0Var, boolean z5) {
        d7.g.f("f", c0Var);
        androidx.fragment.app.c0 c0Var2 = ((androidx.fragment.app.y0) this.f1990b).f663y;
        if (c0Var2 != null) {
            c0Var2.g().f653o.g(c0Var, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1991c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z5) {
                throw null;
            }
            throw null;
        }
    }

    @Override // q6.a
    public Object get() {
        switch (this.f1989a) {
            case 14:
                return new g3.d((Context) ((o5.c) this.f1990b).f4446b, (c5.h) ((k1.h) this.f1991c).get());
            default:
                o3.a aVar = new o3.a(1);
                o3.a aVar2 = new o3.a(0);
                Object obj = ((q6.a) this.f1990b).get();
                q6.a aVar3 = (q6.a) this.f1991c;
                return new m3.h(aVar, aVar2, m3.a.f4253f, (m3.j) obj, aVar3);
        }
    }

    @Override // k.a
    public boolean h(k.b bVar, Menu menu) {
        ViewGroup viewGroup = ((g.f0) this.f1991c).I;
        WeakHashMap weakHashMap = j0.k0.f3286a;
        j0.b0.c(viewGroup);
        return ((k.a) this.f1990b).h(bVar, menu);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [g.n, java.lang.Object] */
    @Override // k.a
    public void i(k.b bVar) {
        ((k.a) this.f1990b).i(bVar);
        g.f0 f0Var = (g.f0) this.f1991c;
        if (f0Var.E != null) {
            f0Var.f2695l.getDecorView().removeCallbacks(f0Var.F);
        }
        if (f0Var.D != null) {
            j0.o0 o0Var = f0Var.G;
            if (o0Var != null) {
                o0Var.b();
            }
            j0.o0 o0VarA = j0.k0.a(f0Var.D);
            o0VarA.a(0.0f);
            f0Var.G = o0VarA;
            o0VarA.d(new g.w(2, this));
        }
        f0Var.f2701v.onSupportActionModeFinished(f0Var.C);
        f0Var.C = null;
        ViewGroup viewGroup = f0Var.I;
        WeakHashMap weakHashMap = j0.k0.f3286a;
        j0.b0.c(viewGroup);
        f0Var.K();
    }

    public void j(androidx.fragment.app.c0 c0Var, boolean z5) {
        d7.g.f("f", c0Var);
        androidx.fragment.app.y0 y0Var = (androidx.fragment.app.y0) this.f1990b;
        androidx.fragment.app.h0 h0Var = y0Var.f661w.f522b;
        androidx.fragment.app.c0 c0Var2 = y0Var.f663y;
        if (c0Var2 != null) {
            c0Var2.g().f653o.j(c0Var, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1991c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z5) {
                throw null;
            }
            throw null;
        }
    }

    public void k(androidx.fragment.app.c0 c0Var, boolean z5) {
        d7.g.f("f", c0Var);
        androidx.fragment.app.c0 c0Var2 = ((androidx.fragment.app.y0) this.f1990b).f663y;
        if (c0Var2 != null) {
            c0Var2.g().f653o.k(c0Var, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1991c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z5) {
                throw null;
            }
            throw null;
        }
    }

    public void l(androidx.fragment.app.c0 c0Var, boolean z5) {
        d7.g.f("f", c0Var);
        androidx.fragment.app.c0 c0Var2 = ((androidx.fragment.app.y0) this.f1990b).f663y;
        if (c0Var2 != null) {
            c0Var2.g().f653o.l(c0Var, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1991c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z5) {
                throw null;
            }
            throw null;
        }
    }

    public void m(androidx.fragment.app.c0 c0Var, boolean z5) {
        d7.g.f("f", c0Var);
        androidx.fragment.app.c0 c0Var2 = ((androidx.fragment.app.y0) this.f1990b).f663y;
        if (c0Var2 != null) {
            c0Var2.g().f653o.m(c0Var, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1991c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z5) {
                throw null;
            }
            throw null;
        }
    }

    public void n(androidx.fragment.app.c0 c0Var, boolean z5) {
        d7.g.f("f", c0Var);
        androidx.fragment.app.c0 c0Var2 = ((androidx.fragment.app.y0) this.f1990b).f663y;
        if (c0Var2 != null) {
            c0Var2.g().f653o.n(c0Var, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1991c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z5) {
                throw null;
            }
            throw null;
        }
    }

    public void o(androidx.fragment.app.c0 c0Var, boolean z5) {
        d7.g.f("f", c0Var);
        androidx.fragment.app.y0 y0Var = (androidx.fragment.app.y0) this.f1990b;
        androidx.fragment.app.h0 h0Var = y0Var.f661w.f522b;
        androidx.fragment.app.c0 c0Var2 = y0Var.f663y;
        if (c0Var2 != null) {
            c0Var2.g().f653o.o(c0Var, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1991c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z5) {
                throw null;
            }
            throw null;
        }
    }

    public void p(androidx.fragment.app.c0 c0Var, boolean z5) {
        d7.g.f("f", c0Var);
        androidx.fragment.app.c0 c0Var2 = ((androidx.fragment.app.y0) this.f1990b).f663y;
        if (c0Var2 != null) {
            c0Var2.g().f653o.p(c0Var, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1991c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z5) {
                throw null;
            }
            throw null;
        }
    }

    public void q(androidx.fragment.app.c0 c0Var, boolean z5) {
        d7.g.f("f", c0Var);
        androidx.fragment.app.c0 c0Var2 = ((androidx.fragment.app.y0) this.f1990b).f663y;
        if (c0Var2 != null) {
            c0Var2.g().f653o.q(c0Var, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1991c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z5) {
                throw null;
            }
            throw null;
        }
    }

    public void r(androidx.fragment.app.c0 c0Var, Bundle bundle, boolean z5) {
        d7.g.f("f", c0Var);
        androidx.fragment.app.c0 c0Var2 = ((androidx.fragment.app.y0) this.f1990b).f663y;
        if (c0Var2 != null) {
            c0Var2.g().f653o.r(c0Var, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1991c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z5) {
                throw null;
            }
            throw null;
        }
    }

    public void s(androidx.fragment.app.c0 c0Var, boolean z5) {
        d7.g.f("f", c0Var);
        androidx.fragment.app.c0 c0Var2 = ((androidx.fragment.app.y0) this.f1990b).f663y;
        if (c0Var2 != null) {
            c0Var2.g().f653o.s(c0Var, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1991c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z5) {
                throw null;
            }
            throw null;
        }
    }

    public void t(androidx.fragment.app.c0 c0Var, boolean z5) {
        d7.g.f("f", c0Var);
        androidx.fragment.app.c0 c0Var2 = ((androidx.fragment.app.y0) this.f1990b).f663y;
        if (c0Var2 != null) {
            c0Var2.g().f653o.t(c0Var, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1991c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z5) {
                throw null;
            }
            throw null;
        }
    }

    public String toString() {
        switch (this.f1989a) {
            case 5:
                StringBuilder sb = new StringBuilder(100);
                sb.append(this.f1991c.getClass().getSimpleName());
                sb.append('{');
                ArrayList arrayList = (ArrayList) this.f1990b;
                int size = arrayList.size();
                for (int i6 = 0; i6 < size; i6++) {
                    sb.append((String) arrayList.get(i6));
                    if (i6 < size - 1) {
                        sb.append(", ");
                    }
                }
                sb.append('}');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public void u(androidx.fragment.app.c0 c0Var, View view, boolean z5) {
        d7.g.f("f", c0Var);
        d7.g.f("v", view);
        androidx.fragment.app.c0 c0Var2 = ((androidx.fragment.app.y0) this.f1990b).f663y;
        if (c0Var2 != null) {
            c0Var2.g().f653o.u(c0Var, view, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1991c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z5) {
                throw null;
            }
            throw null;
        }
    }

    public void v(androidx.fragment.app.c0 c0Var, boolean z5) {
        d7.g.f("f", c0Var);
        androidx.fragment.app.c0 c0Var2 = ((androidx.fragment.app.y0) this.f1990b).f663y;
        if (c0Var2 != null) {
            c0Var2.g().f653o.v(c0Var, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1991c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z5) {
                throw null;
            }
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x01ab, code lost:
    
        r0 = new c6.b[]{r8, r5}[1].f1079b;
        r2 = r23 - r0.length;
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01bb, code lost:
    
        if (r3 >= r2) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01bd, code lost:
    
        r22[r4 + r3] = 0;
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01c4, code lost:
    
        java.lang.System.arraycopy(r0, 0, r22, r4 + r2, r0.length);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01c9, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void w(int[] r22, int r23) {
        /*
            Method dump skipped, instruction units count: 506
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.y4.w(int[], int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.android.datatransport.cct.CctBackendFactory y(java.lang.String r14) {
        /*
            Method dump skipped, instruction units count: 273
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.y4.y(java.lang.String):com.google.android.datatransport.cct.CctBackendFactory");
    }

    public File z() {
        if (((File) this.f1990b) == null) {
            synchronized (this) {
                try {
                    if (((File) this.f1990b) == null) {
                        t4.g gVar = (t4.g) this.f1991c;
                        gVar.a();
                        this.f1990b = new File(gVar.f5320a.getFilesDir(), "PersistedInstallation." + ((t4.g) this.f1991c).d() + ".json");
                    }
                } finally {
                }
            }
        }
        return (File) this.f1990b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0055, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0064 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.x4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object zza(java.lang.String r10) {
        /*
            r9 = this;
            java.lang.Object r0 = r9.f1990b
            android.content.Context r0 = (android.content.Context) r0
            r1 = 0
            if (r0 == 0) goto La1
            boolean r2 = com.google.android.gms.internal.measurement.s4.a()
            if (r2 == 0) goto L64
            boolean r2 = com.google.android.gms.internal.measurement.s4.f1900b
            r3 = 1
            if (r2 == 0) goto L13
            goto L5f
        L13:
            java.lang.Class<com.google.android.gms.internal.measurement.s4> r2 = com.google.android.gms.internal.measurement.s4.class
            monitor-enter(r2)
            boolean r4 = com.google.android.gms.internal.measurement.s4.f1900b     // Catch: java.lang.Throwable -> L1c
            if (r4 == 0) goto L1e
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
            goto L5f
        L1c:
            r10 = move-exception
            goto L62
        L1e:
            r4 = r3
        L1f:
            r5 = 2
            r6 = 0
            r7 = 0
            if (r4 > r5) goto L55
            android.os.UserManager r5 = com.google.android.gms.internal.measurement.s4.f1899a     // Catch: java.lang.Throwable -> L1c
            if (r5 != 0) goto L32
            java.lang.Class<android.os.UserManager> r5 = android.os.UserManager.class
            java.lang.Object r5 = r0.getSystemService(r5)     // Catch: java.lang.Throwable -> L1c
            android.os.UserManager r5 = (android.os.UserManager) r5     // Catch: java.lang.Throwable -> L1c
            com.google.android.gms.internal.measurement.s4.f1899a = r5     // Catch: java.lang.Throwable -> L1c
        L32:
            android.os.UserManager r5 = com.google.android.gms.internal.measurement.s4.f1899a     // Catch: java.lang.Throwable -> L1c
            if (r5 != 0) goto L37
            goto L5a
        L37:
            boolean r8 = com.getcapacitor.a.y(r5)     // Catch: java.lang.Throwable -> L1c java.lang.NullPointerException -> L48
            if (r8 != 0) goto L56
            android.os.UserHandle r8 = android.os.Process.myUserHandle()     // Catch: java.lang.Throwable -> L1c java.lang.NullPointerException -> L48
            boolean r0 = r5.isUserRunning(r8)     // Catch: java.lang.Throwable -> L1c java.lang.NullPointerException -> L48
            if (r0 != 0) goto L55
            goto L56
        L48:
            r5 = move-exception
            java.lang.String r7 = "DirectBootUtils"
            java.lang.String r8 = "Failed to check if user is unlocked."
            android.util.Log.w(r7, r8, r5)     // Catch: java.lang.Throwable -> L1c
            com.google.android.gms.internal.measurement.s4.f1899a = r6     // Catch: java.lang.Throwable -> L1c
            int r4 = r4 + 1
            goto L1f
        L55:
            r3 = r7
        L56:
            if (r3 == 0) goto L5a
            com.google.android.gms.internal.measurement.s4.f1899a = r6     // Catch: java.lang.Throwable -> L1c
        L5a:
            if (r3 == 0) goto L5e
            com.google.android.gms.internal.measurement.s4.f1900b = r3     // Catch: java.lang.Throwable -> L1c
        L5e:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
        L5f:
            if (r3 != 0) goto L64
            goto La1
        L62:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
            throw r10
        L64:
            com.google.android.gms.internal.measurement.y4 r0 = new com.google.android.gms.internal.measurement.y4     // Catch: java.lang.NullPointerException -> L83 java.lang.SecurityException -> L85 java.lang.IllegalStateException -> L87
            r2 = 10
            r3 = 0
            r0.<init>(r2, r3)     // Catch: java.lang.NullPointerException -> L83 java.lang.SecurityException -> L85 java.lang.IllegalStateException -> L87
            r0.f1990b = r9     // Catch: java.lang.NullPointerException -> L83 java.lang.SecurityException -> L85 java.lang.IllegalStateException -> L87
            r0.f1991c = r10     // Catch: java.lang.NullPointerException -> L83 java.lang.SecurityException -> L85 java.lang.IllegalStateException -> L87
            java.lang.Object r0 = r0.H()     // Catch: java.lang.SecurityException -> L75 java.lang.NullPointerException -> L83 java.lang.IllegalStateException -> L87
            goto L80
        L75:
            long r2 = android.os.Binder.clearCallingIdentity()     // Catch: java.lang.NullPointerException -> L83 java.lang.SecurityException -> L85 java.lang.IllegalStateException -> L87
            java.lang.Object r0 = r0.H()     // Catch: java.lang.Throwable -> L89
            android.os.Binder.restoreCallingIdentity(r2)     // Catch: java.lang.NullPointerException -> L83 java.lang.SecurityException -> L85 java.lang.IllegalStateException -> L87
        L80:
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.NullPointerException -> L83 java.lang.SecurityException -> L85 java.lang.IllegalStateException -> L87
            return r0
        L83:
            r0 = move-exception
            goto L8e
        L85:
            r0 = move-exception
            goto L8e
        L87:
            r0 = move-exception
            goto L8e
        L89:
            r0 = move-exception
            android.os.Binder.restoreCallingIdentity(r2)     // Catch: java.lang.NullPointerException -> L83 java.lang.SecurityException -> L85 java.lang.IllegalStateException -> L87
            throw r0     // Catch: java.lang.NullPointerException -> L83 java.lang.SecurityException -> L85 java.lang.IllegalStateException -> L87
        L8e:
            java.lang.String r2 = "GservicesLoader"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Unable to read GServices for: "
            r3.<init>(r4)
            r3.append(r10)
            java.lang.String r10 = r3.toString()
            android.util.Log.e(r2, r10, r0)
        La1:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.y4.zza(java.lang.String):java.lang.Object");
    }

    public /* synthetic */ y4(int i6, boolean z5) {
        this.f1989a = i6;
    }

    public /* synthetic */ y4(Object obj, int i6, Object obj2) {
        this.f1989a = i6;
        this.f1990b = obj;
        this.f1991c = obj2;
    }

    public /* synthetic */ y4(Object obj, int i6, boolean z5) {
        this.f1989a = i6;
        this.f1991c = obj;
    }

    public y4(IBinder iBinder) throws RemoteException {
        this.f1989a = 29;
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if (Objects.equals(interfaceDescriptor, "android.os.IMessenger")) {
            this.f1990b = new Messenger(iBinder);
            this.f1991c = null;
        } else if (Objects.equals(interfaceDescriptor, "com.google.android.gms.iid.IMessengerCompat")) {
            this.f1991c = new u3.g(iBinder);
            this.f1990b = null;
        } else {
            Log.w("MessengerIpcClient", "Invalid interface descriptor: ".concat(String.valueOf(interfaceDescriptor)));
            throw new RemoteException();
        }
    }

    public /* synthetic */ y4(Object obj) {
        this.f1989a = 5;
        this.f1991c = obj;
        this.f1990b = new ArrayList();
    }

    public y4(int i6) {
        this.f1989a = i6;
        switch (i6) {
            case 7:
                v3.d dVar = v3.d.f5542d;
                this.f1990b = new SparseIntArray();
                this.f1991c = dVar;
                break;
            case WakeMessage.ACTIVITY /* 8 */:
                this.f1990b = new TreeMap();
                this.f1991c = new TreeMap();
                break;
            case 19:
                this.f1990b = Executors.newSingleThreadExecutor(new m1.f());
                this.f1991c = new AtomicBoolean(false);
                break;
            default:
                this.f1990b = null;
                this.f1991c = null;
                break;
        }
    }

    public y4(Context context, int i6) {
        this.f1989a = i6;
        switch (i6) {
            case 6:
                com.google.android.gms.common.internal.d0.h(context);
                Resources resources = context.getResources();
                this.f1990b = resources;
                this.f1991c = resources.getResourcePackageName(R.string.common_google_play_services_unknown_issue);
                break;
            case 21:
                this.f1990b = context;
                break;
            default:
                this.f1990b = context;
                z4 z4Var = new z4(null);
                this.f1991c = z4Var;
                context.getContentResolver().registerContentObserver(n4.f1756a, true, z4Var);
                break;
        }
    }

    public y4(androidx.fragment.app.y0 y0Var) {
        this.f1989a = 2;
        this.f1990b = y0Var;
        this.f1991c = new CopyOnWriteArrayList();
    }

    public y4(c6.a aVar) {
        this.f1989a = 4;
        this.f1990b = aVar;
        ArrayList arrayList = new ArrayList();
        this.f1991c = arrayList;
        arrayList.add(new c6.b(aVar, new int[]{1}));
    }

    public y4(Animator animator) {
        this.f1989a = 1;
        this.f1990b = null;
        AnimatorSet animatorSet = new AnimatorSet();
        this.f1991c = animatorSet;
        animatorSet.play(animator);
    }

    public y4(ArrayList arrayList, ArrayList arrayList2) {
        this.f1989a = 3;
        int size = arrayList.size();
        this.f1990b = new int[size];
        this.f1991c = new float[size];
        for (int i6 = 0; i6 < size; i6++) {
            ((int[]) this.f1990b)[i6] = ((Integer) arrayList.get(i6)).intValue();
            ((float[]) this.f1991c)[i6] = ((Float) arrayList2.get(i6)).floatValue();
        }
    }

    public y4(int i6, int i9) {
        this.f1989a = 3;
        this.f1990b = new int[]{i6, i9};
        this.f1991c = new float[]{0.0f, 1.0f};
    }

    public y4(int i6, int i9, int i10) {
        this.f1989a = 3;
        this.f1990b = new int[]{i6, i9, i10};
        this.f1991c = new float[]{0.0f, 0.5f, 1.0f};
    }

    public y4(EditText editText) {
        this.f1989a = 27;
        this.f1990b = editText;
        r0.i iVar = new r0.i(editText);
        this.f1991c = iVar;
        editText.addTextChangedListener(iVar);
        if (r0.a.f4942b == null) {
            synchronized (r0.a.f4941a) {
                try {
                    if (r0.a.f4942b == null) {
                        r0.a aVar = new r0.a();
                        try {
                            r0.a.f4943c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, r0.a.class.getClassLoader());
                        } catch (Throwable unused) {
                        }
                        r0.a.f4942b = aVar;
                    }
                } finally {
                }
            }
        }
        editText.setEditableFactory(r0.a.f4942b);
    }

    public y4(Matcher matcher, String str) {
        this.f1989a = 17;
        this.f1990b = matcher;
    }

    public y4(g.f0 f0Var, k.a aVar) {
        this.f1989a = 11;
        this.f1991c = f0Var;
        this.f1990b = aVar;
    }
}
