package g;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import com.YaarWin.app.R;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends b.r implements DialogInterface, n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public f0 f2744d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final g0 f2745e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final i f2746f;

    /* JADX WARN: Type inference failed for: r2v2, types: [g.g0] */
    public k(ContextThemeWrapper contextThemeWrapper, int i6) {
        int i9;
        int iF = f(contextThemeWrapper, i6);
        if (iF == 0) {
            TypedValue typedValue = new TypedValue();
            contextThemeWrapper.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
            i9 = typedValue.resourceId;
        } else {
            i9 = iF;
        }
        super(contextThemeWrapper, i9);
        this.f2745e = new j0.i() { // from class: g.g0
            @Override // j0.i
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return this.f2708a.h(keyEvent);
            }
        };
        s sVarC = c();
        if (iF == 0) {
            TypedValue typedValue2 = new TypedValue();
            contextThemeWrapper.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue2, true);
            iF = typedValue2.resourceId;
        }
        ((f0) sVarC).f2683b0 = iF;
        sVarC.e();
        this.f2746f = new i(getContext(), this, getWindow());
    }

    public static int f(Context context, int i6) {
        if (((i6 >>> 24) & 255) >= 1) {
            return i6;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // b.r, android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        f0 f0Var = (f0) c();
        f0Var.x();
        ((ViewGroup) f0Var.I.findViewById(android.R.id.content)).addView(view, layoutParams);
        f0Var.f2697m.a(f0Var.f2695l.getCallback());
    }

    public final s c() {
        if (this.f2744d == null) {
            q qVar = s.f2778a;
            this.f2744d = new f0(getContext(), getWindow(), this, this);
        }
        return this.f2744d;
    }

    public final void d() {
        androidx.lifecycle.j0.f(getWindow().getDecorView(), this);
        f4.f.d(getWindow().getDecorView(), this);
        i2.t.l(getWindow().getDecorView(), this);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        c().f();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return l2.e.j(this.f2745e, getWindow().getDecorView(), this, keyEvent);
    }

    public final void e(Bundle bundle) {
        c().a();
        super.onCreate(bundle);
        c().e();
    }

    @Override // android.app.Dialog
    public final View findViewById(int i6) {
        f0 f0Var = (f0) c();
        f0Var.x();
        return f0Var.f2695l.findViewById(i6);
    }

    public final void g(CharSequence charSequence) {
        super.setTitle(charSequence);
        c().m(charSequence);
    }

    public final boolean h(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        c().b();
    }

    @Override // b.r, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int i6;
        ListAdapter listAdapter;
        View viewFindViewById;
        e(bundle);
        i iVar = this.f2746f;
        iVar.f2714b.setContentView(iVar.f2728q);
        Context context = iVar.f2713a;
        Window window = iVar.f2715c;
        View viewFindViewById2 = window.findViewById(R.id.parentPanel);
        View viewFindViewById3 = viewFindViewById2.findViewById(R.id.topPanel);
        View viewFindViewById4 = viewFindViewById2.findViewById(R.id.contentPanel);
        View viewFindViewById5 = viewFindViewById2.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById2.findViewById(R.id.customPanel);
        window.setFlags(131072, 131072);
        viewGroup.setVisibility(8);
        View viewFindViewById6 = viewGroup.findViewById(R.id.topPanel);
        View viewFindViewById7 = viewGroup.findViewById(R.id.contentPanel);
        View viewFindViewById8 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup viewGroupA = i.a(viewFindViewById6, viewFindViewById3);
        ViewGroup viewGroupA2 = i.a(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupA3 = i.a(viewFindViewById8, viewFindViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        iVar.f2720i = nestedScrollView;
        nestedScrollView.setFocusable(false);
        iVar.f2720i.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroupA2.findViewById(android.R.id.message);
        iVar.f2724m = textView;
        if (textView != null) {
            textView.setVisibility(8);
            iVar.f2720i.removeView(iVar.f2724m);
            if (iVar.f2717e != null) {
                ViewGroup viewGroup2 = (ViewGroup) iVar.f2720i.getParent();
                int iIndexOfChild = viewGroup2.indexOfChild(iVar.f2720i);
                viewGroup2.removeViewAt(iIndexOfChild);
                viewGroup2.addView(iVar.f2717e, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
            } else {
                viewGroupA2.setVisibility(8);
            }
        }
        Button button = (Button) viewGroupA3.findViewById(android.R.id.button1);
        iVar.f2718f = button;
        d dVar = iVar.f2734w;
        button.setOnClickListener(dVar);
        if (TextUtils.isEmpty(null)) {
            iVar.f2718f.setVisibility(8);
            i6 = 0;
        } else {
            iVar.f2718f.setText((CharSequence) null);
            iVar.f2718f.setVisibility(0);
            i6 = 1;
        }
        Button button2 = (Button) viewGroupA3.findViewById(android.R.id.button2);
        iVar.f2719g = button2;
        button2.setOnClickListener(dVar);
        if (TextUtils.isEmpty(null)) {
            iVar.f2719g.setVisibility(8);
        } else {
            iVar.f2719g.setText((CharSequence) null);
            iVar.f2719g.setVisibility(0);
            i6 |= 2;
        }
        Button button3 = (Button) viewGroupA3.findViewById(android.R.id.button3);
        iVar.h = button3;
        button3.setOnClickListener(dVar);
        if (TextUtils.isEmpty(null)) {
            iVar.h.setVisibility(8);
        } else {
            iVar.h.setText((CharSequence) null);
            iVar.h.setVisibility(0);
            i6 |= 4;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i6 == 1) {
                Button button4 = iVar.f2718f;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button4.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button4.setLayoutParams(layoutParams);
            } else if (i6 == 2) {
                Button button5 = iVar.f2719g;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button5.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button5.setLayoutParams(layoutParams2);
            } else if (i6 == 4) {
                Button button6 = iVar.h;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button6.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button6.setLayoutParams(layoutParams3);
            }
        }
        if (i6 == 0) {
            viewGroupA3.setVisibility(8);
        }
        if (iVar.f2725n != null) {
            viewGroupA.addView(iVar.f2725n, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            iVar.f2722k = (ImageView) window.findViewById(android.R.id.icon);
            if (TextUtils.isEmpty(iVar.f2716d) || !iVar.f2732u) {
                window.findViewById(R.id.title_template).setVisibility(8);
                iVar.f2722k.setVisibility(8);
                viewGroupA.setVisibility(8);
            } else {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                iVar.f2723l = textView2;
                textView2.setText(iVar.f2716d);
                Drawable drawable = iVar.f2721j;
                if (drawable != null) {
                    iVar.f2722k.setImageDrawable(drawable);
                } else {
                    iVar.f2723l.setPadding(iVar.f2722k.getPaddingLeft(), iVar.f2722k.getPaddingTop(), iVar.f2722k.getPaddingRight(), iVar.f2722k.getPaddingBottom());
                    iVar.f2722k.setVisibility(8);
                }
            }
        }
        boolean z5 = viewGroup.getVisibility() != 8;
        int i9 = (viewGroupA == null || viewGroupA.getVisibility() == 8) ? 0 : 1;
        boolean z8 = viewGroupA3.getVisibility() != 8;
        if (!z8 && (viewFindViewById = viewGroupA2.findViewById(R.id.textSpacerNoButtons)) != null) {
            viewFindViewById.setVisibility(0);
        }
        if (i9 != 0) {
            NestedScrollView nestedScrollView2 = iVar.f2720i;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View viewFindViewById9 = iVar.f2717e != null ? viewGroupA.findViewById(R.id.titleDividerNoCustom) : null;
            if (viewFindViewById9 != null) {
                viewFindViewById9.setVisibility(0);
            }
        } else {
            View viewFindViewById10 = viewGroupA2.findViewById(R.id.textSpacerNoTitle);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        }
        AlertController$RecycleListView alertController$RecycleListView = iVar.f2717e;
        if (alertController$RecycleListView != null) {
            alertController$RecycleListView.getClass();
            if (!z8 || i9 == 0) {
                alertController$RecycleListView.setPadding(alertController$RecycleListView.getPaddingLeft(), i9 != 0 ? alertController$RecycleListView.getPaddingTop() : alertController$RecycleListView.f154a, alertController$RecycleListView.getPaddingRight(), z8 ? alertController$RecycleListView.getPaddingBottom() : alertController$RecycleListView.f155b);
            }
        }
        if (!z5) {
            View view = iVar.f2717e;
            if (view == null) {
                view = iVar.f2720i;
            }
            if (view != null) {
                int i10 = z8 ? 2 : 0;
                View viewFindViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View viewFindViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                WeakHashMap weakHashMap = j0.k0.f3286a;
                j0.e0.b(view, i9 | i10, 3);
                if (viewFindViewById11 != null) {
                    viewGroupA2.removeView(viewFindViewById11);
                }
                if (viewFindViewById12 != null) {
                    viewGroupA2.removeView(viewFindViewById12);
                }
            }
        }
        AlertController$RecycleListView alertController$RecycleListView2 = iVar.f2717e;
        if (alertController$RecycleListView2 == null || (listAdapter = iVar.f2726o) == null) {
            return;
        }
        alertController$RecycleListView2.setAdapter(listAdapter);
        int i11 = iVar.f2727p;
        if (i11 > -1) {
            alertController$RecycleListView2.setItemChecked(i11, true);
            alertController$RecycleListView2.setSelection(i11);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i6, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f2746f.f2720i;
        if (nestedScrollView == null || !nestedScrollView.j(keyEvent)) {
            return super.onKeyDown(i6, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i6, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f2746f.f2720i;
        if (nestedScrollView == null || !nestedScrollView.j(keyEvent)) {
            return super.onKeyUp(i6, keyEvent);
        }
        return true;
    }

    @Override // b.r, android.app.Dialog
    public final void onStop() {
        super.onStop();
        f0 f0Var = (f0) c();
        f0Var.C();
        b bVar = f0Var.f2702w;
        if (bVar != null) {
            bVar.m(false);
        }
    }

    @Override // g.n
    public final k.b onWindowStartingSupportActionMode(k.a aVar) {
        return null;
    }

    @Override // b.r, android.app.Dialog
    public final void setContentView(int i6) {
        d();
        c().j(i6);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i6) {
        super.setTitle(i6);
        c().m(getContext().getString(i6));
    }

    @Override // b.r, android.app.Dialog
    public final void setContentView(View view) {
        d();
        c().k(view);
    }

    @Override // android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        g(charSequence);
        i iVar = this.f2746f;
        iVar.f2716d = charSequence;
        TextView textView = iVar.f2723l;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // b.r, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        d();
        c().l(view, layoutParams);
    }

    @Override // g.n
    public final void onSupportActionModeFinished(k.b bVar) {
    }

    @Override // g.n
    public final void onSupportActionModeStarted(k.b bVar) {
    }
}
