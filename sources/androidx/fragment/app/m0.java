package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m0 implements LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y0 f584a;

    public m0(y0 y0Var) {
        this.f584a = y0Var;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean zIsAssignableFrom;
        g1 g1VarG;
        boolean zEquals = j0.class.getName().equals(str);
        y0 y0Var = this.f584a;
        if (zEquals) {
            return new j0(context, attributeSet, y0Var);
        }
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s0.a.f5202a);
            if (attributeValue == null) {
                attributeValue = typedArrayObtainStyledAttributes.getString(0);
            }
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
            String string = typedArrayObtainStyledAttributes.getString(2);
            typedArrayObtainStyledAttributes.recycle();
            if (attributeValue != null) {
                try {
                    zIsAssignableFrom = c0.class.isAssignableFrom(r0.b(context.getClassLoader(), attributeValue));
                } catch (ClassNotFoundException unused) {
                    zIsAssignableFrom = false;
                }
                if (zIsAssignableFrom) {
                    int id = view != null ? view.getId() : 0;
                    if (id == -1 && resourceId == -1 && string == null) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                    }
                    c0 c0VarB = resourceId != -1 ? y0Var.B(resourceId) : null;
                    if (c0VarB == null && string != null) {
                        c0VarB = y0Var.C(string);
                    }
                    if (c0VarB == null && id != -1) {
                        c0VarB = y0Var.B(id);
                    }
                    if (c0VarB == null) {
                        r0 r0VarG = y0Var.G();
                        context.getClassLoader();
                        c0VarB = r0VarG.a(attributeValue);
                        c0VarB.f477v = true;
                        c0VarB.F = resourceId != 0 ? resourceId : id;
                        c0VarB.G = id;
                        c0VarB.H = string;
                        c0VarB.f478w = true;
                        c0VarB.B = y0Var;
                        g0 g0Var = y0Var.f661w;
                        c0VarB.C = g0Var;
                        h0 h0Var = g0Var.f522b;
                        c0VarB.N = true;
                        if ((g0Var != null ? g0Var.f521a : null) != null) {
                            c0VarB.N = true;
                        }
                        g1VarG = y0Var.a(c0VarB);
                        if (y0.J(2)) {
                            Log.v("FragmentManager", "Fragment " + c0VarB + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    } else {
                        if (c0VarB.f478w) {
                            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                        }
                        c0VarB.f478w = true;
                        c0VarB.B = y0Var;
                        g0 g0Var2 = y0Var.f661w;
                        c0VarB.C = g0Var2;
                        h0 h0Var2 = g0Var2.f522b;
                        c0VarB.N = true;
                        if ((g0Var2 != null ? g0Var2.f521a : null) != null) {
                            c0VarB.N = true;
                        }
                        g1VarG = y0Var.g(c0VarB);
                        if (y0.J(2)) {
                            Log.v("FragmentManager", "Retained Fragment " + c0VarB + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    }
                    ViewGroup viewGroup = (ViewGroup) view;
                    t0.b bVar = t0.c.f5298a;
                    t0.c.b(new t0.a(c0VarB, "Attempting to use <fragment> tag to add fragment " + c0VarB + " to container " + viewGroup));
                    t0.c.a(c0VarB).getClass();
                    c0VarB.O = viewGroup;
                    g1VarG.k();
                    g1VarG.j();
                    View view2 = c0VarB.P;
                    if (view2 == null) {
                        throw new IllegalStateException(q2.x.g("Fragment ", attributeValue, " did not create a view."));
                    }
                    if (resourceId != 0) {
                        view2.setId(resourceId);
                    }
                    if (c0VarB.P.getTag() == null) {
                        c0VarB.P.setTag(string);
                    }
                    c0VarB.P.addOnAttachStateChangeListener(new l0(this, g1VarG));
                    return c0VarB.P;
                }
            }
        }
        return null;
    }
}
