package n0;

import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import com.google.android.gms.internal.measurement.r4;
import m.u1;
import m.u2;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends BaseAdapter implements Filterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f4314a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f4315b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Cursor f4316c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4317d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public r4 f4318e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public u1 f4319f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public b f4320g;

    public abstract void a(View view, Cursor cursor);

    public void b(Cursor cursor) {
        Cursor cursor2 = this.f4316c;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                r4 r4Var = this.f4318e;
                if (r4Var != null) {
                    cursor2.unregisterContentObserver(r4Var);
                }
                u1 u1Var = this.f4319f;
                if (u1Var != null) {
                    cursor2.unregisterDataSetObserver(u1Var);
                }
            }
            this.f4316c = cursor;
            if (cursor != null) {
                r4 r4Var2 = this.f4318e;
                if (r4Var2 != null) {
                    cursor.registerContentObserver(r4Var2);
                }
                u1 u1Var2 = this.f4319f;
                if (u1Var2 != null) {
                    cursor.registerDataSetObserver(u1Var2);
                }
                this.f4317d = cursor.getColumnIndexOrThrow("_id");
                this.f4314a = true;
                notifyDataSetChanged();
            } else {
                this.f4317d = -1;
                this.f4314a = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public abstract String c(Cursor cursor);

    public abstract View d(ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public final int getCount() {
        Cursor cursor;
        if (!this.f4314a || (cursor = this.f4316c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i6, View view, ViewGroup viewGroup) {
        if (!this.f4314a) {
            return null;
        }
        this.f4316c.moveToPosition(i6);
        if (view == null) {
            u2 u2Var = (u2) this;
            view = u2Var.f4119j.inflate(u2Var.f4118i, viewGroup, false);
        }
        a(view, this.f4316c);
        return view;
    }

    @Override // android.widget.Filterable
    public final Filter getFilter() {
        if (this.f4320g == null) {
            b bVar = new b();
            bVar.f4321a = this;
            this.f4320g = bVar;
        }
        return this.f4320g;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i6) {
        Cursor cursor;
        if (!this.f4314a || (cursor = this.f4316c) == null) {
            return null;
        }
        cursor.moveToPosition(i6);
        return this.f4316c;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i6) {
        Cursor cursor;
        if (this.f4314a && (cursor = this.f4316c) != null && cursor.moveToPosition(i6)) {
            return this.f4316c.getLong(this.f4317d);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i6, View view, ViewGroup viewGroup) {
        if (!this.f4314a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.f4316c.moveToPosition(i6)) {
            throw new IllegalStateException(a1.a.i(i6, "couldn't move cursor to position "));
        }
        if (view == null) {
            view = d(viewGroup);
        }
        a(view, this.f4316c);
        return view;
    }
}
