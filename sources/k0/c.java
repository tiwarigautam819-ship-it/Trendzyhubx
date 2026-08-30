package k0;

import android.R;
import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;
import j0.u;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f3485c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f3486d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f3487e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c f3488f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f3489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3490b;

    static {
        new c(null, 1, null);
        new c(null, 2, null);
        new c(null, 4, null);
        new c(null, 8, null);
        new c(null, 16, null);
        new c(null, 32, null);
        new c(null, 64, null);
        new c(null, 128, null);
        new c(null, 256, e.class);
        new c(null, 512, e.class);
        new c(null, 1024, f.class);
        new c(null, 2048, f.class);
        f3485c = new c(null, 4096, null);
        f3486d = new c(null, 8192, null);
        new c(null, 16384, null);
        new c(null, 32768, null);
        new c(null, 65536, null);
        new c(null, 131072, j.class);
        new c(null, 262144, null);
        new c(null, 524288, null);
        new c(null, 1048576, null);
        new c(null, 2097152, k.class);
        int i6 = Build.VERSION.SDK_INT;
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN, R.id.accessibilityActionShowOnScreen, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION, R.id.accessibilityActionScrollToPosition, h.class);
        f3487e = new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, R.id.accessibilityActionScrollUp, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT, R.id.accessibilityActionScrollLeft, null);
        f3488f = new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, R.id.accessibilityActionScrollDown, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT, R.id.accessibilityActionScrollRight, null);
        new c(i6 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp, null);
        new c(i6 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, R.id.accessibilityActionPageDown, null);
        new c(i6 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null);
        new c(i6 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, R.id.accessibilityActionPageRight, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK, R.id.accessibilityActionContextClick, null);
        new c(i6 >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, R.id.accessibilityActionSetProgress, i.class);
        new c(i6 >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, R.id.accessibilityActionMoveWindow, g.class);
        new c(i6 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, R.id.accessibilityActionShowTooltip, null);
        new c(i6 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, R.id.accessibilityActionHideTooltip, null);
        new c(i6 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold, null);
        new c(i6 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null, R.id.accessibilityActionImeEnter, null);
        new c(i6 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START : null, R.id.accessibilityActionDragStart, null);
        new c(i6 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP : null, R.id.accessibilityActionDragDrop, null);
        new c(i6 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL : null, R.id.accessibilityActionDragCancel, null);
        new c(i6 >= 33 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS : null, R.id.accessibilityActionShowTextSuggestions, null);
        new c(i6 >= 34 ? u.a() : null, R.id.accessibilityActionScrollInDirection, null);
    }

    public c(Object obj, int i6, Class cls) {
        this.f3490b = i6;
        if (obj == null) {
            this.f3489a = new AccessibilityNodeInfo.AccessibilityAction(i6, null);
        } else {
            this.f3489a = obj;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof c)) {
            return false;
        }
        Object obj2 = ((c) obj).f3489a;
        Object obj3 = this.f3489a;
        return obj3 == null ? obj2 == null : obj3.equals(obj2);
    }

    public final int hashCode() {
        Object obj = this.f3489a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AccessibilityActionCompat: ");
        String strB = d.b(this.f3490b);
        if (strB.equals("ACTION_UNKNOWN")) {
            Object obj = this.f3489a;
            if (((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel() != null) {
                strB = ((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel().toString();
            }
        }
        sb.append(strB);
        return sb.toString();
    }
}
