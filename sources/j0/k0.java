package j0;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.YaarWin.app.R;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static WeakHashMap f3286a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Field f3287b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f3288c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final x f3289d = new x();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final z f3290e = new z();

    public static o0 a(View view) {
        if (f3286a == null) {
            f3286a = new WeakHashMap();
        }
        o0 o0Var = (o0) f3286a.get(view);
        if (o0Var != null) {
            return o0Var;
        }
        o0 o0Var2 = new o0(view);
        f3286a.put(view, o0Var2);
        return o0Var2;
    }

    public static boolean b(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList = j0.f3280d;
        j0 j0Var = (j0) view.getTag(R.id.tag_unhandled_key_event_manager);
        if (j0Var == null) {
            j0Var = new j0();
            j0Var.f3281a = null;
            j0Var.f3282b = null;
            j0Var.f3283c = null;
            view.setTag(R.id.tag_unhandled_key_event_manager, j0Var);
        }
        if (keyEvent.getAction() == 0) {
            WeakHashMap weakHashMap = j0Var.f3281a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList arrayList2 = j0.f3280d;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    try {
                        if (j0Var.f3281a == null) {
                            j0Var.f3281a = new WeakHashMap();
                        }
                        for (int size = arrayList2.size() - 1; size >= 0; size--) {
                            ArrayList arrayList3 = j0.f3280d;
                            View view2 = (View) ((WeakReference) arrayList3.get(size)).get();
                            if (view2 == null) {
                                arrayList3.remove(size);
                            } else {
                                j0Var.f3281a.put(view2, Boolean.TRUE);
                                for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                    j0Var.f3281a.put((View) parent, Boolean.TRUE);
                                }
                            }
                        }
                    } finally {
                    }
                }
            }
        }
        View viewA = j0Var.a(view);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (viewA != null && !KeyEvent.isModifierKey(keyCode)) {
                if (j0Var.f3282b == null) {
                    j0Var.f3282b = new SparseArray();
                }
                j0Var.f3282b.put(keyCode, new WeakReference(viewA));
            }
        }
        return viewA != null;
    }

    public static View.AccessibilityDelegate c(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return g0.a(view);
        }
        if (f3288c) {
            return null;
        }
        if (f3287b == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f3287b = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f3288c = true;
                return null;
            }
        }
        try {
            Object obj = f3287b.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f3288c = true;
            return null;
        }
    }

    public static String[] d(m.r rVar) {
        return Build.VERSION.SDK_INT >= 31 ? i0.a(rVar) : (String[]) rVar.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static void e(View view, int i6) {
        Object tag;
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            int i9 = Build.VERSION.SDK_INT;
            Object objA = null;
            if (i9 >= 28) {
                tag = f0.a(view);
            } else {
                tag = view.getTag(R.id.tag_accessibility_pane_title);
                if (!CharSequence.class.isInstance(tag)) {
                    tag = null;
                }
            }
            boolean z5 = ((CharSequence) tag) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (view.getAccessibilityLiveRegion() != 0 || z5) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z5 ? 32 : 2048);
                accessibilityEventObtain.setContentChangeTypes(i6);
                if (z5) {
                    List<CharSequence> text = accessibilityEventObtain.getText();
                    if (i9 >= 28) {
                        objA = f0.a(view);
                    } else {
                        Object tag2 = view.getTag(R.id.tag_accessibility_pane_title);
                        if (CharSequence.class.isInstance(tag2)) {
                            objA = tag2;
                        }
                    }
                    text.add((CharSequence) objA);
                    if (view.getImportantForAccessibility() == 0) {
                        view.setImportantForAccessibility(1);
                    }
                }
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                return;
            }
            if (i6 != 32) {
                if (view.getParent() != null) {
                    try {
                        view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i6);
                        return;
                    } catch (AbstractMethodError e9) {
                        Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e9);
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(accessibilityEventObtain2);
            accessibilityEventObtain2.setEventType(32);
            accessibilityEventObtain2.setContentChangeTypes(i6);
            accessibilityEventObtain2.setSource(view);
            view.onPopulateAccessibilityEvent(accessibilityEventObtain2);
            List<CharSequence> text2 = accessibilityEventObtain2.getText();
            if (i9 >= 28) {
                objA = f0.a(view);
            } else {
                Object tag3 = view.getTag(R.id.tag_accessibility_pane_title);
                if (CharSequence.class.isInstance(tag3)) {
                    objA = tag3;
                }
            }
            text2.add((CharSequence) objA);
            accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static f f(View view, f fVar) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + fVar + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return i0.b(view, fVar);
        }
        m0.j jVar = (m0.j) view.getTag(R.id.tag_on_receive_content_listener);
        s sVar = f3289d;
        if (jVar == null) {
            if (view instanceof s) {
                sVar = (s) view;
            }
            return sVar.a(fVar);
        }
        f fVarA = m0.j.a(view, fVar);
        if (fVarA == null) {
            return null;
        }
        if (view instanceof s) {
            sVar = (s) view;
        }
        return sVar.a(fVarA);
    }

    public static void g(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i6, int i9) {
        if (Build.VERSION.SDK_INT >= 29) {
            g0.b(view, context, iArr, attributeSet, typedArray, i6, i9);
        }
    }

    public static void h(View view, b bVar) {
        if (bVar == null && (c(view) instanceof a)) {
            bVar = new b();
        }
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
        view.setAccessibilityDelegate(bVar == null ? null : bVar.f3252b);
    }

    public static void i(View view, CharSequence charSequence) {
        new y(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28, 1).d(view, charSequence);
        z zVar = f3290e;
        if (charSequence == null) {
            zVar.f3332a.remove(view);
            view.removeOnAttachStateChangeListener(zVar);
            view.getViewTreeObserver().removeOnGlobalLayoutListener(zVar);
        } else {
            zVar.f3332a.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(zVar);
            if (view.isAttachedToWindow()) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(zVar);
            }
        }
    }
}
