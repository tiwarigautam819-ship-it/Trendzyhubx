package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import com.YaarWin.app.R;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k f2714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Window f2715c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public CharSequence f2716d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AlertController$RecycleListView f2717e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Button f2718f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Button f2719g;
    public Button h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public NestedScrollView f2720i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Drawable f2721j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ImageView f2722k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f2723l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f2724m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public View f2725n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ListAdapter f2726o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f2728q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f2729r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f2730s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f2731t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f2732u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final g f2733v;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2727p = -1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final d f2734w = new d(0, this);

    public i(Context context, k kVar, Window window) {
        this.f2713a = context;
        this.f2714b = kVar;
        this.f2715c = window;
        g gVar = new g();
        gVar.f2707b = new WeakReference(kVar);
        this.f2733v = gVar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, f.a.f2496e, R.attr.alertDialogStyle, 0);
        this.f2728q = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.getResourceId(2, 0);
        this.f2729r = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.f2730s = typedArrayObtainStyledAttributes.getResourceId(7, 0);
        this.f2731t = typedArrayObtainStyledAttributes.getResourceId(3, 0);
        this.f2732u = typedArrayObtainStyledAttributes.getBoolean(6, true);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        kVar.c().i(1);
    }

    public static ViewGroup a(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }
}
