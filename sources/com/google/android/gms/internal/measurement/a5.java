package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile q4.b f1517a;

    public static void A(int i6, List list, o6 o6Var, boolean z5) throws r5 {
        if (list == null || list.isEmpty()) {
            return;
        }
        q5 q5Var = (q5) o6Var.f1792a;
        int i9 = 0;
        if (!(list instanceof n6)) {
            if (!z5) {
                while (i9 < list.size()) {
                    q5Var.n(i6, ((Long) list.get(i9)).longValue());
                    i9++;
                }
                return;
            }
            q5Var.r(i6, 2);
            int iU = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iU += q5.u(((Long) list.get(i10)).longValue());
            }
            q5Var.q(iU);
            while (i9 < list.size()) {
                q5Var.o(((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        n6 n6Var = (n6) list;
        if (!z5) {
            while (i9 < n6Var.f1766c) {
                q5Var.n(i6, n6Var.b(i9));
                i9++;
            }
            return;
        }
        q5Var.r(i6, 2);
        int iU2 = 0;
        for (int i11 = 0; i11 < n6Var.f1766c; i11++) {
            iU2 += q5.u(n6Var.b(i11));
        }
        q5Var.q(iU2);
        while (i9 < n6Var.f1766c) {
            q5Var.o(n6Var.b(i9));
            i9++;
        }
    }

    public static n a(l4 l4Var) {
        if (l4Var == null) {
            return n.f1743n;
        }
        int i6 = h5.f1668a[androidx.fragment.app.m1.e(l4Var.o())];
        if (i6 == 1) {
            return l4Var.v() ? new p(l4Var.q()) : n.f1750u;
        }
        if (i6 == 2) {
            return l4Var.u() ? new g(Double.valueOf(l4Var.n())) : new g(null);
        }
        if (i6 == 3) {
            return l4Var.t() ? new f(Boolean.valueOf(l4Var.s())) : new f(null);
        }
        if (i6 != 4) {
            if (i6 != 5) {
                throw new IllegalStateException("Invalid entity: ".concat(String.valueOf(l4Var)));
            }
            throw new IllegalArgumentException("Unknown type found. Cannot convert entity");
        }
        List listR = l4Var.r();
        ArrayList arrayList = new ArrayList();
        Iterator it = listR.iterator();
        while (it.hasNext()) {
            arrayList.add(a((l4) it.next()));
        }
        return new q(l4Var.p(), arrayList);
    }

    public static n b(Object obj) {
        if (obj == null) {
            return n.f1744o;
        }
        if (obj instanceof String) {
            return new p((String) obj);
        }
        if (obj instanceof Double) {
            return new g((Double) obj);
        }
        if (obj instanceof Long) {
            return new g(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new g(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Boolean) {
            return new f((Boolean) obj);
        }
        if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            e eVar = new e();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                eVar.f(b(it.next()));
            }
            return eVar;
        }
        m mVar = new m();
        Map map = (Map) obj;
        for (Object string : map.keySet()) {
            n nVarB = b(map.get(string));
            if (string != null) {
                if (!(string instanceof String)) {
                    string = string.toString();
                }
                mVar.b((String) string, nVarB);
            }
        }
        return mVar;
    }

    public static w4 c(Context context, File file) {
        BufferedReader bufferedReader;
        s.j jVar;
        HashMap map;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            try {
                jVar = new s.j(0);
                map = new HashMap();
            } finally {
            }
        } catch (IOException e9) {
            throw new RuntimeException(e9);
        }
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                Log.w("HermeticFileOverrides", "Parsed " + String.valueOf(file) + " for Android package " + context.getPackageName());
                w4 w4Var = new w4(jVar);
                bufferedReader.close();
                return w4Var;
            }
            String[] strArrSplit = line.split(" ", 3);
            if (strArrSplit.length != 3) {
                Log.e("HermeticFileOverrides", "Invalid: " + line);
            } else {
                String str = new String(strArrSplit[0]);
                String strDecode = Uri.decode(new String(strArrSplit[1]));
                String strDecode2 = (String) map.get(strArrSplit[2]);
                if (strDecode2 == null) {
                    String str2 = new String(strArrSplit[2]);
                    strDecode2 = Uri.decode(str2);
                    if (strDecode2.length() < 1024 || strDecode2 == str2) {
                        map.put(str2, strDecode2);
                    }
                }
                s.j jVar2 = (s.j) jVar.get(str);
                if (jVar2 == null) {
                    jVar2 = new s.j(0);
                    jVar.put(str, jVar2);
                }
                jVar2.put(strDecode, strDecode2);
            }
            throw new RuntimeException(e9);
        }
    }

    public static q4.b d(Context context) {
        File file;
        q4.b cVar = q4.a.f4852a;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            StrictMode.allowThreadDiskWrites();
            try {
                file = new File(context.getDir("phenotype_hermetic", 0), "overrides.txt");
            } catch (RuntimeException e9) {
                Log.e("HermeticFileOverrides", "no data dir", e9);
            }
            q4.b cVar2 = file.exists() ? new q4.c(file) : cVar;
            if (cVar2.b()) {
                cVar = new q4.c(c(context, (File) cVar2.a()));
            }
            return cVar;
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }

    public static void e(int i6, List list, o6 o6Var, boolean z5) throws r5 {
        if (list == null || list.isEmpty()) {
            return;
        }
        q5 q5Var = (q5) o6Var.f1792a;
        if (list instanceof l5) {
            throw new ClassCastException();
        }
        if (!z5) {
            for (int i9 = 0; i9 < list.size(); i9++) {
                boolean zBooleanValue = ((Boolean) list.get(i9)).booleanValue();
                q5Var.r(i6, 0);
                q5Var.d(zBooleanValue ? (byte) 1 : (byte) 0);
            }
            return;
        }
        q5Var.r(i6, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Boolean) list.get(i11)).getClass();
            Logger logger = q5.f1831f;
            i10++;
        }
        q5Var.q(i10);
        for (int i12 = 0; i12 < list.size(); i12++) {
            q5Var.d(((Boolean) list.get(i12)).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void f(Object obj, Object obj2) {
        z5 z5Var = (z5) obj;
        c7 c7Var = z5Var.zzb;
        c7 c7Var2 = ((z5) obj2).zzb;
        c7 c7Var3 = c7.f1549f;
        if (!c7Var3.equals(c7Var2)) {
            if (c7Var3.equals(c7Var)) {
                int i6 = c7Var.f1550a + c7Var2.f1550a;
                int[] iArrCopyOf = Arrays.copyOf(c7Var.f1551b, i6);
                System.arraycopy(c7Var2.f1551b, 0, iArrCopyOf, c7Var.f1550a, c7Var2.f1550a);
                Object[] objArrCopyOf = Arrays.copyOf(c7Var.f1552c, i6);
                System.arraycopy(c7Var2.f1552c, 0, objArrCopyOf, c7Var.f1550a, c7Var2.f1550a);
                c7Var = new c7(i6, iArrCopyOf, objArrCopyOf, true);
            } else {
                c7Var.getClass();
                if (!c7Var2.equals(c7Var3)) {
                    if (!c7Var.f1554e) {
                        throw new UnsupportedOperationException();
                    }
                    int i9 = c7Var.f1550a + c7Var2.f1550a;
                    c7Var.b(i9);
                    System.arraycopy(c7Var2.f1551b, 0, c7Var.f1551b, c7Var.f1550a, c7Var2.f1550a);
                    System.arraycopy(c7Var2.f1552c, 0, c7Var.f1552c, c7Var.f1550a, c7Var2.f1550a);
                    c7Var.f1550a = i9;
                }
            }
        }
        z5Var.zzb = c7Var;
    }

    public static boolean g(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int h(List list) {
        int size = list.size();
        int i6 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof c6)) {
            int iU = 0;
            while (i6 < size) {
                iU += q5.u(((Integer) list.get(i6)).intValue());
                i6++;
            }
            return iU;
        }
        c6 c6Var = (c6) list;
        int iU2 = 0;
        while (i6 < size) {
            iU2 += q5.u(c6Var.a(i6));
            i6++;
        }
        return iU2;
    }

    public static void i(int i6, List list, o6 o6Var, boolean z5) throws r5 {
        if (list == null || list.isEmpty()) {
            return;
        }
        q5 q5Var = (q5) o6Var.f1792a;
        if (list instanceof s5) {
            throw new ClassCastException();
        }
        int i9 = 0;
        if (!z5) {
            while (i9 < list.size()) {
                double dDoubleValue = ((Double) list.get(i9)).doubleValue();
                q5Var.getClass();
                q5Var.g(i6, Double.doubleToRawLongBits(dDoubleValue));
                i9++;
            }
            return;
        }
        q5Var.r(i6, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Double) list.get(i11)).getClass();
            Logger logger = q5.f1831f;
            i10 += 8;
        }
        q5Var.q(i10);
        while (i9 < list.size()) {
            q5Var.h(Double.doubleToRawLongBits(((Double) list.get(i9)).doubleValue()));
            i9++;
        }
    }

    public static void j(int i6, List list, o6 o6Var, boolean z5) throws r5 {
        if (list == null || list.isEmpty()) {
            return;
        }
        q5 q5Var = (q5) o6Var.f1792a;
        int i9 = 0;
        if (!(list instanceof c6)) {
            if (!z5) {
                while (i9 < list.size()) {
                    q5Var.m(i6, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            q5Var.r(i6, 2);
            int iU = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iU += q5.u(((Integer) list.get(i10)).intValue());
            }
            q5Var.q(iU);
            while (i9 < list.size()) {
                q5Var.l(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        c6 c6Var = (c6) list;
        if (!z5) {
            while (i9 < c6Var.f1548c) {
                q5Var.m(i6, c6Var.a(i9));
                i9++;
            }
            return;
        }
        q5Var.r(i6, 2);
        int iU2 = 0;
        for (int i11 = 0; i11 < c6Var.f1548c; i11++) {
            iU2 += q5.u(c6Var.a(i11));
        }
        q5Var.q(iU2);
        while (i9 < c6Var.f1548c) {
            q5Var.l(c6Var.a(i9));
            i9++;
        }
    }

    public static void k(int i6, List list, o6 o6Var, boolean z5) throws r5 {
        if (list == null || list.isEmpty()) {
            return;
        }
        q5 q5Var = (q5) o6Var.f1792a;
        int i9 = 0;
        if (!(list instanceof c6)) {
            if (!z5) {
                while (i9 < list.size()) {
                    q5Var.f(i6, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            q5Var.r(i6, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Integer) list.get(i11)).getClass();
                Logger logger = q5.f1831f;
                i10 += 4;
            }
            q5Var.q(i10);
            while (i9 < list.size()) {
                q5Var.e(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        c6 c6Var = (c6) list;
        if (!z5) {
            while (i9 < c6Var.f1548c) {
                q5Var.f(i6, c6Var.a(i9));
                i9++;
            }
            return;
        }
        q5Var.r(i6, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < c6Var.f1548c; i13++) {
            c6Var.a(i13);
            Logger logger2 = q5.f1831f;
            i12 += 4;
        }
        q5Var.q(i12);
        while (i9 < c6Var.f1548c) {
            q5Var.e(c6Var.a(i9));
            i9++;
        }
    }

    public static int l(List list) {
        int size = list.size();
        int i6 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof c6)) {
            int iU = 0;
            while (i6 < size) {
                iU += q5.u(((Integer) list.get(i6)).intValue());
                i6++;
            }
            return iU;
        }
        c6 c6Var = (c6) list;
        int iU2 = 0;
        while (i6 < size) {
            iU2 += q5.u(c6Var.a(i6));
            i6++;
        }
        return iU2;
    }

    public static void m(int i6, List list, o6 o6Var, boolean z5) throws r5 {
        if (list == null || list.isEmpty()) {
            return;
        }
        q5 q5Var = (q5) o6Var.f1792a;
        int i9 = 0;
        if (!(list instanceof n6)) {
            if (!z5) {
                while (i9 < list.size()) {
                    q5Var.g(i6, ((Long) list.get(i9)).longValue());
                    i9++;
                }
                return;
            }
            q5Var.r(i6, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Long) list.get(i11)).getClass();
                Logger logger = q5.f1831f;
                i10 += 8;
            }
            q5Var.q(i10);
            while (i9 < list.size()) {
                q5Var.h(((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        n6 n6Var = (n6) list;
        if (!z5) {
            while (i9 < n6Var.f1766c) {
                q5Var.g(i6, n6Var.b(i9));
                i9++;
            }
            return;
        }
        q5Var.r(i6, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < n6Var.f1766c; i13++) {
            n6Var.b(i13);
            Logger logger2 = q5.f1831f;
            i12 += 8;
        }
        q5Var.q(i12);
        while (i9 < n6Var.f1766c) {
            q5Var.h(n6Var.b(i9));
            i9++;
        }
    }

    public static int n(List list) {
        int size = list.size();
        int i6 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof n6)) {
            int iU = 0;
            while (i6 < size) {
                iU += q5.u(((Long) list.get(i6)).longValue());
                i6++;
            }
            return iU;
        }
        n6 n6Var = (n6) list;
        int iU2 = 0;
        while (i6 < size) {
            iU2 += q5.u(n6Var.b(i6));
            i6++;
        }
        return iU2;
    }

    public static void o(int i6, List list, o6 o6Var, boolean z5) throws r5 {
        if (list == null || list.isEmpty()) {
            return;
        }
        q5 q5Var = (q5) o6Var.f1792a;
        if (list instanceof x5) {
            throw new ClassCastException();
        }
        int i9 = 0;
        if (!z5) {
            while (i9 < list.size()) {
                float fFloatValue = ((Float) list.get(i9)).floatValue();
                q5Var.getClass();
                q5Var.f(i6, Float.floatToRawIntBits(fFloatValue));
                i9++;
            }
            return;
        }
        q5Var.r(i6, 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((Float) list.get(i11)).getClass();
            Logger logger = q5.f1831f;
            i10 += 4;
        }
        q5Var.q(i10);
        while (i9 < list.size()) {
            q5Var.e(Float.floatToRawIntBits(((Float) list.get(i9)).floatValue()));
            i9++;
        }
    }

    public static int p(List list) {
        int size = list.size();
        int i6 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof c6)) {
            int iW = 0;
            while (i6 < size) {
                int iIntValue = ((Integer) list.get(i6)).intValue();
                iW += q5.w((iIntValue >> 31) ^ (iIntValue << 1));
                i6++;
            }
            return iW;
        }
        c6 c6Var = (c6) list;
        int iW2 = 0;
        while (i6 < size) {
            int iA = c6Var.a(i6);
            iW2 += q5.w((iA >> 31) ^ (iA << 1));
            i6++;
        }
        return iW2;
    }

    public static void q(int i6, List list, o6 o6Var, boolean z5) throws r5 {
        if (list == null || list.isEmpty()) {
            return;
        }
        q5 q5Var = (q5) o6Var.f1792a;
        int i9 = 0;
        if (!(list instanceof c6)) {
            if (!z5) {
                while (i9 < list.size()) {
                    q5Var.m(i6, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            q5Var.r(i6, 2);
            int iU = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iU += q5.u(((Integer) list.get(i10)).intValue());
            }
            q5Var.q(iU);
            while (i9 < list.size()) {
                q5Var.l(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        c6 c6Var = (c6) list;
        if (!z5) {
            while (i9 < c6Var.f1548c) {
                q5Var.m(i6, c6Var.a(i9));
                i9++;
            }
            return;
        }
        q5Var.r(i6, 2);
        int iU2 = 0;
        for (int i11 = 0; i11 < c6Var.f1548c; i11++) {
            iU2 += q5.u(c6Var.a(i11));
        }
        q5Var.q(iU2);
        while (i9 < c6Var.f1548c) {
            q5Var.l(c6Var.a(i9));
            i9++;
        }
    }

    public static int r(List list) {
        int size = list.size();
        int i6 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof n6)) {
            int iU = 0;
            while (i6 < size) {
                long jLongValue = ((Long) list.get(i6)).longValue();
                iU += q5.u((jLongValue >> 63) ^ (jLongValue << 1));
                i6++;
            }
            return iU;
        }
        n6 n6Var = (n6) list;
        int iU2 = 0;
        while (i6 < size) {
            long jB = n6Var.b(i6);
            iU2 += q5.u((jB >> 63) ^ (jB << 1));
            i6++;
        }
        return iU2;
    }

    public static void s(int i6, List list, o6 o6Var, boolean z5) throws r5 {
        if (list == null || list.isEmpty()) {
            return;
        }
        q5 q5Var = (q5) o6Var.f1792a;
        int i9 = 0;
        if (!(list instanceof n6)) {
            if (!z5) {
                while (i9 < list.size()) {
                    q5Var.n(i6, ((Long) list.get(i9)).longValue());
                    i9++;
                }
                return;
            }
            q5Var.r(i6, 2);
            int iU = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iU += q5.u(((Long) list.get(i10)).longValue());
            }
            q5Var.q(iU);
            while (i9 < list.size()) {
                q5Var.o(((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        n6 n6Var = (n6) list;
        if (!z5) {
            while (i9 < n6Var.f1766c) {
                q5Var.n(i6, n6Var.b(i9));
                i9++;
            }
            return;
        }
        q5Var.r(i6, 2);
        int iU2 = 0;
        for (int i11 = 0; i11 < n6Var.f1766c; i11++) {
            iU2 += q5.u(n6Var.b(i11));
        }
        q5Var.q(iU2);
        while (i9 < n6Var.f1766c) {
            q5Var.o(n6Var.b(i9));
            i9++;
        }
    }

    public static int t(List list) {
        int size = list.size();
        int i6 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof c6)) {
            int iW = 0;
            while (i6 < size) {
                iW += q5.w(((Integer) list.get(i6)).intValue());
                i6++;
            }
            return iW;
        }
        c6 c6Var = (c6) list;
        int iW2 = 0;
        while (i6 < size) {
            iW2 += q5.w(c6Var.a(i6));
            i6++;
        }
        return iW2;
    }

    public static void u(int i6, List list, o6 o6Var, boolean z5) throws r5 {
        if (list == null || list.isEmpty()) {
            return;
        }
        q5 q5Var = (q5) o6Var.f1792a;
        int i9 = 0;
        if (!(list instanceof c6)) {
            if (!z5) {
                while (i9 < list.size()) {
                    q5Var.f(i6, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            q5Var.r(i6, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Integer) list.get(i11)).getClass();
                Logger logger = q5.f1831f;
                i10 += 4;
            }
            q5Var.q(i10);
            while (i9 < list.size()) {
                q5Var.e(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        c6 c6Var = (c6) list;
        if (!z5) {
            while (i9 < c6Var.f1548c) {
                q5Var.f(i6, c6Var.a(i9));
                i9++;
            }
            return;
        }
        q5Var.r(i6, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < c6Var.f1548c; i13++) {
            c6Var.a(i13);
            Logger logger2 = q5.f1831f;
            i12 += 4;
        }
        q5Var.q(i12);
        while (i9 < c6Var.f1548c) {
            q5Var.e(c6Var.a(i9));
            i9++;
        }
    }

    public static int v(List list) {
        int size = list.size();
        int i6 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof n6)) {
            int iU = 0;
            while (i6 < size) {
                iU += q5.u(((Long) list.get(i6)).longValue());
                i6++;
            }
            return iU;
        }
        n6 n6Var = (n6) list;
        int iU2 = 0;
        while (i6 < size) {
            iU2 += q5.u(n6Var.b(i6));
            i6++;
        }
        return iU2;
    }

    public static void w(int i6, List list, o6 o6Var, boolean z5) throws r5 {
        if (list == null || list.isEmpty()) {
            return;
        }
        q5 q5Var = (q5) o6Var.f1792a;
        int i9 = 0;
        if (!(list instanceof n6)) {
            if (!z5) {
                while (i9 < list.size()) {
                    q5Var.g(i6, ((Long) list.get(i9)).longValue());
                    i9++;
                }
                return;
            }
            q5Var.r(i6, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Long) list.get(i11)).getClass();
                Logger logger = q5.f1831f;
                i10 += 8;
            }
            q5Var.q(i10);
            while (i9 < list.size()) {
                q5Var.h(((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        n6 n6Var = (n6) list;
        if (!z5) {
            while (i9 < n6Var.f1766c) {
                q5Var.g(i6, n6Var.b(i9));
                i9++;
            }
            return;
        }
        q5Var.r(i6, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < n6Var.f1766c; i13++) {
            n6Var.b(i13);
            Logger logger2 = q5.f1831f;
            i12 += 8;
        }
        q5Var.q(i12);
        while (i9 < n6Var.f1766c) {
            q5Var.h(n6Var.b(i9));
            i9++;
        }
    }

    public static void x(int i6, List list, o6 o6Var, boolean z5) throws r5 {
        if (list == null || list.isEmpty()) {
            return;
        }
        q5 q5Var = (q5) o6Var.f1792a;
        int i9 = 0;
        if (!(list instanceof c6)) {
            if (!z5) {
                while (i9 < list.size()) {
                    int iIntValue = ((Integer) list.get(i9)).intValue();
                    q5Var.t(i6, (iIntValue >> 31) ^ (iIntValue << 1));
                    i9++;
                }
                return;
            }
            q5Var.r(i6, 2);
            int iW = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                int iIntValue2 = ((Integer) list.get(i10)).intValue();
                iW += q5.w((iIntValue2 >> 31) ^ (iIntValue2 << 1));
            }
            q5Var.q(iW);
            while (i9 < list.size()) {
                int iIntValue3 = ((Integer) list.get(i9)).intValue();
                q5Var.q((iIntValue3 >> 31) ^ (iIntValue3 << 1));
                i9++;
            }
            return;
        }
        c6 c6Var = (c6) list;
        if (!z5) {
            while (i9 < c6Var.f1548c) {
                int iA = c6Var.a(i9);
                q5Var.t(i6, (iA >> 31) ^ (iA << 1));
                i9++;
            }
            return;
        }
        q5Var.r(i6, 2);
        int iW2 = 0;
        for (int i11 = 0; i11 < c6Var.f1548c; i11++) {
            int iA2 = c6Var.a(i11);
            iW2 += q5.w((iA2 >> 31) ^ (iA2 << 1));
        }
        q5Var.q(iW2);
        while (i9 < c6Var.f1548c) {
            int iA3 = c6Var.a(i9);
            q5Var.q((iA3 >> 31) ^ (iA3 << 1));
            i9++;
        }
    }

    public static void y(int i6, List list, o6 o6Var, boolean z5) throws r5 {
        if (list == null || list.isEmpty()) {
            return;
        }
        q5 q5Var = (q5) o6Var.f1792a;
        int i9 = 0;
        if (!(list instanceof n6)) {
            if (!z5) {
                while (i9 < list.size()) {
                    long jLongValue = ((Long) list.get(i9)).longValue();
                    q5Var.n(i6, (jLongValue >> 63) ^ (jLongValue << 1));
                    i9++;
                }
                return;
            }
            q5Var.r(i6, 2);
            int iU = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                long jLongValue2 = ((Long) list.get(i10)).longValue();
                iU += q5.u((jLongValue2 >> 63) ^ (jLongValue2 << 1));
            }
            q5Var.q(iU);
            while (i9 < list.size()) {
                long jLongValue3 = ((Long) list.get(i9)).longValue();
                q5Var.o((jLongValue3 >> 63) ^ (jLongValue3 << 1));
                i9++;
            }
            return;
        }
        n6 n6Var = (n6) list;
        if (!z5) {
            while (i9 < n6Var.f1766c) {
                long jB = n6Var.b(i9);
                q5Var.n(i6, (jB >> 63) ^ (jB << 1));
                i9++;
            }
            return;
        }
        q5Var.r(i6, 2);
        int iU2 = 0;
        for (int i11 = 0; i11 < n6Var.f1766c; i11++) {
            long jB2 = n6Var.b(i11);
            iU2 += q5.u((jB2 >> 63) ^ (jB2 << 1));
        }
        q5Var.q(iU2);
        while (i9 < n6Var.f1766c) {
            long jB3 = n6Var.b(i9);
            q5Var.o((jB3 >> 63) ^ (jB3 << 1));
            i9++;
        }
    }

    public static void z(int i6, List list, o6 o6Var, boolean z5) throws r5 {
        if (list == null || list.isEmpty()) {
            return;
        }
        q5 q5Var = (q5) o6Var.f1792a;
        int i9 = 0;
        if (!(list instanceof c6)) {
            if (!z5) {
                while (i9 < list.size()) {
                    q5Var.t(i6, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            q5Var.r(i6, 2);
            int iW = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iW += q5.w(((Integer) list.get(i10)).intValue());
            }
            q5Var.q(iW);
            while (i9 < list.size()) {
                q5Var.q(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        c6 c6Var = (c6) list;
        if (!z5) {
            while (i9 < c6Var.f1548c) {
                q5Var.t(i6, c6Var.a(i9));
                i9++;
            }
            return;
        }
        q5Var.r(i6, 2);
        int iW2 = 0;
        for (int i11 = 0; i11 < c6Var.f1548c; i11++) {
            iW2 += q5.w(c6Var.a(i11));
        }
        q5Var.q(iW2);
        while (i9 < c6Var.f1548c) {
            q5Var.q(c6Var.a(i9));
            i9++;
        }
    }
}
