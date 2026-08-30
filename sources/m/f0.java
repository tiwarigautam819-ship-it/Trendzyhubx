package m;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f0 implements ListAdapter, SpinnerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SpinnerAdapter f3949a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ListAdapter f3950b;

    @Override // android.widget.ListAdapter
    public final boolean areAllItemsEnabled() {
        ListAdapter listAdapter = this.f3950b;
        if (listAdapter != null) {
            return listAdapter.areAllItemsEnabled();
        }
        return true;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        SpinnerAdapter spinnerAdapter = this.f3949a;
        if (spinnerAdapter == null) {
            return 0;
        }
        return spinnerAdapter.getCount();
    }

    @Override // android.widget.SpinnerAdapter
    public final View getDropDownView(int i6, View view, ViewGroup viewGroup) {
        SpinnerAdapter spinnerAdapter = this.f3949a;
        if (spinnerAdapter == null) {
            return null;
        }
        return spinnerAdapter.getDropDownView(i6, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i6) {
        SpinnerAdapter spinnerAdapter = this.f3949a;
        if (spinnerAdapter == null) {
            return null;
        }
        return spinnerAdapter.getItem(i6);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i6) {
        SpinnerAdapter spinnerAdapter = this.f3949a;
        if (spinnerAdapter == null) {
            return -1L;
        }
        return spinnerAdapter.getItemId(i6);
    }

    @Override // android.widget.Adapter
    public final int getItemViewType(int i6) {
        return 0;
    }

    @Override // android.widget.Adapter
    public final View getView(int i6, View view, ViewGroup viewGroup) {
        return getDropDownView(i6, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public final int getViewTypeCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    public final boolean hasStableIds() {
        SpinnerAdapter spinnerAdapter = this.f3949a;
        return spinnerAdapter != null && spinnerAdapter.hasStableIds();
    }

    @Override // android.widget.Adapter
    public final boolean isEmpty() {
        return getCount() == 0;
    }

    @Override // android.widget.ListAdapter
    public final boolean isEnabled(int i6) {
        ListAdapter listAdapter = this.f3950b;
        if (listAdapter != null) {
            return listAdapter.isEnabled(i6);
        }
        return true;
    }

    @Override // android.widget.Adapter
    public final void registerDataSetObserver(DataSetObserver dataSetObserver) {
        SpinnerAdapter spinnerAdapter = this.f3949a;
        if (spinnerAdapter != null) {
            spinnerAdapter.registerDataSetObserver(dataSetObserver);
        }
    }

    @Override // android.widget.Adapter
    public final void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        SpinnerAdapter spinnerAdapter = this.f3949a;
        if (spinnerAdapter != null) {
            spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
        }
    }
}
