package m;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b2 extends m1 {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f3928m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f3929v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public y1 f3930w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public l.p f3931x;

    public b2(Context context, boolean z5) {
        super(context, z5);
        if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
            this.f3928m = 21;
            this.f3929v = 22;
        } else {
            this.f3928m = 22;
            this.f3929v = 21;
        }
    }

    @Override // m.m1, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        l.k kVar;
        int headersCount;
        int iPointToPosition;
        int i6;
        if (this.f3930w != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                headersCount = headerViewListAdapter.getHeadersCount();
                kVar = (l.k) headerViewListAdapter.getWrappedAdapter();
            } else {
                kVar = (l.k) adapter;
                headersCount = 0;
            }
            l.p pVarB = (motionEvent.getAction() == 10 || (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i6 = iPointToPosition - headersCount) < 0 || i6 >= kVar.getCount()) ? null : kVar.getItem(i6);
            l.p pVar = this.f3931x;
            if (pVar != pVarB) {
                l.n nVar = kVar.f3663a;
                if (pVar != null) {
                    this.f3930w.n(nVar, pVar);
                }
                this.f3931x = pVarB;
                if (pVarB != null) {
                    this.f3930w.l(nVar, pVarB);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i6, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i6 == this.f3928m) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView == null || i6 != this.f3929v) {
            return super.onKeyDown(i6, keyEvent);
        }
        setSelection(-1);
        ListAdapter adapter = getAdapter();
        (adapter instanceof HeaderViewListAdapter ? (l.k) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (l.k) adapter).f3663a.c(false);
        return true;
    }

    public void setHoverListener(y1 y1Var) {
        this.f3930w = y1Var;
    }

    @Override // m.m1, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}
