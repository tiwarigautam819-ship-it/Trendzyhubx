package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import c5.h;
import com.YaarWin.app.R;
import f.a;
import l.a0;
import l.n;
import l.p;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements a0, AbsListView.SelectionBoundsAdjuster {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public p f168a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ImageView f169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RadioButton f170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TextView f171d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CheckBox f172e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TextView f173f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ImageView f174g;
    public ImageView h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LinearLayout f175i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Drawable f176j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f177k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Context f178l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f179m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Drawable f180v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final boolean f181w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public LayoutInflater f182x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f183y;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        h hVarQ = h.q(getContext(), attributeSet, a.f2508r, R.attr.listMenuViewStyle);
        this.f176j = hVarQ.k(5);
        TypedArray typedArray = (TypedArray) hVarQ.f1061c;
        this.f177k = typedArray.getResourceId(1, -1);
        this.f179m = typedArray.getBoolean(7, false);
        this.f178l = context;
        this.f180v = hVarQ.k(8);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.f181w = typedArrayObtainStyledAttributes.hasValue(0);
        hVarQ.s();
        typedArrayObtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.f182x == null) {
            this.f182x = LayoutInflater.from(getContext());
        }
        return this.f182x;
    }

    private void setSubMenuArrowVisible(boolean z5) {
        ImageView imageView = this.f174g;
        if (imageView != null) {
            imageView.setVisibility(z5 ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.h.getLayoutParams();
        rect.top = this.h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0058  */
    @Override // l.a0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void b(l.p r11) {
        /*
            Method dump skipped, instruction units count: 315
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.ListMenuItemView.b(l.p):void");
    }

    @Override // l.a0
    public p getItemData() {
        return this.f168a;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        setBackground(this.f176j);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f171d = textView;
        int i6 = this.f177k;
        if (i6 != -1) {
            textView.setTextAppearance(this.f178l, i6);
        }
        this.f173f = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.f174g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f180v);
        }
        this.h = (ImageView) findViewById(R.id.group_divider);
        this.f175i = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i6, int i9) {
        if (this.f169b != null && this.f179m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f169b.getLayoutParams();
            int i10 = layoutParams.height;
            if (i10 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i10;
            }
        }
        super.onMeasure(i6, i9);
    }

    public void setCheckable(boolean z5) {
        CompoundButton compoundButton;
        View view;
        if (!z5 && this.f170c == null && this.f172e == null) {
            return;
        }
        if ((this.f168a.f3718x & 4) != 0) {
            if (this.f170c == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f170c = radioButton;
                LinearLayout linearLayout = this.f175i;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f170c;
            view = this.f172e;
        } else {
            if (this.f172e == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f172e = checkBox;
                LinearLayout linearLayout2 = this.f175i;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f172e;
            view = this.f170c;
        }
        if (z5) {
            compoundButton.setChecked(this.f168a.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.f172e;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f170c;
        if (radioButton2 != null) {
            radioButton2.setVisibility(8);
        }
    }

    public void setChecked(boolean z5) {
        CompoundButton compoundButton;
        if ((this.f168a.f3718x & 4) != 0) {
            if (this.f170c == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f170c = radioButton;
                LinearLayout linearLayout = this.f175i;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f170c;
        } else {
            if (this.f172e == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f172e = checkBox;
                LinearLayout linearLayout2 = this.f175i;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f172e;
        }
        compoundButton.setChecked(z5);
    }

    public void setForceShowIcon(boolean z5) {
        this.f183y = z5;
        this.f179m = z5;
    }

    public void setGroupDividerEnabled(boolean z5) {
        ImageView imageView = this.h;
        if (imageView != null) {
            imageView.setVisibility((this.f181w || !z5) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        n nVar = this.f168a.f3708n;
        boolean z5 = this.f183y;
        if (z5 || this.f179m) {
            ImageView imageView = this.f169b;
            if (imageView == null && drawable == null && !this.f179m) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.f169b = imageView2;
                LinearLayout linearLayout = this.f175i;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.f179m) {
                this.f169b.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.f169b;
            if (!z5) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.f169b.getVisibility() != 0) {
                this.f169b.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f171d.getVisibility() != 8) {
                this.f171d.setVisibility(8);
            }
        } else {
            this.f171d.setText(charSequence);
            if (this.f171d.getVisibility() != 0) {
                this.f171d.setVisibility(0);
            }
        }
    }
}
