package androidx.appcompat.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import com.YaarWin.app.R;
import j0.k0;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import m.g0;
import m.i2;
import m.j2;
import m.k;
import m.k2;
import m.l2;
import m.m2;
import m.n2;
import m.o2;
import m.p2;
import m.q1;
import m.r2;
import m.s2;
import m.u2;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class SearchView extends b implements k.c {

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static final a8.i f249o0;
    public final View A;
    public final ImageView B;
    public final ImageView C;
    public final ImageView D;
    public final ImageView E;
    public final View F;
    public s2 G;
    public final Rect H;
    public final Rect I;
    public final int[] J;
    public final int[] K;
    public final ImageView L;
    public final Drawable M;
    public final int N;
    public final int O;
    public final Intent P;
    public final Intent Q;
    public final CharSequence R;
    public View.OnFocusChangeListener S;
    public View.OnClickListener T;
    public boolean U;
    public boolean V;
    public n0.a W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f250a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public CharSequence f251b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f252c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f253d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f254e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f255f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public CharSequence f256g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f257h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f258i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public SearchableInfo f259j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public Bundle f260k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final j2 f261l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final j2 f262m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final WeakHashMap f263n0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final SearchAutoComplete f264x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final View f265y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final View f266z;

    static {
        a8.i iVar = null;
        if (Build.VERSION.SDK_INT < 29) {
            a8.i iVar2 = new a8.i();
            iVar2.f112a = null;
            iVar2.f113b = null;
            iVar2.f114c = null;
            a8.i.a();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", null);
                iVar2.f112a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", null);
                iVar2.f113b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                iVar2.f114c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
            iVar = iVar2;
        }
        f249o0 = iVar;
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.searchViewStyle);
        this.H = new Rect();
        this.I = new Rect();
        this.J = new int[2];
        this.K = new int[2];
        this.f261l0 = new j2(this, 0);
        this.f262m0 = new j2(this, 1);
        this.f263n0 = new WeakHashMap();
        d dVar = new d(this);
        e eVar = new e(this);
        m2 m2Var = new m2(this);
        g0 g0Var = new g0(1, this);
        q1 q1Var = new q1(1, this);
        i2 i2Var = new i2(this);
        int[] iArr = f.a.f2511u;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.searchViewStyle, 0);
        c5.h hVar = new c5.h(context, typedArrayObtainStyledAttributes);
        k0.g(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, R.attr.searchViewStyle, 0);
        LayoutInflater.from(context).inflate(typedArrayObtainStyledAttributes.getResourceId(9, R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.f264x = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f265y = findViewById(R.id.search_edit_frame);
        View viewFindViewById = findViewById(R.id.search_plate);
        this.f266z = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.submit_area);
        this.A = viewFindViewById2;
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        this.B = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.search_go_btn);
        this.C = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.search_close_btn);
        this.D = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R.id.search_voice_btn);
        this.E = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R.id.search_mag_icon);
        this.L = imageView5;
        viewFindViewById.setBackground(hVar.k(10));
        viewFindViewById2.setBackground(hVar.k(14));
        imageView.setImageDrawable(hVar.k(13));
        imageView2.setImageDrawable(hVar.k(7));
        imageView3.setImageDrawable(hVar.k(4));
        imageView4.setImageDrawable(hVar.k(16));
        imageView5.setImageDrawable(hVar.k(13));
        this.M = hVar.k(12);
        f4.f.e(imageView, getResources().getString(R.string.abc_searchview_description_search));
        this.N = typedArrayObtainStyledAttributes.getResourceId(15, R.layout.abc_search_dropdown_item_icons_2line);
        this.O = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        imageView.setOnClickListener(dVar);
        imageView3.setOnClickListener(dVar);
        imageView2.setOnClickListener(dVar);
        imageView4.setOnClickListener(dVar);
        searchAutoComplete.setOnClickListener(dVar);
        searchAutoComplete.addTextChangedListener(i2Var);
        searchAutoComplete.setOnEditorActionListener(m2Var);
        searchAutoComplete.setOnItemClickListener(g0Var);
        searchAutoComplete.setOnItemSelectedListener(q1Var);
        searchAutoComplete.setOnKeyListener(eVar);
        searchAutoComplete.setOnFocusChangeListener(new k2(this));
        setIconifiedByDefault(typedArrayObtainStyledAttributes.getBoolean(8, true));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, -1);
        if (dimensionPixelSize != -1) {
            setMaxWidth(dimensionPixelSize);
        }
        this.R = typedArrayObtainStyledAttributes.getText(6);
        this.f251b0 = typedArrayObtainStyledAttributes.getText(11);
        int i6 = typedArrayObtainStyledAttributes.getInt(3, -1);
        if (i6 != -1) {
            setImeOptions(i6);
        }
        int i9 = typedArrayObtainStyledAttributes.getInt(2, -1);
        if (i9 != -1) {
            setInputType(i9);
        }
        setFocusable(typedArrayObtainStyledAttributes.getBoolean(0, true));
        hVar.s();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.P = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.Q = intent2;
        intent2.addFlags(268435456);
        View viewFindViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.F = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.addOnLayoutChangeListener(new l2(this));
        }
        v(this.U);
        s();
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
    }

    private void setQuery(CharSequence charSequence) {
        SearchAutoComplete searchAutoComplete = this.f264x;
        searchAutoComplete.setText(charSequence);
        searchAutoComplete.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void clearFocus() {
        this.f253d0 = true;
        super.clearFocus();
        SearchAutoComplete searchAutoComplete = this.f264x;
        searchAutoComplete.clearFocus();
        searchAutoComplete.setImeVisibility(false);
        this.f253d0 = false;
    }

    public int getImeOptions() {
        return this.f264x.getImeOptions();
    }

    public int getInputType() {
        return this.f264x.getInputType();
    }

    public int getMaxWidth() {
        return this.f254e0;
    }

    public CharSequence getQuery() {
        return this.f264x.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.f251b0;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.f259j0;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.R : getContext().getText(this.f259j0.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.O;
    }

    public int getSuggestionRowLayout() {
        return this.N;
    }

    public n0.a getSuggestionsAdapter() {
        return this.W;
    }

    public final Intent i(String str, Uri uri, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f256g0);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f260k0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        intent.setComponent(this.f259j0.getSearchActivity());
        return intent;
    }

    public final Intent j(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f260k0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    public final void k() {
        int i6 = Build.VERSION.SDK_INT;
        SearchAutoComplete searchAutoComplete = this.f264x;
        if (i6 >= 29) {
            f.a(searchAutoComplete);
            return;
        }
        a8.i iVar = f249o0;
        iVar.getClass();
        a8.i.a();
        Method method = iVar.f112a;
        if (method != null) {
            try {
                method.invoke(searchAutoComplete, null);
            } catch (Exception unused) {
            }
        }
        iVar.getClass();
        a8.i.a();
        Method method2 = iVar.f113b;
        if (method2 != null) {
            try {
                method2.invoke(searchAutoComplete, null);
            } catch (Exception unused2) {
            }
        }
    }

    public final void l() {
        SearchAutoComplete searchAutoComplete = this.f264x;
        if (!TextUtils.isEmpty(searchAutoComplete.getText())) {
            searchAutoComplete.setText("");
            searchAutoComplete.requestFocus();
            searchAutoComplete.setImeVisibility(true);
        } else if (this.U) {
            clearFocus();
            v(true);
        }
    }

    public final void m(int i6) {
        int position;
        String strH;
        Cursor cursor = this.W.f4316c;
        if (cursor != null && cursor.moveToPosition(i6)) {
            Intent intentI = null;
            try {
                int i9 = u2.F;
                String strH2 = u2.h(cursor, cursor.getColumnIndex("suggest_intent_action"));
                if (strH2 == null) {
                    strH2 = this.f259j0.getSuggestIntentAction();
                }
                if (strH2 == null) {
                    strH2 = "android.intent.action.SEARCH";
                }
                String strH3 = u2.h(cursor, cursor.getColumnIndex("suggest_intent_data"));
                if (strH3 == null) {
                    strH3 = this.f259j0.getSuggestIntentData();
                }
                if (strH3 != null && (strH = u2.h(cursor, cursor.getColumnIndex("suggest_intent_data_id"))) != null) {
                    strH3 = strH3 + "/" + Uri.encode(strH);
                }
                intentI = i(strH2, strH3 == null ? null : Uri.parse(strH3), u2.h(cursor, cursor.getColumnIndex("suggest_intent_extra_data")), u2.h(cursor, cursor.getColumnIndex("suggest_intent_query")));
            } catch (RuntimeException e9) {
                try {
                    position = cursor.getPosition();
                } catch (RuntimeException unused) {
                    position = -1;
                }
                Log.w("SearchView", "Search suggestions cursor at row " + position + " returned exception.", e9);
            }
            if (intentI != null) {
                try {
                    getContext().startActivity(intentI);
                } catch (RuntimeException e10) {
                    Log.e("SearchView", "Failed launch activity: " + intentI, e10);
                }
            }
        }
        SearchAutoComplete searchAutoComplete = this.f264x;
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    public final void n(int i6) {
        Editable text = this.f264x.getText();
        Cursor cursor = this.W.f4316c;
        if (cursor == null) {
            return;
        }
        if (!cursor.moveToPosition(i6)) {
            setQuery(text);
            return;
        }
        String strC = this.W.c(cursor);
        if (strC != null) {
            setQuery(strC);
        } else {
            setQuery(text);
        }
    }

    public final void o(CharSequence charSequence) {
        setQuery(charSequence);
    }

    @Override // k.c
    public final void onActionViewCollapsed() {
        SearchAutoComplete searchAutoComplete = this.f264x;
        searchAutoComplete.setText("");
        searchAutoComplete.setSelection(searchAutoComplete.length());
        this.f256g0 = "";
        clearFocus();
        v(true);
        searchAutoComplete.setImeOptions(this.f258i0);
        this.f257h0 = false;
    }

    @Override // k.c
    public final void onActionViewExpanded() {
        if (this.f257h0) {
            return;
        }
        this.f257h0 = true;
        SearchAutoComplete searchAutoComplete = this.f264x;
        int imeOptions = searchAutoComplete.getImeOptions();
        this.f258i0 = imeOptions;
        searchAutoComplete.setImeOptions(imeOptions | 33554432);
        searchAutoComplete.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f261l0);
        post(this.f262m0);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.b, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z5, int i6, int i9, int i10, int i11) {
        super.onLayout(z5, i6, i9, i10, i11);
        if (z5) {
            SearchAutoComplete searchAutoComplete = this.f264x;
            int[] iArr = this.J;
            searchAutoComplete.getLocationInWindow(iArr);
            int[] iArr2 = this.K;
            getLocationInWindow(iArr2);
            int i12 = iArr[1] - iArr2[1];
            int i13 = iArr[0] - iArr2[0];
            int width = searchAutoComplete.getWidth() + i13;
            int height = searchAutoComplete.getHeight() + i12;
            Rect rect = this.H;
            rect.set(i13, i12, width, height);
            int i14 = rect.left;
            int i15 = rect.right;
            int i16 = i11 - i9;
            Rect rect2 = this.I;
            rect2.set(i14, 0, i15, i16);
            s2 s2Var = this.G;
            if (s2Var == null) {
                s2 s2Var2 = new s2(searchAutoComplete, rect2, rect);
                this.G = s2Var2;
                setTouchDelegate(s2Var2);
            } else {
                s2Var.f4096b.set(rect2);
                Rect rect3 = s2Var.f4098d;
                rect3.set(rect2);
                int i17 = -s2Var.f4099e;
                rect3.inset(i17, i17);
                s2Var.f4097c.set(rect);
            }
        }
    }

    @Override // androidx.appcompat.widget.b, android.view.View
    public final void onMeasure(int i6, int i9) {
        int i10;
        if (this.V) {
            super.onMeasure(i6, i9);
            return;
        }
        int mode = View.MeasureSpec.getMode(i6);
        int size = View.MeasureSpec.getSize(i6);
        if (mode == Integer.MIN_VALUE) {
            int i11 = this.f254e0;
            size = i11 > 0 ? Math.min(i11, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.f254e0;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i10 = this.f254e0) > 0) {
            size = Math.min(i10, size);
        }
        int mode2 = View.MeasureSpec.getMode(i9);
        int size2 = View.MeasureSpec.getSize(i9);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof r2)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        r2 r2Var = (r2) parcelable;
        super.onRestoreInstanceState(r2Var.f4395a);
        v(r2Var.f4080c);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        r2 r2Var = new r2(super.onSaveInstanceState());
        r2Var.f4080c = this.V;
        return r2Var;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z5) {
        super.onWindowFocusChanged(z5);
        post(this.f261l0);
    }

    public final void p() {
        SearchAutoComplete searchAutoComplete = this.f264x;
        Editable text = searchAutoComplete.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        if (this.f259j0 != null) {
            getContext().startActivity(i("android.intent.action.SEARCH", null, null, text.toString()));
        }
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    public final void q() {
        boolean zIsEmpty = TextUtils.isEmpty(this.f264x.getText());
        int i6 = (!zIsEmpty || (this.U && !this.f257h0)) ? 0 : 8;
        ImageView imageView = this.D;
        imageView.setVisibility(i6);
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            drawable.setState(!zIsEmpty ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    public final void r() {
        int[] iArr = this.f264x.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f266z.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.A.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i6, Rect rect) {
        if (this.f253d0 || !isFocusable()) {
            return false;
        }
        if (this.V) {
            return super.requestFocus(i6, rect);
        }
        boolean zRequestFocus = this.f264x.requestFocus(i6, rect);
        if (zRequestFocus) {
            v(false);
        }
        return zRequestFocus;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void s() {
        CharSequence queryHint = getQueryHint();
        CharSequence charSequence = queryHint;
        if (queryHint == null) {
            charSequence = "";
        }
        boolean z5 = this.U;
        SearchAutoComplete searchAutoComplete = this.f264x;
        CharSequence charSequence2 = charSequence;
        if (z5) {
            Drawable drawable = this.M;
            charSequence2 = charSequence;
            if (drawable != null) {
                int textSize = (int) (((double) searchAutoComplete.getTextSize()) * 1.25d);
                drawable.setBounds(0, 0, textSize, textSize);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
                spannableStringBuilder.setSpan(new ImageSpan(drawable), 1, 2, 33);
                spannableStringBuilder.append(charSequence);
                charSequence2 = spannableStringBuilder;
            }
        }
        searchAutoComplete.setHint(charSequence2);
    }

    public void setAppSearchData(Bundle bundle) {
        this.f260k0 = bundle;
    }

    public void setIconified(boolean z5) {
        if (z5) {
            l();
            return;
        }
        v(false);
        SearchAutoComplete searchAutoComplete = this.f264x;
        searchAutoComplete.requestFocus();
        searchAutoComplete.setImeVisibility(true);
        View.OnClickListener onClickListener = this.T;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void setIconifiedByDefault(boolean z5) {
        if (this.U == z5) {
            return;
        }
        this.U = z5;
        v(z5);
        s();
    }

    public void setImeOptions(int i6) {
        this.f264x.setImeOptions(i6);
    }

    public void setInputType(int i6) {
        this.f264x.setInputType(i6);
    }

    public void setMaxWidth(int i6) {
        this.f254e0 = i6;
        requestLayout();
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.S = onFocusChangeListener;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.T = onClickListener;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.f251b0 = charSequence;
        s();
    }

    public void setQueryRefinementEnabled(boolean z5) {
        this.f252c0 = z5;
        n0.a aVar = this.W;
        if (aVar instanceof u2) {
            ((u2) aVar).f4125x = z5 ? 2 : 1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setSearchableInfo(android.app.SearchableInfo r7) {
        /*
            r6 = this;
            r6.f259j0 = r7
            r0 = 0
            r1 = 1
            androidx.appcompat.widget.SearchView$SearchAutoComplete r2 = r6.f264x
            if (r7 == 0) goto L65
            int r7 = r7.getSuggestThreshold()
            r2.setThreshold(r7)
            android.app.SearchableInfo r7 = r6.f259j0
            int r7 = r7.getImeOptions()
            r2.setImeOptions(r7)
            android.app.SearchableInfo r7 = r6.f259j0
            int r7 = r7.getInputType()
            r3 = r7 & 15
            if (r3 != r1) goto L31
            r3 = -65537(0xfffffffffffeffff, float:NaN)
            r7 = r7 & r3
            android.app.SearchableInfo r3 = r6.f259j0
            java.lang.String r3 = r3.getSuggestAuthority()
            if (r3 == 0) goto L31
            r3 = 589824(0x90000, float:8.2652E-40)
            r7 = r7 | r3
        L31:
            r2.setInputType(r7)
            n0.a r7 = r6.W
            if (r7 == 0) goto L3b
            r7.b(r0)
        L3b:
            android.app.SearchableInfo r7 = r6.f259j0
            java.lang.String r7 = r7.getSuggestAuthority()
            if (r7 == 0) goto L62
            m.u2 r7 = new m.u2
            android.content.Context r3 = r6.getContext()
            android.app.SearchableInfo r4 = r6.f259j0
            java.util.WeakHashMap r5 = r6.f263n0
            r7.<init>(r3, r6, r4, r5)
            r6.W = r7
            r2.setAdapter(r7)
            n0.a r7 = r6.W
            m.u2 r7 = (m.u2) r7
            boolean r3 = r6.f252c0
            if (r3 == 0) goto L5f
            r3 = 2
            goto L60
        L5f:
            r3 = r1
        L60:
            r7.f4125x = r3
        L62:
            r6.s()
        L65:
            android.app.SearchableInfo r7 = r6.f259j0
            r3 = 0
            if (r7 == 0) goto L98
            boolean r7 = r7.getVoiceSearchEnabled()
            if (r7 == 0) goto L98
            android.app.SearchableInfo r7 = r6.f259j0
            boolean r7 = r7.getVoiceSearchLaunchWebSearch()
            if (r7 == 0) goto L7b
            android.content.Intent r0 = r6.P
            goto L85
        L7b:
            android.app.SearchableInfo r7 = r6.f259j0
            boolean r7 = r7.getVoiceSearchLaunchRecognizer()
            if (r7 == 0) goto L85
            android.content.Intent r0 = r6.Q
        L85:
            if (r0 == 0) goto L98
            android.content.Context r7 = r6.getContext()
            android.content.pm.PackageManager r7 = r7.getPackageManager()
            r4 = 65536(0x10000, float:9.1835E-41)
            android.content.pm.ResolveInfo r7 = r7.resolveActivity(r0, r4)
            if (r7 == 0) goto L98
            goto L99
        L98:
            r1 = r3
        L99:
            r6.f255f0 = r1
            if (r1 == 0) goto La2
            java.lang.String r7 = "nm"
            r2.setPrivateImeOptions(r7)
        La2:
            boolean r7 = r6.V
            r6.v(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.setSearchableInfo(android.app.SearchableInfo):void");
    }

    public void setSubmitButtonEnabled(boolean z5) {
        this.f250a0 = z5;
        v(this.V);
    }

    public void setSuggestionsAdapter(n0.a aVar) {
        this.W = aVar;
        this.f264x.setAdapter(aVar);
    }

    public final void t() {
        this.A.setVisibility(((this.f250a0 || this.f255f0) && !this.V && (this.C.getVisibility() == 0 || this.E.getVisibility() == 0)) ? 0 : 8);
    }

    public final void u(boolean z5) {
        boolean z8 = this.f250a0;
        this.C.setVisibility((!z8 || !(z8 || this.f255f0) || this.V || !hasFocus() || (!z5 && this.f255f0)) ? 8 : 0);
    }

    public final void v(boolean z5) {
        this.V = z5;
        int i6 = 8;
        int i9 = z5 ? 0 : 8;
        boolean zIsEmpty = TextUtils.isEmpty(this.f264x.getText());
        this.B.setVisibility(i9);
        u(!zIsEmpty);
        this.f265y.setVisibility(z5 ? 8 : 0);
        ImageView imageView = this.L;
        imageView.setVisibility((imageView.getDrawable() == null || this.U) ? 8 : 0);
        q();
        if (this.f255f0 && !this.V && zIsEmpty) {
            this.C.setVisibility(8);
            i6 = 0;
        }
        this.E.setVisibility(i6);
        t();
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class SearchAutoComplete extends k {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f267e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SearchView f268f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f269g;
        public final g h;

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            super(context, attributeSet, 0);
            this.h = new g(this);
            this.f267e = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i6 = configuration.screenWidthDp;
            int i9 = configuration.screenHeightDp;
            if (i6 >= 960 && i9 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i6 < 600) {
                return (i6 < 640 || i9 < 480) ? 160 : 192;
            }
            return 192;
        }

        public final void a() {
            if (Build.VERSION.SDK_INT >= 29) {
                f.b(this, 1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            a8.i iVar = SearchView.f249o0;
            iVar.getClass();
            a8.i.a();
            Method method = iVar.f114c;
            if (method != null) {
                try {
                    method.invoke(this, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public final boolean enoughToFilter() {
            return this.f267e <= 0 || super.enoughToFilter();
        }

        @Override // m.k, android.widget.TextView, android.view.View
        public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f269g) {
                g gVar = this.h;
                removeCallbacks(gVar);
                post(gVar);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        public final void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onFocusChanged(boolean z5, int i6, Rect rect) {
            super.onFocusChanged(z5, i6, rect);
            SearchView searchView = this.f268f;
            searchView.v(searchView.V);
            searchView.post(searchView.f261l0);
            if (searchView.f264x.hasFocus()) {
                searchView.k();
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final boolean onKeyPreIme(int i6, KeyEvent keyEvent) {
            if (i6 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f268f.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i6, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onWindowFocusChanged(boolean z5) {
            super.onWindowFocusChanged(z5);
            if (z5 && this.f268f.hasFocus() && getVisibility() == 0) {
                this.f269g = true;
                Context context = getContext();
                a8.i iVar = SearchView.f249o0;
                if (context.getResources().getConfiguration().orientation == 2) {
                    a();
                }
            }
        }

        public void setImeVisibility(boolean z5) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            g gVar = this.h;
            if (!z5) {
                this.f269g = false;
                removeCallbacks(gVar);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f269g = true;
                    return;
                }
                this.f269g = false;
                removeCallbacks(gVar);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setSearchView(SearchView searchView) {
            this.f268f = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i6) {
            super.setThreshold(i6);
            this.f267e = i6;
        }

        @Override // android.widget.AutoCompleteTextView
        public final void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public final void replaceText(CharSequence charSequence) {
        }
    }

    public void setOnCloseListener(n2 n2Var) {
    }

    public void setOnQueryTextListener(o2 o2Var) {
    }

    public void setOnSuggestionListener(p2 p2Var) {
    }
}
