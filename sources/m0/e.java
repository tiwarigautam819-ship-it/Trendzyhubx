package m0;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ScrollView;
import androidx.core.widget.NestedScrollView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends j0.b {
    @Override // j0.b
    public final void a(View view, AccessibilityEvent accessibilityEvent) {
        super.a(view, accessibilityEvent);
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        accessibilityEvent.setClassName(ScrollView.class.getName());
        accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
        accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
        accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
        accessibilityEvent.setMaxScrollX(nestedScrollView.getScrollX());
        accessibilityEvent.setMaxScrollY(nestedScrollView.getScrollRange());
    }

    @Override // j0.b
    public final void b(View view, k0.d dVar) {
        int scrollRange;
        AccessibilityNodeInfo accessibilityNodeInfo = dVar.f3492a;
        this.f3251a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        accessibilityNodeInfo.setClassName(ScrollView.class.getName());
        if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
            return;
        }
        accessibilityNodeInfo.setScrollable(true);
        if (nestedScrollView.getScrollY() > 0) {
            accessibilityNodeInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) k0.c.f3486d.f3489a);
            accessibilityNodeInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) k0.c.f3487e.f3489a);
        }
        if (nestedScrollView.getScrollY() < scrollRange) {
            accessibilityNodeInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) k0.c.f3485c.f3489a);
            accessibilityNodeInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) k0.c.f3488f.f3489a);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006a  */
    @Override // j0.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean c(android.view.View r5, int r6, android.os.Bundle r7) {
        /*
            r4 = this;
            boolean r7 = super.c(r5, r6, r7)
            r0 = 1
            if (r7 == 0) goto L8
            return r0
        L8:
            androidx.core.widget.NestedScrollView r5 = (androidx.core.widget.NestedScrollView) r5
            boolean r7 = r5.isEnabled()
            r1 = 0
            if (r7 != 0) goto L13
            goto L95
        L13:
            int r7 = r5.getHeight()
            android.graphics.Rect r2 = new android.graphics.Rect
            r2.<init>()
            android.graphics.Matrix r3 = r5.getMatrix()
            boolean r3 = r3.isIdentity()
            if (r3 == 0) goto L30
            boolean r3 = r5.getGlobalVisibleRect(r2)
            if (r3 == 0) goto L30
            int r7 = r2.height()
        L30:
            r2 = 4096(0x1000, float:5.74E-42)
            if (r6 == r2) goto L6a
            r2 = 8192(0x2000, float:1.148E-41)
            if (r6 == r2) goto L43
            r2 = 16908344(0x1020038, float:2.3877386E-38)
            if (r6 == r2) goto L43
            r2 = 16908346(0x102003a, float:2.3877392E-38)
            if (r6 == r2) goto L6a
            goto L95
        L43:
            int r6 = r5.getPaddingBottom()
            int r7 = r7 - r6
            int r6 = r5.getPaddingTop()
            int r7 = r7 - r6
            int r6 = r5.getScrollY()
            int r6 = r6 - r7
            int r6 = java.lang.Math.max(r6, r1)
            int r7 = r5.getScrollY()
            if (r6 == r7) goto L95
            int r7 = r5.getScrollX()
            int r1 = r1 - r7
            int r7 = r5.getScrollY()
            int r6 = r6 - r7
            r5.v(r1, r6, r0)
            return r0
        L6a:
            int r6 = r5.getPaddingBottom()
            int r7 = r7 - r6
            int r6 = r5.getPaddingTop()
            int r7 = r7 - r6
            int r6 = r5.getScrollY()
            int r6 = r6 + r7
            int r7 = r5.getScrollRange()
            int r6 = java.lang.Math.min(r6, r7)
            int r7 = r5.getScrollY()
            if (r6 == r7) goto L95
            int r7 = r5.getScrollX()
            int r1 = r1 - r7
            int r7 = r5.getScrollY()
            int r6 = r6 - r7
            r5.v(r1, r6, r0)
            return r0
        L95:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: m0.e.c(android.view.View, int, android.os.Bundle):boolean");
    }
}
