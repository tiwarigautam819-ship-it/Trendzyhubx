package l2;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.YaarWin.app.R;
import com.engagelab.privates.push.constants.MTPushConstants;
import d7.g;
import e8.n;
import e8.v;
import j0.i;
import j0.j0;
import j0.k0;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.WeakHashMap;
import java.util.logging.Logger;
import u.h;
import x1.r;
import x1.w;
import x1.z;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f3776a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Method f3777b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f3778c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Field f3779d;

    public static final void a(a aVar, a aVar2) {
        if (v2.a.b(e.class)) {
            return;
        }
        try {
            g.f("x", aVar);
            g.f("b", aVar2);
            int[] iArr = aVar.f3750a;
            int i6 = iArr[0];
            int i9 = iArr[1];
            int i10 = iArr[2];
            float[] fArr = aVar.f3752c;
            float[] fArr2 = aVar2.f3752c;
            for (int i11 = 0; i11 < i6; i11++) {
                for (int i12 = 0; i12 < i9; i12++) {
                    for (int i13 = 0; i13 < i10; i13++) {
                        int i14 = (i12 * i10) + (i11 * i9 * i10) + i13;
                        fArr[i14] = fArr[i14] + fArr2[i13];
                    }
                }
            }
        } catch (Throwable th) {
            v2.a.a(th, e.class);
        }
    }

    public static z b(String str, x1.a aVar, String str2) {
        String str3;
        String str4 = z.f5942j;
        int i6 = 1;
        z zVarV = w.v(aVar, String.format(Locale.US, "%s/app_indexing", Arrays.copyOf(new Object[]{str2}, 1)), null, null);
        Bundle bundle = zVarV.f5948d;
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString("tree", str);
        Context contextA = r.a();
        try {
            str3 = contextA.getPackageManager().getPackageInfo(contextA.getPackageName(), 0).versionName;
            g.e("{\n      val packageInfo …ageInfo.versionName\n    }", str3);
        } catch (PackageManager.NameNotFoundException unused) {
            str3 = "";
        }
        bundle.putString("app_version", str3);
        bundle.putString(MTPushConstants.PlatformNode.KEY_PLATFORM, "android");
        bundle.putString("request_type", "app_indexing");
        bundle.putString("device_session_id", b2.f.a());
        zVarV.f5948d = bundle;
        zVarV.j(new a2.b(i6));
        return zVarV;
    }

    public static final a f(a[] aVarArr) {
        if (v2.a.b(e.class)) {
            return null;
        }
        try {
            int i6 = aVarArr[0].f3750a[0];
            int i9 = 0;
            for (a aVar : aVarArr) {
                i9 += aVar.f3750a[1];
            }
            a aVar2 = new a(new int[]{i6, i9});
            float[] fArr = aVar2.f3752c;
            for (int i10 = 0; i10 < i6; i10++) {
                int i11 = i10 * i9;
                for (a aVar3 : aVarArr) {
                    float[] fArr2 = aVar3.f3752c;
                    int i12 = aVar3.f3750a[1];
                    System.arraycopy(fArr2, i10 * i12, fArr, i11, i12);
                    i11 += i12;
                }
            }
            return aVar2;
        } catch (Throwable th) {
            v2.a.a(th, e.class);
            return null;
        }
    }

    public static final a g(a aVar, a aVar2) {
        a aVar3;
        a aVar4 = null;
        if (v2.a.b(e.class)) {
            return null;
        }
        try {
            g.f("x", aVar);
            g.f("w", aVar2);
            int[] iArr = aVar.f3750a;
            int i6 = 0;
            int i9 = iArr[0];
            int i10 = iArr[1];
            int i11 = iArr[2];
            int[] iArr2 = aVar2.f3750a;
            int i12 = iArr2[0];
            int i13 = (i10 - i12) + 1;
            int i14 = iArr2[2];
            a aVar5 = new a(new int[]{i9, i13, i14});
            float[] fArr = aVar.f3752c;
            float[] fArr2 = aVar5.f3752c;
            float[] fArr3 = aVar2.f3752c;
            int i15 = 0;
            while (i15 < i9) {
                int i16 = i6;
                while (i16 < i14) {
                    int i17 = i6;
                    while (i17 < i13) {
                        float f9 = 0.0f;
                        aVar3 = aVar4;
                        int i18 = i6;
                        while (i18 < i12) {
                            while (i6 < i11) {
                                try {
                                    f9 = (fArr[((i18 + i17) * i11) + (i10 * i11 * i15) + i6] * fArr3[(((i18 * i11) + i6) * i14) + i16]) + f9;
                                    i6++;
                                } catch (Throwable th) {
                                    th = th;
                                    v2.a.a(th, e.class);
                                    return aVar3;
                                }
                            }
                            i18++;
                            i6 = 0;
                        }
                        fArr2[(i17 * i14) + (i13 * i14 * i15) + i16] = f9;
                        i17++;
                        aVar4 = aVar3;
                        i6 = 0;
                    }
                    i16++;
                    i6 = 0;
                }
                i15++;
                i6 = 0;
            }
            return aVar5;
        } catch (Throwable th2) {
            th = th2;
            aVar3 = null;
        }
    }

    public static final a h(a aVar, a aVar2, a aVar3) {
        if (v2.a.b(e.class)) {
            return null;
        }
        try {
            g.f("x", aVar);
            g.f("w", aVar2);
            g.f("b", aVar3);
            int i6 = aVar.f3750a[0];
            int i9 = aVar3.f3750a[0];
            a aVarP = p(aVar, aVar2);
            float[] fArr = aVar3.f3752c;
            float[] fArr2 = aVarP.f3752c;
            for (int i10 = 0; i10 < i6; i10++) {
                for (int i11 = 0; i11 < i9; i11++) {
                    int i12 = (i10 * i9) + i11;
                    fArr2[i12] = fArr2[i12] + fArr[i11];
                }
            }
            return aVarP;
        } catch (Throwable th) {
            v2.a.a(th, e.class);
            return null;
        }
    }

    public static boolean i(View view, KeyEvent keyEvent) {
        ArrayList arrayList;
        int size;
        int iIndexOfKey;
        WeakHashMap weakHashMap = k0.f3286a;
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList2 = j0.f3280d;
        j0 j0Var = (j0) view.getTag(R.id.tag_unhandled_key_event_manager);
        WeakReference weakReference = null;
        if (j0Var == null) {
            j0Var = new j0();
            j0Var.f3281a = null;
            j0Var.f3282b = null;
            j0Var.f3283c = null;
            view.setTag(R.id.tag_unhandled_key_event_manager, j0Var);
        }
        WeakReference weakReference2 = j0Var.f3283c;
        if (weakReference2 != null && weakReference2.get() == keyEvent) {
            return false;
        }
        j0Var.f3283c = new WeakReference(keyEvent);
        if (j0Var.f3282b == null) {
            j0Var.f3282b = new SparseArray();
        }
        SparseArray sparseArray = j0Var.f3282b;
        if (keyEvent.getAction() == 1 && (iIndexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
            weakReference = (WeakReference) sparseArray.valueAt(iIndexOfKey);
            sparseArray.removeAt(iIndexOfKey);
        }
        if (weakReference == null) {
            weakReference = (WeakReference) sparseArray.get(keyEvent.getKeyCode());
        }
        if (weakReference == null) {
            return false;
        }
        View view2 = (View) weakReference.get();
        if (view2 == null || !view2.isAttachedToWindow() || (arrayList = (ArrayList) view2.getTag(R.id.tag_unhandled_key_listeners)) == null || (size = arrayList.size() - 1) < 0) {
            return true;
        }
        arrayList.get(size).getClass();
        throw new ClassCastException();
    }

    public static boolean j(i iVar, View view, Window.Callback callback, KeyEvent keyEvent) {
        DialogInterface.OnKeyListener onKeyListener;
        boolean zBooleanValue = false;
        if (iVar != null) {
            if (Build.VERSION.SDK_INT >= 28) {
                return iVar.superDispatchKeyEvent(keyEvent);
            }
            if (callback instanceof Activity) {
                Activity activity = (Activity) callback;
                activity.onUserInteraction();
                Window window = activity.getWindow();
                if (window.hasFeature(8)) {
                    ActionBar actionBar = activity.getActionBar();
                    if (keyEvent.getKeyCode() == 82 && actionBar != null) {
                        if (!f3776a) {
                            try {
                                f3777b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
                            } catch (NoSuchMethodException unused) {
                            }
                            f3776a = true;
                        }
                        Method method = f3777b;
                        if (method != null) {
                            try {
                                Object objInvoke = method.invoke(actionBar, keyEvent);
                                if (objInvoke != null) {
                                    zBooleanValue = ((Boolean) objInvoke).booleanValue();
                                }
                            } catch (IllegalAccessException | InvocationTargetException unused2) {
                            }
                        }
                        if (zBooleanValue) {
                            return true;
                        }
                    }
                }
                if (window.superDispatchKeyEvent(keyEvent)) {
                    return true;
                }
                View decorView = window.getDecorView();
                if (k0.b(decorView, keyEvent)) {
                    return true;
                }
                return keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
            }
            if (callback instanceof Dialog) {
                Dialog dialog = (Dialog) callback;
                if (!f3778c) {
                    try {
                        Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                        f3779d = declaredField;
                        declaredField.setAccessible(true);
                    } catch (NoSuchFieldException unused3) {
                    }
                    f3778c = true;
                }
                Field field = f3779d;
                if (field != null) {
                    try {
                        onKeyListener = (DialogInterface.OnKeyListener) field.get(dialog);
                    } catch (IllegalAccessException unused4) {
                        onKeyListener = null;
                    }
                } else {
                    onKeyListener = null;
                }
                if (onKeyListener != null && onKeyListener.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
                    return true;
                }
                Window window2 = dialog.getWindow();
                if (window2.superDispatchKeyEvent(keyEvent)) {
                    return true;
                }
                View decorView2 = window2.getDecorView();
                if (k0.b(decorView2, keyEvent)) {
                    return true;
                }
                return keyEvent.dispatch(dialog, decorView2 != null ? decorView2.getKeyDispatcherState() : null, dialog);
            }
            if ((view != null && k0.b(view, keyEvent)) || iVar.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
        }
        return false;
    }

    public static final a k(String[] strArr, a aVar) {
        if (v2.a.b(e.class)) {
            return null;
        }
        try {
            g.f("w", aVar);
            int length = strArr.length;
            int i6 = aVar.f3750a[1];
            a aVar2 = new a(new int[]{length, 128, i6});
            float[] fArr = aVar2.f3752c;
            float[] fArr2 = aVar.f3752c;
            for (int i9 = 0; i9 < length; i9++) {
                int[] iArrD = f.f3780a.d(strArr[i9]);
                for (int i10 = 0; i10 < 128; i10++) {
                    System.arraycopy(fArr2, iArrD[i10] * i6, fArr, (i6 * i10) + (i6 * 128 * i9), i6);
                }
            }
            return aVar2;
        } catch (Throwable th) {
            v2.a.a(th, e.class);
            return null;
        }
    }

    public static final void l(a aVar) {
        if (v2.a.b(e.class)) {
            return;
        }
        try {
            g.f("x", aVar);
            int[] iArr = aVar.f3750a;
            if (1 >= iArr.length) {
                return;
            }
            int length = iArr.length;
            int i6 = 1;
            for (int i9 = 1; i9 < length; i9++) {
                i6 *= aVar.f3750a[i9];
            }
            int[] iArr2 = {aVar.f3750a[0], i6};
            aVar.f3750a = iArr2;
            int iA = f.a(iArr2);
            float[] fArr = new float[iA];
            System.arraycopy(aVar.f3752c, 0, fArr, 0, Math.min(aVar.f3751b, iA));
            aVar.f3752c = fArr;
            aVar.f3751b = iA;
        } catch (Throwable th) {
            v2.a.a(th, e.class);
        }
    }

    public static final int m(int i6, int i9, int i10) {
        if (i10 > 0) {
            if (i6 < i9) {
                int i11 = i9 % i10;
                if (i11 < 0) {
                    i11 += i10;
                }
                int i12 = i6 % i10;
                if (i12 < 0) {
                    i12 += i10;
                }
                int i13 = (i11 - i12) % i10;
                if (i13 < 0) {
                    i13 += i10;
                }
                return i9 - i13;
            }
        } else {
            if (i10 >= 0) {
                throw new IllegalArgumentException("Step is zero.");
            }
            if (i6 > i9) {
                int i14 = -i10;
                int i15 = i6 % i14;
                if (i15 < 0) {
                    i15 += i14;
                }
                int i16 = i9 % i14;
                if (i16 < 0) {
                    i16 += i14;
                }
                int i17 = (i15 - i16) % i14;
                if (i17 < 0) {
                    i17 += i14;
                }
                return i17 + i9;
            }
        }
        return i9;
    }

    public static final boolean n(AssertionError assertionError) {
        Logger logger = n.f2465a;
        if (assertionError.getCause() != null) {
            String message = assertionError.getMessage();
            if (message != null ? k7.g.x(message, "getsockname failed") : false) {
                return true;
            }
        }
        return false;
    }

    public static final a o(a aVar, int i6) {
        a aVar2;
        a aVar3 = null;
        if (v2.a.b(e.class)) {
            return null;
        }
        try {
            g.f("x", aVar);
            int[] iArr = aVar.f3750a;
            int i9 = 0;
            int i10 = iArr[0];
            int i11 = iArr[1];
            int i12 = iArr[2];
            int i13 = (i11 - i6) + 1;
            a aVar4 = new a(new int[]{i10, i13, i12});
            float[] fArr = aVar.f3752c;
            float[] fArr2 = aVar4.f3752c;
            int i14 = 0;
            while (i14 < i10) {
                int i15 = i9;
                while (i15 < i12) {
                    int i16 = i9;
                    while (i16 < i13) {
                        int i17 = i16 * i12;
                        int i18 = (i14 * i13 * i12) + i17 + i15;
                        int i19 = (i14 * i11 * i12) + i17 + i15;
                        fArr2[i18] = Float.MIN_VALUE;
                        int i20 = i9;
                        while (i20 < i6) {
                            aVar2 = aVar3;
                            try {
                                fArr2[i18] = Math.max(fArr2[i18], fArr[(i20 * i12) + i19]);
                                i20++;
                                aVar3 = aVar2;
                            } catch (Throwable th) {
                                th = th;
                                v2.a.a(th, e.class);
                                return aVar2;
                            }
                        }
                        i16++;
                        i9 = 0;
                    }
                    i15++;
                    i9 = 0;
                }
                i14++;
                i9 = 0;
            }
            return aVar4;
        } catch (Throwable th2) {
            th = th2;
            aVar2 = aVar3;
        }
    }

    public static final a p(a aVar, a aVar2) {
        if (v2.a.b(e.class)) {
            return null;
        }
        try {
            g.f("x", aVar);
            g.f("w", aVar2);
            int i6 = aVar.f3750a[0];
            int[] iArr = aVar2.f3750a;
            int i9 = iArr[0];
            int i10 = iArr[1];
            a aVar3 = new a(new int[]{i6, i10});
            float[] fArr = aVar.f3752c;
            float[] fArr2 = aVar2.f3752c;
            float[] fArr3 = aVar3.f3752c;
            for (int i11 = 0; i11 < i6; i11++) {
                for (int i12 = 0; i12 < i10; i12++) {
                    int i13 = (i11 * i10) + i12;
                    fArr3[i13] = 0.0f;
                    for (int i14 = 0; i14 < i9; i14++) {
                        fArr3[i13] = (fArr[(i11 * i9) + i14] * fArr2[(i14 * i10) + i12]) + fArr3[i13];
                    }
                }
            }
            return aVar3;
        } catch (Throwable th) {
            v2.a.a(th, e.class);
            return null;
        }
    }

    public static final void s(a aVar) {
        if (v2.a.b(e.class)) {
            return;
        }
        try {
            g.f("x", aVar);
            float[] fArr = aVar.f3752c;
            int length = fArr.length;
            for (int i6 = 0; i6 < length; i6++) {
                if (fArr[i6] < 0.0f) {
                    fArr[i6] = 0.0f;
                }
            }
        } catch (Throwable th) {
            v2.a.a(th, e.class);
        }
    }

    public static final e8.c t(Socket socket) throws IOException {
        Logger logger = n.f2465a;
        v vVar = new v(socket);
        OutputStream outputStream = socket.getOutputStream();
        g.e("getOutputStream(...)", outputStream);
        return new e8.c(vVar, new e8.c(outputStream, vVar));
    }

    public static final void u(a aVar) {
        if (v2.a.b(e.class)) {
            return;
        }
        try {
            g.f("x", aVar);
            int[] iArr = aVar.f3750a;
            int i6 = iArr[0];
            int i9 = iArr[1];
            float[] fArr = aVar.f3752c;
            for (int i10 = 0; i10 < i6; i10++) {
                int i11 = i10 * i9;
                int i12 = i11 + i9;
                float f9 = Float.MIN_VALUE;
                for (int i13 = i11; i13 < i12; i13++) {
                    float f10 = fArr[i13];
                    if (f10 > f9) {
                        f9 = f10;
                    }
                }
                float f11 = 0.0f;
                for (int i14 = i11; i14 < i12; i14++) {
                    float fExp = (float) Math.exp(fArr[i14] - f9);
                    fArr[i14] = fExp;
                    f11 += fExp;
                }
                while (i11 < i12) {
                    fArr[i11] = fArr[i11] / f11;
                    i11++;
                }
            }
        } catch (Throwable th) {
            v2.a.a(th, e.class);
        }
    }

    public static final e8.d v(Socket socket) throws IOException {
        Logger logger = n.f2465a;
        v vVar = new v(socket);
        InputStream inputStream = socket.getInputStream();
        g.e("getInputStream(...)", inputStream);
        return new e8.d(vVar, 0, new e8.d(inputStream, 1, vVar));
    }

    public static void w(Activity activity) {
        View viewI;
        int iHashCode = activity.hashCode();
        HashMap map = o2.e.f4413d;
        HashMap map2 = null;
        if (!v2.a.b(o2.e.class)) {
            try {
                map2 = o2.e.f4413d;
            } catch (Throwable th) {
                v2.a.a(th, o2.e.class);
            }
        }
        Integer numValueOf = Integer.valueOf(iHashCode);
        Object eVar = map2.get(numValueOf);
        if (eVar == null) {
            eVar = new o2.e(activity);
            map2.put(numValueOf, eVar);
        }
        o2.e eVar2 = (o2.e) eVar;
        if (v2.a.b(o2.e.class)) {
            return;
        }
        try {
        } catch (Throwable th2) {
            v2.a.a(th2, o2.e.class);
        }
        if (v2.a.b(eVar2)) {
            return;
        }
        try {
            if (!eVar2.f4416c.getAndSet(true) && (viewI = k2.e.i((Activity) eVar2.f4414a.get())) != null) {
                ViewTreeObserver viewTreeObserver = viewI.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnGlobalLayoutListener(eVar2);
                    eVar2.a();
                    return;
                }
                return;
                v2.a.a(th2, o2.e.class);
            }
        } catch (Throwable th3) {
            v2.a.a(th3, eVar2);
        }
    }

    public static void x(Activity activity) {
        View viewI;
        int iHashCode = activity.hashCode();
        HashMap map = o2.e.f4413d;
        HashMap map2 = null;
        if (!v2.a.b(o2.e.class)) {
            try {
                map2 = o2.e.f4413d;
            } catch (Throwable th) {
                v2.a.a(th, o2.e.class);
            }
        }
        o2.e eVar = (o2.e) map2.remove(Integer.valueOf(iHashCode));
        if (eVar == null || v2.a.b(o2.e.class)) {
            return;
        }
        try {
        } catch (Throwable th2) {
            v2.a.a(th2, o2.e.class);
        }
        if (v2.a.b(eVar)) {
            return;
        }
        try {
            if (eVar.f4416c.getAndSet(false) && (viewI = k2.e.i((Activity) eVar.f4414a.get())) != null) {
                ViewTreeObserver viewTreeObserver = viewI.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnGlobalLayoutListener(eVar);
                    return;
                }
                return;
                v2.a.a(th2, o2.e.class);
            }
        } catch (Throwable th3) {
            v2.a.a(th3, eVar);
        }
    }

    public static final a y(a aVar) {
        if (v2.a.b(e.class)) {
            return null;
        }
        try {
            int[] iArr = aVar.f3750a;
            int i6 = iArr[0];
            int i9 = iArr[1];
            a aVar2 = new a(new int[]{i9, i6});
            float[] fArr = aVar.f3752c;
            float[] fArr2 = aVar2.f3752c;
            for (int i10 = 0; i10 < i6; i10++) {
                for (int i11 = 0; i11 < i9; i11++) {
                    fArr2[(i11 * i6) + i10] = fArr[(i10 * i9) + i11];
                }
            }
            return aVar2;
        } catch (Throwable th) {
            v2.a.a(th, e.class);
            return null;
        }
    }

    public static final a z(a aVar) {
        if (v2.a.b(e.class)) {
            return null;
        }
        try {
            int[] iArr = aVar.f3750a;
            int i6 = iArr[0];
            int i9 = iArr[1];
            int i10 = iArr[2];
            a aVar2 = new a(new int[]{i10, i9, i6});
            float[] fArr = aVar.f3752c;
            float[] fArr2 = aVar2.f3752c;
            for (int i11 = 0; i11 < i6; i11++) {
                for (int i12 = 0; i12 < i9; i12++) {
                    for (int i13 = 0; i13 < i10; i13++) {
                        fArr2[(i12 * i6) + (i13 * i6 * i9) + i11] = fArr[(i12 * i10) + (i11 * i9 * i10) + i13];
                    }
                }
            }
            return aVar2;
        } catch (Throwable th) {
            v2.a.a(th, e.class);
            return null;
        }
    }

    public abstract boolean c(h hVar, u.d dVar, u.d dVar2);

    public abstract boolean d(h hVar, Object obj, Object obj2);

    public abstract boolean e(h hVar, u.g gVar, u.g gVar2);

    public abstract void q(u.g gVar, u.g gVar2);

    public abstract void r(u.g gVar, Thread thread);
}
