package org.apache.cordova;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f4527a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedList f4528b = new LinkedList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f4529c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public f0 f4530d;

    public static void c(g0 g0Var, StringBuilder sb) {
        sb.append(g0Var.b());
        sb.append(' ');
        String str = g0Var.f4520a;
        m0 m0Var = g0Var.f4521b;
        if (m0Var == null) {
            sb.append('J');
            sb.append(str);
            return;
        }
        int i6 = m0Var.f4548a;
        boolean z5 = i6 == 0;
        boolean z8 = i6 == 1;
        boolean z9 = m0Var.f4550c;
        sb.append((z5 || z8) ? 'S' : 'F');
        sb.append(z9 ? '1' : '0');
        sb.append(i6);
        sb.append(' ');
        sb.append(str);
        sb.append(' ');
        g0.e(sb, m0Var);
    }

    public final void a(m0 m0Var, String str) {
        if (str == null) {
            Log.e("JsMessageQueue", "Got plugin result with no callbackId", new Throwable());
            return;
        }
        boolean z5 = m0Var.f4548a == 0;
        boolean z8 = m0Var.f4550c;
        if (z5 && z8) {
            return;
        }
        b(new g0(m0Var, str));
    }

    public final void b(g0 g0Var) {
        synchronized (this) {
            try {
                if (this.f4530d == null) {
                    return;
                }
                this.f4528b.add(g0Var);
                if (!this.f4527a) {
                    this.f4530d.onNativeToJsMessageAvailable(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String d(boolean z5) {
        synchronized (this) {
            try {
                f0 f0Var = this.f4530d;
                if (f0Var == null) {
                    return null;
                }
                f0Var.notifyOfFlush(this, z5);
                if (this.f4528b.isEmpty()) {
                    return null;
                }
                Iterator it = this.f4528b.iterator();
                int i6 = 0;
                int i9 = 0;
                while (it.hasNext()) {
                    int iB = ((g0) it.next()).b();
                    int length = String.valueOf(iB).length() + iB + 1;
                    if (i6 > 0 && i9 + length > 16777216) {
                        break;
                    }
                    i9 += length;
                    i6++;
                }
                StringBuilder sb = new StringBuilder(i9);
                for (int i10 = 0; i10 < i6; i10++) {
                    c((g0) this.f4528b.removeFirst(), sb);
                }
                if (!this.f4528b.isEmpty()) {
                    sb.append('*');
                }
                return sb.toString();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String e() {
        synchronized (this) {
            try {
                if (this.f4528b.size() == 0) {
                    return null;
                }
                Iterator it = this.f4528b.iterator();
                int i6 = 0;
                int i9 = 0;
                while (it.hasNext()) {
                    int iB = ((g0) it.next()).b() + 50;
                    if (i6 > 0 && i9 + iB > 16777216) {
                        break;
                    }
                    i9 += iB;
                    i6++;
                }
                int i10 = i6 == this.f4528b.size() ? 1 : 0;
                StringBuilder sb = new StringBuilder(i9 + (i10 != 0 ? 0 : 100));
                for (int i11 = 0; i11 < i6; i11++) {
                    g0 g0Var = (g0) this.f4528b.removeFirst();
                    if (i10 == 0 || i11 + 1 != i6) {
                        sb.append("try{");
                        g0Var.d(sb);
                        sb.append("}finally{");
                    } else {
                        g0Var.d(sb);
                    }
                }
                if (i10 == 0) {
                    sb.append("window.setTimeout(function(){cordova.require('cordova/plugin/android/polling').pollOnce();},0);");
                }
                while (i10 < i6) {
                    sb.append('}');
                    i10++;
                }
                return sb.toString();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f(int i6) {
        if (i6 < -1 || i6 >= this.f4529c.size()) {
            return;
        }
        f0 f0Var = i6 < 0 ? null : (f0) this.f4529c.get(i6);
        if (f0Var != this.f4530d) {
            synchronized (this) {
                try {
                    this.f4530d = f0Var;
                    if (f0Var != null) {
                        f0Var.reset();
                        if (!this.f4527a && !this.f4528b.isEmpty()) {
                            f0Var.onNativeToJsMessageAvailable(this);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void g(boolean z5) {
        f0 f0Var;
        if (this.f4527a && z5) {
            Log.e("JsMessageQueue", "nested call to setPaused detected.", new Throwable());
        }
        this.f4527a = z5;
        if (z5) {
            return;
        }
        synchronized (this) {
            try {
                if (!this.f4528b.isEmpty() && (f0Var = this.f4530d) != null) {
                    f0Var.onNativeToJsMessageAvailable(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
