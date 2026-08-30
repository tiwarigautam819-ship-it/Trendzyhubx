package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import c5.h;
import l.b0;
import l.m;
import l.n;
import l.p;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements m, b0, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f166b = {R.attr.background, R.attr.divider};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public n f167a;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        h hVarQ = h.q(context, attributeSet, f166b, R.attr.listViewStyle);
        TypedArray typedArray = (TypedArray) hVarQ.f1061c;
        if (typedArray.hasValue(0)) {
            setBackgroundDrawable(hVarQ.k(0));
        }
        if (typedArray.hasValue(1)) {
            setDivider(hVarQ.k(1));
        }
        hVarQ.s();
    }

    @Override // l.b0
    public final void a(n nVar) {
        this.f167a = nVar;
    }

    @Override // l.m
    public final boolean b(p pVar) {
        return this.f167a.q(pVar, null, 0);
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i6, long j3) {
        b((p) getAdapter().getItem(i6));
    }
}
