package l;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n f3663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3664b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3665c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f3666d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LayoutInflater f3667e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f3668f;

    public k(n nVar, LayoutInflater layoutInflater, boolean z5, int i6) {
        this.f3666d = z5;
        this.f3667e = layoutInflater;
        this.f3663a = nVar;
        this.f3668f = i6;
        a();
    }

    public final void a() {
        n nVar = this.f3663a;
        p pVar = nVar.f3690v;
        if (pVar != null) {
            nVar.i();
            ArrayList arrayList = nVar.f3678j;
            int size = arrayList.size();
            for (int i6 = 0; i6 < size; i6++) {
                if (((p) arrayList.get(i6)) == pVar) {
                    this.f3664b = i6;
                    return;
                }
            }
        }
        this.f3664b = -1;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final p getItem(int i6) {
        ArrayList arrayListL;
        boolean z5 = this.f3666d;
        n nVar = this.f3663a;
        if (z5) {
            nVar.i();
            arrayListL = nVar.f3678j;
        } else {
            arrayListL = nVar.l();
        }
        int i9 = this.f3664b;
        if (i9 >= 0 && i6 >= i9) {
            i6++;
        }
        return (p) arrayListL.get(i6);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList arrayListL;
        boolean z5 = this.f3666d;
        n nVar = this.f3663a;
        if (z5) {
            nVar.i();
            arrayListL = nVar.f3678j;
        } else {
            arrayListL = nVar.l();
        }
        return this.f3664b < 0 ? arrayListL.size() : arrayListL.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i6) {
        return i6;
    }

    @Override // android.widget.Adapter
    public final View getView(int i6, View view, ViewGroup viewGroup) {
        boolean z5 = false;
        if (view == null) {
            view = this.f3667e.inflate(this.f3668f, viewGroup, false);
        }
        int i9 = getItem(i6).f3697b;
        int i10 = i6 - 1;
        int i11 = i10 >= 0 ? getItem(i10).f3697b : i9;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.f3663a.m() && i9 != i11) {
            z5 = true;
        }
        listMenuItemView.setGroupDividerEnabled(z5);
        a0 a0Var = (a0) view;
        if (this.f3665c) {
            listMenuItemView.setForceShowIcon(true);
        }
        a0Var.b(getItem(i6));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
