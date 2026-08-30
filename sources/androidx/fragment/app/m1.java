package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class m1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f585a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17};

    public static final void a(int i6, View view, ViewGroup viewGroup) {
        d7.g.f("view", view);
        d7.g.f("container", viewGroup);
        int iE = e(i6);
        if (iE == 0) {
            ViewParent parent = view.getParent();
            ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup2 != null) {
                if (y0.J(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup2);
                }
                viewGroup2.removeView(view);
                return;
            }
            return;
        }
        if (iE == 1) {
            if (y0.J(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
            }
            ViewParent parent2 = view.getParent();
            if ((parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null) == null) {
                if (y0.J(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Adding view " + view + " to Container " + viewGroup);
                }
                viewGroup.addView(view);
            }
            view.setVisibility(0);
            return;
        }
        if (iE == 2) {
            if (y0.J(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
            }
            view.setVisibility(8);
            return;
        }
        if (iE != 3) {
            return;
        }
        if (y0.J(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
        }
        view.setVisibility(4);
    }

    public static /* synthetic */ boolean b(int i6, int i9) {
        if (i6 != 0) {
            return i6 == i9;
        }
        throw null;
    }

    public static String c(String str, c0 c0Var, String str2) {
        return str + c0Var + str2;
    }

    public static /* synthetic */ boolean d(Object obj) {
        return obj != null;
    }

    public static /* synthetic */ int e(int i6) {
        if (i6 != 0) {
            return i6 - 1;
        }
        throw null;
    }

    public static /* synthetic */ String f(int i6) {
        return i6 != 1 ? i6 != 2 ? i6 != 3 ? "null" : "REMOVING" : "ADDING" : "NONE";
    }

    public static /* synthetic */ String g(int i6) {
        return i6 != 1 ? i6 != 2 ? i6 != 3 ? i6 != 4 ? "null" : "INVISIBLE" : "GONE" : "VISIBLE" : "REMOVED";
    }

    public static /* synthetic */ int[] h(int i6) {
        int[] iArr = new int[i6];
        System.arraycopy(f585a, 0, iArr, 0, i6);
        return iArr;
    }
}
