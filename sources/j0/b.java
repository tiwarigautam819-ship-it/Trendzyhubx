package j0;

import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.YaarWin.app.R;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final View.AccessibilityDelegate f3250c = new View.AccessibilityDelegate();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View.AccessibilityDelegate f3251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f3252b;

    public b() {
        this(f3250c);
    }

    public void a(View view, AccessibilityEvent accessibilityEvent) {
        this.f3251a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void b(View view, k0.d dVar) {
        this.f3251a.onInitializeAccessibilityNodeInfo(view, dVar.f3492a);
    }

    public boolean c(View view, int i6, Bundle bundle) {
        WeakReference weakReference;
        ClickableSpan clickableSpan;
        List list = (List) view.getTag(R.id.tag_accessibility_actions);
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        for (int i9 = 0; i9 < list.size() && ((AccessibilityNodeInfo.AccessibilityAction) ((k0.c) list.get(i9)).f3489a).getId() != i6; i9++) {
        }
        boolean zPerformAccessibilityAction = this.f3251a.performAccessibilityAction(view, i6, bundle);
        if (zPerformAccessibilityAction || i6 != R.id.accessibility_action_clickable_span || bundle == null) {
            return zPerformAccessibilityAction;
        }
        int i10 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
        SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
        if (sparseArray != null && (weakReference = (WeakReference) sparseArray.get(i10)) != null && (clickableSpan = (ClickableSpan) weakReference.get()) != null) {
            CharSequence text = view.createAccessibilityNodeInfo().getText();
            ClickableSpan[] clickableSpanArr = text instanceof Spanned ? (ClickableSpan[]) ((Spanned) text).getSpans(0, text.length(), ClickableSpan.class) : null;
            for (int i11 = 0; clickableSpanArr != null && i11 < clickableSpanArr.length; i11++) {
                if (clickableSpan.equals(clickableSpanArr[i11])) {
                    clickableSpan.onClick(view);
                    return true;
                }
            }
        }
        return false;
    }

    public b(View.AccessibilityDelegate accessibilityDelegate) {
        this.f3251a = accessibilityDelegate;
        this.f3252b = new a(this);
    }
}
