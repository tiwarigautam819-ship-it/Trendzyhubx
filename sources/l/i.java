package l;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.YaarWin.app.R;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3655a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f3656b;

    public i(j jVar) {
        this.f3656b = jVar;
        a();
    }

    public final void a() {
        n nVar = this.f3656b.f3659c;
        p pVar = nVar.f3690v;
        if (pVar != null) {
            nVar.i();
            ArrayList arrayList = nVar.f3678j;
            int size = arrayList.size();
            for (int i6 = 0; i6 < size; i6++) {
                if (((p) arrayList.get(i6)) == pVar) {
                    this.f3655a = i6;
                    return;
                }
            }
        }
        this.f3655a = -1;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final p getItem(int i6) {
        j jVar = this.f3656b;
        n nVar = jVar.f3659c;
        nVar.i();
        ArrayList arrayList = nVar.f3678j;
        jVar.getClass();
        int i9 = this.f3655a;
        if (i9 >= 0 && i6 >= i9) {
            i6++;
        }
        return (p) arrayList.get(i6);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        j jVar = this.f3656b;
        n nVar = jVar.f3659c;
        nVar.i();
        int size = nVar.f3678j.size();
        jVar.getClass();
        return this.f3655a < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i6) {
        return i6;
    }

    @Override // android.widget.Adapter
    public final View getView(int i6, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f3656b.f3658b.inflate(R.layout.abc_list_menu_item_layout, viewGroup, false);
        }
        ((a0) view).b(getItem(i6));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
