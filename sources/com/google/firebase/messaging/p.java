package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.view.ViewParent;
import androidx.core.widget.NestedScrollView;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f2137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f2138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f2139c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f2140d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f2141e;

    public IOException a(boolean z5, boolean z8, IOException iOException) {
        v7.i iVar = (v7.i) this.f2138b;
        if (iOException != null) {
            i(iOException);
        }
        return iVar.i(this, z8, z5, iOException);
    }

    public boolean b(float f9, float f10) {
        ViewParent viewParentD;
        if (this.f2137a && (viewParentD = d(0)) != null) {
            try {
                return viewParentD.onNestedPreFling((NestedScrollView) this.f2140d, f9, f10);
            } catch (AbstractMethodError e9) {
                Log.e("ViewParentCompat", "ViewParent " + viewParentD + " does not implement interface method onNestedPreFling", e9);
            }
        }
        return false;
    }

    public boolean c(int i6, int i9, int i10, int i11, int[] iArr, int i12, int[] iArr2) {
        ViewParent viewParentD;
        int i13;
        int i14;
        int[] iArr3;
        NestedScrollView nestedScrollView = (NestedScrollView) this.f2140d;
        if (this.f2137a && (viewParentD = d(i12)) != null) {
            if (i6 != 0 || i9 != 0 || i10 != 0 || i11 != 0) {
                if (iArr != null) {
                    nestedScrollView.getLocationInWindow(iArr);
                    i13 = iArr[0];
                    i14 = iArr[1];
                } else {
                    i13 = 0;
                    i14 = 0;
                }
                if (iArr2 == null) {
                    if (((int[]) this.f2141e) == null) {
                        this.f2141e = new int[2];
                    }
                    int[] iArr4 = (int[]) this.f2141e;
                    iArr4[0] = 0;
                    iArr4[1] = 0;
                    iArr3 = iArr4;
                } else {
                    iArr3 = iArr2;
                }
                if (viewParentD instanceof j0.p) {
                    ((j0.p) viewParentD).c(nestedScrollView, i6, i9, i10, i11, i12, iArr3);
                } else {
                    iArr3[0] = iArr3[0] + i10;
                    iArr3[1] = iArr3[1] + i11;
                    if (viewParentD instanceof j0.o) {
                        ((j0.o) viewParentD).d(nestedScrollView, i6, i9, i10, i11, i12);
                    } else if (i12 == 0) {
                        try {
                            viewParentD.onNestedScroll(nestedScrollView, i6, i9, i10, i11);
                        } catch (AbstractMethodError e9) {
                            Log.e("ViewParentCompat", "ViewParent " + viewParentD + " does not implement interface method onNestedScroll", e9);
                        }
                    }
                }
                if (iArr != null) {
                    nestedScrollView.getLocationInWindow(iArr);
                    iArr[0] = iArr[0] - i13;
                    iArr[1] = iArr[1] - i14;
                }
                return true;
            }
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
                return false;
            }
        }
        return false;
    }

    public ViewParent d(int i6) {
        if (i6 == 0) {
            return (ViewParent) this.f2138b;
        }
        if (i6 != 1) {
            return null;
        }
        return (ViewParent) this.f2139c;
    }

    public synchronized void e() {
        try {
            if (this.f2137a) {
                return;
            }
            Boolean boolG = g();
            this.f2140d = boolG;
            if (boolG == null) {
                com.getcapacitor.n nVar = new com.getcapacitor.n(3);
                this.f2139c = nVar;
                v4.j jVar = (v4.j) ((d5.d) this.f2138b);
                jVar.a(jVar.f5612c, nVar);
            }
            this.f2137a = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean f() {
        Boolean bool;
        try {
            e();
            bool = (Boolean) this.f2140d;
        } catch (Throwable th) {
            throw th;
        }
        return bool != null ? bool.booleanValue() : ((FirebaseMessaging) this.f2141e).f2032a.h();
    }

    public Boolean g() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        t4.g gVar = ((FirebaseMessaging) this.f2141e).f2032a;
        gVar.a();
        Context context = gVar.f5320a;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.messaging", 0);
        if (sharedPreferences.contains("auto_init")) {
            return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                return null;
            }
            return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public r7.t h(boolean z5) throws IOException {
        try {
            r7.t tVarG = ((w7.d) this.f2140d).g(z5);
            if (tVarG == null) {
                return tVarG;
            }
            tVarG.f5148m = this;
            return tVarG;
        } catch (IOException e9) {
            i(e9);
            throw e9;
        }
    }

    public void i(IOException iOException) {
        this.f2137a = true;
        ((v7.e) this.f2139c).c(iOException);
        v7.l lVarH = ((w7.d) this.f2140d).h();
        v7.i iVar = (v7.i) this.f2138b;
        synchronized (lVarH) {
            try {
                if (!(iOException instanceof y7.b0)) {
                    if (!(lVarH.f5691g != null) || (iOException instanceof y7.a)) {
                        lVarH.f5693j = true;
                        if (lVarH.f5696m == 0) {
                            v7.l.d(iVar.f5668a, lVarH.f5686b, iOException);
                            lVarH.f5695l++;
                        }
                    }
                } else if (((y7.b0) iOException).f6278a == 8) {
                    int i6 = lVarH.f5697n + 1;
                    lVarH.f5697n = i6;
                    if (i6 > 1) {
                        lVarH.f5693j = true;
                        lVarH.f5695l++;
                    }
                } else if (((y7.b0) iOException).f6278a != 9 || !iVar.f5679m) {
                    lVarH.f5693j = true;
                    lVarH.f5695l++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
