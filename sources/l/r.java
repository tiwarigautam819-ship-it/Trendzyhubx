package l;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class r extends FrameLayout implements k.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CollapsibleActionView f3723a;

    /* JADX WARN: Multi-variable type inference failed */
    public r(View view) {
        super(view.getContext());
        this.f3723a = (CollapsibleActionView) view;
        addView(view);
    }

    @Override // k.c
    public final void onActionViewCollapsed() {
        this.f3723a.onActionViewCollapsed();
    }

    @Override // k.c
    public final void onActionViewExpanded() {
        this.f3723a.onActionViewExpanded();
    }
}
