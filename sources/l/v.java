package l;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class v implements d0, z, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Rect f3730a;

    public static int m(ListAdapter listAdapter, Context context, int i6) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        int i9 = 0;
        int i10 = 0;
        FrameLayout frameLayout = null;
        View view = null;
        for (int i11 = 0; i11 < count; i11++) {
            int itemViewType = listAdapter.getItemViewType(i11);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            if (frameLayout == null) {
                frameLayout = new FrameLayout(context);
            }
            view = listAdapter.getView(i11, view, frameLayout);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i6) {
                return i6;
            }
            if (measuredWidth > i9) {
                i9 = measuredWidth;
            }
        }
        return i9;
    }

    @Override // l.z
    public final boolean g(p pVar) {
        return false;
    }

    @Override // l.z
    public final boolean k(p pVar) {
        return false;
    }

    public abstract void l(n nVar);

    public abstract void n(View view);

    public abstract void o(boolean z5);

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i6, long j3) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        (listAdapter instanceof HeaderViewListAdapter ? (k) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (k) listAdapter).f3663a.q((MenuItem) listAdapter.getItem(i6), this, !(this instanceof h) ? 0 : 4);
    }

    public abstract void p(int i6);

    public abstract void q(int i6);

    public abstract void r(PopupWindow.OnDismissListener onDismissListener);

    public abstract void s(boolean z5);

    public abstract void t(int i6);

    @Override // l.z
    public final void h(Context context, n nVar) {
    }
}
