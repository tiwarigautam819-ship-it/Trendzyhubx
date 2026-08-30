package c2;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.EditText;
import android.widget.TextView;
import com.engagelab.privates.push.constants.MTPushConstants;
import d7.g;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import q2.g0;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f1030a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static WeakReference f1031b = new WeakReference(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Method f1032c;

    public static final ArrayList a(View view) {
        if (v2.a.b(e.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            if (view instanceof ViewGroup) {
                int childCount = ((ViewGroup) view).getChildCount();
                for (int i6 = 0; i6 < childCount; i6++) {
                    arrayList.add(((ViewGroup) view).getChildAt(i6));
                }
            }
            return arrayList;
        } catch (Throwable th) {
            v2.a.a(th, e.class);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0050 A[Catch: all -> 0x004e, TRY_LEAVE, TryCatch #3 {all -> 0x004e, blocks: (B:16:0x0027, B:19:0x0030, B:28:0x0047, B:33:0x0050, B:41:0x0060, B:39:0x005b, B:26:0x0041, B:23:0x003b), top: B:84:0x0027, outer: #2, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0060 A[Catch: all -> 0x004e, TRY_LEAVE, TryCatch #3 {all -> 0x004e, blocks: (B:16:0x0027, B:19:0x0030, B:28:0x0047, B:33:0x0050, B:41:0x0060, B:39:0x005b, B:26:0x0041, B:23:0x003b), top: B:84:0x0027, outer: #2, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0088 A[PHI: r3
      0x0088: PHI (r3v15 int) = (r3v14 int), (r3v16 int) binds: [B:48:0x0074, B:53:0x0081] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final int b(android.view.View r8) {
        /*
            java.lang.Class<c2.e> r0 = c2.e.class
            boolean r1 = v2.a.b(r0)
            r2 = 0
            if (r1 == 0) goto La
            return r2
        La:
            java.lang.String r1 = "view"
            d7.g.f(r1, r8)     // Catch: java.lang.Throwable -> L8a
            boolean r1 = r8 instanceof android.widget.ImageView     // Catch: java.lang.Throwable -> L8a
            if (r1 == 0) goto L15
            r1 = 2
            goto L16
        L15:
            r1 = r2
        L16:
            boolean r3 = r8.isClickable()     // Catch: java.lang.Throwable -> L8a
            if (r3 == 0) goto L1e
            r1 = r1 | 32
        L1e:
            boolean r3 = v2.a.b(r0)     // Catch: java.lang.Throwable -> L8a
            c2.e r4 = c2.e.f1030a
            if (r3 == 0) goto L27
            goto L6c
        L27:
            android.view.ViewParent r3 = r8.getParent()     // Catch: java.lang.Throwable -> L4e
            boolean r5 = r3 instanceof android.widget.AdapterView     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L30
            goto L66
        L30:
            java.lang.String r5 = "android.support.v4.view.NestedScrollingChild"
            boolean r6 = v2.a.b(r4)     // Catch: java.lang.Throwable -> L4e
            r7 = 0
            if (r6 == 0) goto L3b
        L39:
            r5 = r7
            goto L45
        L3b:
            java.lang.Class r5 = java.lang.Class.forName(r5)     // Catch: java.lang.ClassNotFoundException -> L39 java.lang.Throwable -> L40
            goto L45
        L40:
            r5 = move-exception
            v2.a.a(r5, r4)     // Catch: java.lang.Throwable -> L4e
            goto L39
        L45:
            if (r5 == 0) goto L50
            boolean r5 = r5.isInstance(r3)     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L50
            goto L66
        L4e:
            r3 = move-exception
            goto L69
        L50:
            boolean r5 = v2.a.b(r4)     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L57
            goto L5e
        L57:
            java.lang.Class<j0.n> r7 = j0.n.class
            goto L5e
        L5a:
            r5 = move-exception
            v2.a.a(r5, r4)     // Catch: java.lang.Throwable -> L4e
        L5e:
            if (r7 == 0) goto L6c
            boolean r3 = r7.isInstance(r3)     // Catch: java.lang.Throwable -> L4e
            if (r3 == 0) goto L6c
        L66:
            r1 = r1 | 512(0x200, float:7.17E-43)
            goto L6c
        L69:
            v2.a.a(r3, r0)     // Catch: java.lang.Throwable -> L8a
        L6c:
            boolean r3 = r8 instanceof android.widget.TextView     // Catch: java.lang.Throwable -> L8a
            if (r3 == 0) goto L93
            r3 = r1 | 1025(0x401, float:1.436E-42)
            boolean r4 = r8 instanceof android.widget.Button     // Catch: java.lang.Throwable -> L8a
            if (r4 == 0) goto L88
            r3 = r1 | 1029(0x405, float:1.442E-42)
            boolean r4 = r8 instanceof android.widget.Switch     // Catch: java.lang.Throwable -> L8a
            if (r4 == 0) goto L7f
            r1 = r1 | 9221(0x2405, float:1.2921E-41)
            goto L8c
        L7f:
            boolean r4 = r8 instanceof android.widget.CheckBox     // Catch: java.lang.Throwable -> L8a
            if (r4 == 0) goto L88
            r3 = 33797(0x8405, float:4.736E-41)
            r1 = r1 | r3
            goto L8c
        L88:
            r1 = r3
            goto L8c
        L8a:
            r8 = move-exception
            goto Lc3
        L8c:
            boolean r8 = r8 instanceof android.widget.EditText     // Catch: java.lang.Throwable -> L8a
            if (r8 == 0) goto Lc2
            r1 = r1 | 2048(0x800, float:2.87E-42)
            goto Lc2
        L93:
            boolean r3 = r8 instanceof android.widget.Spinner     // Catch: java.lang.Throwable -> L8a
            if (r3 != 0) goto Lc0
            boolean r3 = r8 instanceof android.widget.DatePicker     // Catch: java.lang.Throwable -> L8a
            if (r3 == 0) goto L9c
            goto Lc0
        L9c:
            boolean r3 = r8 instanceof android.widget.RatingBar     // Catch: java.lang.Throwable -> L8a
            if (r3 == 0) goto La4
            r8 = 65536(0x10000, float:9.1835E-41)
            r1 = r1 | r8
            goto Lc2
        La4:
            boolean r3 = r8 instanceof android.widget.RadioGroup     // Catch: java.lang.Throwable -> L8a
            if (r3 == 0) goto Lab
            r1 = r1 | 16384(0x4000, float:2.2959E-41)
            goto Lc2
        Lab:
            boolean r3 = r8 instanceof android.view.ViewGroup     // Catch: java.lang.Throwable -> L8a
            if (r3 == 0) goto Lc2
            java.lang.ref.WeakReference r3 = c2.e.f1031b     // Catch: java.lang.Throwable -> L8a
            java.lang.Object r3 = r3.get()     // Catch: java.lang.Throwable -> L8a
            android.view.View r3 = (android.view.View) r3     // Catch: java.lang.Throwable -> L8a
            boolean r8 = r4.l(r8, r3)     // Catch: java.lang.Throwable -> L8a
            if (r8 == 0) goto Lc2
            r1 = r1 | 64
            goto Lc2
        Lc0:
            r1 = r1 | 4096(0x1000, float:5.74E-42)
        Lc2:
            return r1
        Lc3:
            v2.a.a(r8, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: c2.e.b(android.view.View):int");
    }

    public static final JSONObject c(View view) {
        if (v2.a.b(e.class)) {
            return null;
        }
        try {
            g.f("view", view);
            if (view.getClass().getName().equals("com.facebook.react.ReactRootView")) {
                f1031b = new WeakReference(view);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                m(view, jSONObject);
                JSONArray jSONArray = new JSONArray();
                ArrayList arrayListA = a(view);
                int size = arrayListA.size();
                for (int i6 = 0; i6 < size; i6++) {
                    jSONArray.put(c((View) arrayListA.get(i6)));
                }
                jSONObject.put("childviews", jSONArray);
                return jSONObject;
            } catch (JSONException e9) {
                Log.e("c2.e", "Failed to create JSONObject for view.", e9);
                return jSONObject;
            }
        } catch (Throwable th) {
            v2.a.a(th, e.class);
            return null;
        }
    }

    public static final View.OnClickListener e(View view) {
        Field declaredField;
        if (v2.a.b(e.class)) {
            return null;
        }
        try {
            Field declaredField2 = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
            if (declaredField2 != null) {
                declaredField2.setAccessible(true);
            }
            Object obj = declaredField2.get(view);
            if (obj == null || (declaredField = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener")) == null) {
                return null;
            }
            declaredField.setAccessible(true);
            Object obj2 = declaredField.get(obj);
            g.d("null cannot be cast to non-null type android.view.View.OnClickListener", obj2);
            return (View.OnClickListener) obj2;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException unused) {
            return null;
        } catch (Throwable th) {
            v2.a.a(th, e.class);
            return null;
        }
    }

    public static final View.OnTouchListener f(View view) {
        Field declaredField;
        try {
            if (!v2.a.b(e.class)) {
                try {
                    Field declaredField2 = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
                    if (declaredField2 != null) {
                        declaredField2.setAccessible(true);
                    }
                    Object obj = declaredField2.get(view);
                    if (obj != null && (declaredField = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnTouchListener")) != null) {
                        declaredField.setAccessible(true);
                        Object obj2 = declaredField.get(obj);
                        g.d("null cannot be cast to non-null type android.view.View.OnTouchListener", obj2);
                        return (View.OnTouchListener) obj2;
                    }
                } catch (ClassNotFoundException unused) {
                    r rVar = r.f5918a;
                } catch (IllegalAccessException unused2) {
                    r rVar2 = r.f5918a;
                } catch (NoSuchFieldException unused3) {
                    r rVar3 = r.f5918a;
                }
            }
            return null;
        } catch (Throwable th) {
            v2.a.a(th, e.class);
            return null;
        }
    }

    public static final String g(View view) {
        if (v2.a.b(e.class)) {
            return null;
        }
        try {
            CharSequence hint = view instanceof EditText ? ((EditText) view).getHint() : view instanceof TextView ? ((TextView) view).getHint() : null;
            if (hint == null) {
                return "";
            }
            String string = hint.toString();
            return string == null ? "" : string;
        } catch (Throwable th) {
            v2.a.a(th, e.class);
            return null;
        }
    }

    public static final ViewGroup h(View view) {
        if (!v2.a.b(e.class)) {
            try {
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    return (ViewGroup) parent;
                }
            } catch (Throwable th) {
                v2.a.a(th, e.class);
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.String i(android.view.View r10) {
        /*
            Method dump skipped, instruction units count: 271
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c2.e.i(android.view.View):java.lang.String");
    }

    public static final void m(View view, JSONObject jSONObject) {
        if (v2.a.b(e.class)) {
            return;
        }
        try {
            g.f("view", view);
            try {
                String strI = i(view);
                String strG = g(view);
                Object tag = view.getTag();
                CharSequence contentDescription = view.getContentDescription();
                jSONObject.put("classname", view.getClass().getCanonicalName());
                jSONObject.put("classtypebitmask", b(view));
                jSONObject.put("id", view.getId());
                if (d.b(view)) {
                    jSONObject.put("text", "");
                    jSONObject.put("is_user_input", true);
                } else {
                    jSONObject.put("text", g0.e(g0.M(strI)));
                }
                jSONObject.put("hint", g0.e(g0.M(strG)));
                if (tag != null) {
                    jSONObject.put(MTPushConstants.Operation.KEY_TAG, g0.e(g0.M(tag.toString())));
                }
                if (contentDescription != null) {
                    jSONObject.put("description", g0.e(g0.M(contentDescription.toString())));
                }
                jSONObject.put("dimension", f1030a.d(view));
            } catch (JSONException unused) {
                r rVar = r.f5918a;
            }
        } catch (Throwable th) {
            v2.a.a(th, e.class);
        }
    }

    public final JSONObject d(View view) {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("top", view.getTop());
                jSONObject.put("left", view.getLeft());
                jSONObject.put("width", view.getWidth());
                jSONObject.put("height", view.getHeight());
                jSONObject.put("scrollx", view.getScrollX());
                jSONObject.put("scrolly", view.getScrollY());
                jSONObject.put("visibility", view.getVisibility());
                return jSONObject;
            } catch (JSONException e9) {
                Log.e("c2.e", "Failed to create JSONObject for dimension.", e9);
                return jSONObject;
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    public final View j(float[] fArr, View view) {
        if (!v2.a.b(this)) {
            try {
                k();
                Method method = f1032c;
                if (method != null && view != null) {
                    try {
                        try {
                            Object objInvoke = method.invoke(null, fArr, view);
                            g.d("null cannot be cast to non-null type android.view.View", objInvoke);
                            View view2 = (View) objInvoke;
                            if (view2.getId() > 0) {
                                Object parent = view2.getParent();
                                g.d("null cannot be cast to non-null type android.view.View", parent);
                                return (View) parent;
                            }
                        } catch (IllegalAccessException unused) {
                            r rVar = r.f5918a;
                        }
                    } catch (InvocationTargetException unused2) {
                        r rVar2 = r.f5918a;
                    }
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return null;
            }
        }
        return null;
    }

    public final void k() {
        if (v2.a.b(this)) {
            return;
        }
        try {
            if (f1032c != null) {
                return;
            }
            try {
                Method declaredMethod = Class.forName("com.facebook.react.uimanager.TouchTargetHelper").getDeclaredMethod("findTouchTargetView", float[].class, ViewGroup.class);
                f1032c = declaredMethod;
                if (declaredMethod == null) {
                    throw new IllegalStateException("Required value was null.");
                }
                declaredMethod.setAccessible(true);
            } catch (ClassNotFoundException unused) {
                r rVar = r.f5918a;
            } catch (NoSuchMethodException unused2) {
                r rVar2 = r.f5918a;
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final boolean l(View view, View view2) {
        if (v2.a.b(this)) {
            return false;
        }
        try {
            g.f("view", view);
            if (!view.getClass().getName().equals("com.facebook.react.views.view.ReactViewGroup")) {
                return false;
            }
            float[] fArr = null;
            if (!v2.a.b(this)) {
                try {
                    view.getLocationOnScreen(new int[2]);
                    fArr = new float[]{r4[0], r4[1]};
                } catch (Throwable th) {
                    v2.a.a(th, this);
                }
            }
            View viewJ = j(fArr, view2);
            if (viewJ != null) {
                return viewJ.getId() == view.getId();
            }
            return false;
        } catch (Throwable th2) {
            v2.a.a(th2, this);
            return false;
        }
    }
}
