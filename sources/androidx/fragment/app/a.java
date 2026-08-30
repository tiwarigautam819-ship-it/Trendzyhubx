package androidx.fragment.app;

import android.util.Log;
import com.engagelab.privates.core.api.WakeMessage;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f423f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f424g;
    public String h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f425i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f426j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f427k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public CharSequence f428l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ArrayList f429m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ArrayList f430n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f431o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ArrayList f432p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final y0 f433q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f434r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f435s;

    public a(y0 y0Var) {
        y0Var.G();
        g0 g0Var = y0Var.f661w;
        if (g0Var != null) {
            g0Var.f522b.getClassLoader();
        }
        this.f418a = new ArrayList();
        this.f431o = false;
        this.f435s = -1;
        this.f433q = y0Var;
    }

    @Override // androidx.fragment.app.v0
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (y0.J(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f424g) {
            return true;
        }
        this.f433q.f643d.add(this);
        return true;
    }

    public final void b(h1 h1Var) {
        this.f418a.add(h1Var);
        h1Var.f537d = this.f419b;
        h1Var.f538e = this.f420c;
        h1Var.f539f = this.f421d;
        h1Var.f540g = this.f422e;
    }

    public final void c(int i6) {
        if (this.f424g) {
            if (y0.J(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i6);
            }
            ArrayList arrayList = this.f418a;
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                h1 h1Var = (h1) arrayList.get(i9);
                c0 c0Var = h1Var.f535b;
                if (c0Var != null) {
                    c0Var.A += i6;
                    if (y0.J(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + h1Var.f535b + " to " + h1Var.f535b.A);
                    }
                }
            }
        }
    }

    public final int d(boolean z5, boolean z8) {
        if (this.f434r) {
            throw new IllegalStateException("commit already called");
        }
        if (y0.J(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new j1());
            f("  ", printWriter, true);
            printWriter.close();
        }
        this.f434r = true;
        boolean z9 = this.f424g;
        y0 y0Var = this.f433q;
        if (z9) {
            this.f435s = y0Var.f649k.getAndIncrement();
        } else {
            this.f435s = -1;
        }
        if (z8) {
            y0Var.x(this, z5);
        }
        return this.f435s;
    }

    public final void e(int i6, c0 c0Var, String str) {
        String str2 = c0Var.V;
        if (str2 != null) {
            t0.c.c(c0Var, str2);
        }
        Class<?> cls = c0Var.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str3 = c0Var.H;
            if (str3 != null && !str.equals(str3)) {
                throw new IllegalStateException("Can't change tag of fragment " + c0Var + ": was " + c0Var.H + " now " + str);
            }
            c0Var.H = str;
        }
        if (i6 != 0) {
            if (i6 == -1) {
                throw new IllegalArgumentException("Can't add fragment " + c0Var + " with tag " + str + " to container view with no id");
            }
            int i9 = c0Var.F;
            if (i9 != 0 && i9 != i6) {
                throw new IllegalStateException("Can't change container ID of fragment " + c0Var + ": was " + c0Var.F + " now " + i6);
            }
            c0Var.F = i6;
            c0Var.G = i6;
        }
        b(new h1(1, c0Var));
        c0Var.B = this.f433q;
    }

    public final void f(String str, PrintWriter printWriter, boolean z5) {
        String str2;
        if (z5) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.h);
            printWriter.print(" mIndex=");
            printWriter.print(this.f435s);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f434r);
            if (this.f423f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f423f));
            }
            if (this.f419b != 0 || this.f420c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f419b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f420c));
            }
            if (this.f421d != 0 || this.f422e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f421d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f422e));
            }
            if (this.f425i != 0 || this.f426j != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f425i));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f426j);
            }
            if (this.f427k != 0 || this.f428l != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f427k));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f428l);
            }
        }
        ArrayList arrayList = this.f418a;
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            h1 h1Var = (h1) arrayList.get(i6);
            switch (h1Var.f534a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case WakeMessage.ACTIVITY /* 8 */:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + h1Var.f534a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i6);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(h1Var.f535b);
            if (z5) {
                if (h1Var.f537d != 0 || h1Var.f538e != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(h1Var.f537d));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(h1Var.f538e));
                }
                if (h1Var.f539f != 0 || h1Var.f540g != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(h1Var.f539f));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(h1Var.f540g));
                }
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f435s >= 0) {
            sb.append(" #");
            sb.append(this.f435s);
        }
        if (this.h != null) {
            sb.append(" ");
            sb.append(this.h);
        }
        sb.append("}");
        return sb.toString();
    }
}
