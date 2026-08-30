package m;

import android.app.SearchableInfo;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.SearchView;
import com.YaarWin.app.R;
import com.google.android.gms.internal.measurement.r4;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class u2 extends n0.a implements View.OnClickListener {
    public static final /* synthetic */ int F = 0;
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public final int h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f4118i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LayoutInflater f4119j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final SearchView f4120k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final SearchableInfo f4121l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Context f4122m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final WeakHashMap f4123v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f4124w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f4125x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public ColorStateList f4126y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f4127z;

    public u2(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap weakHashMap) {
        int suggestionRowLayout = searchView.getSuggestionRowLayout();
        this.f4315b = true;
        this.f4316c = null;
        this.f4314a = false;
        this.f4317d = -1;
        this.f4318e = new r4(this);
        this.f4319f = new u1(1, this);
        this.f4118i = suggestionRowLayout;
        this.h = suggestionRowLayout;
        this.f4119j = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f4125x = 1;
        this.f4127z = -1;
        this.A = -1;
        this.B = -1;
        this.C = -1;
        this.D = -1;
        this.E = -1;
        this.f4120k = searchView;
        this.f4121l = searchableInfo;
        this.f4124w = searchView.getSuggestionCommitIconResId();
        this.f4122m = context;
        this.f4123v = weakHashMap;
    }

    public static String h(Cursor cursor, int i6) {
        if (i6 == -1) {
            return null;
        }
        try {
            return cursor.getString(i6);
        } catch (Exception e9) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e9);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x013b  */
    @Override // n0.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(android.view.View r21, android.database.Cursor r22) {
        /*
            Method dump skipped, instruction units count: 430
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: m.u2.a(android.view.View, android.database.Cursor):void");
    }

    @Override // n0.a
    public final void b(Cursor cursor) {
        try {
            super.b(cursor);
            if (cursor != null) {
                this.f4127z = cursor.getColumnIndex("suggest_text_1");
                this.A = cursor.getColumnIndex("suggest_text_2");
                this.B = cursor.getColumnIndex("suggest_text_2_url");
                this.C = cursor.getColumnIndex("suggest_icon_1");
                this.D = cursor.getColumnIndex("suggest_icon_2");
                this.E = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e9) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e9);
        }
    }

    @Override // n0.a
    public final String c(Cursor cursor) {
        String strH;
        String strH2;
        if (cursor == null) {
            return null;
        }
        String strH3 = h(cursor, cursor.getColumnIndex("suggest_intent_query"));
        if (strH3 != null) {
            return strH3;
        }
        SearchableInfo searchableInfo = this.f4121l;
        if (searchableInfo.shouldRewriteQueryFromData() && (strH2 = h(cursor, cursor.getColumnIndex("suggest_intent_data"))) != null) {
            return strH2;
        }
        if (!searchableInfo.shouldRewriteQueryFromText() || (strH = h(cursor, cursor.getColumnIndex("suggest_text_1"))) == null) {
            return null;
        }
        return strH;
    }

    @Override // n0.a
    public final View d(ViewGroup viewGroup) {
        View viewInflate = this.f4119j.inflate(this.h, viewGroup, false);
        viewInflate.setTag(new t2(viewInflate));
        ((ImageView) viewInflate.findViewById(R.id.edit_query)).setImageResource(this.f4124w);
        return viewInflate;
    }

    public final Drawable e(Uri uri) throws FileNotFoundException {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f4122m.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else {
                if (size != 2) {
                    throw new FileNotFoundException("More than two path segments: " + uri);
                }
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (identifier != 0) {
                return resourcesForApplication.getDrawable(identifier);
            }
            throw new FileNotFoundException("No resource found for: " + uri);
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x010c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.drawable.Drawable f(java.lang.String r11) {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: m.u2.f(java.lang.String):android.graphics.drawable.Drawable");
    }

    public final Cursor g(SearchableInfo searchableInfo, String str) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder builderFragment = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            builderFragment.appendEncodedPath(suggestPath);
        }
        builderFragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            builderFragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        builderFragment.appendQueryParameter("limit", String.valueOf(50));
        return this.f4122m.getContentResolver().query(builderFragment.build(), null, suggestSelection, strArr2, null);
    }

    @Override // n0.a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i6, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i6, view, viewGroup);
        } catch (RuntimeException e9) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e9);
            View viewInflate = this.f4119j.inflate(this.f4118i, viewGroup, false);
            if (viewInflate != null) {
                ((t2) viewInflate.getTag()).f4106a.setText(e9.toString());
            }
            return viewInflate;
        }
    }

    @Override // n0.a, android.widget.Adapter
    public final View getView(int i6, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i6, view, viewGroup);
        } catch (RuntimeException e9) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e9);
            View viewD = d(viewGroup);
            ((t2) viewD.getTag()).f4106a.setText(e9.toString());
            return viewD;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        Cursor cursor = this.f4316c;
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        Cursor cursor = this.f4316c;
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f4120k.o((CharSequence) tag);
        }
    }
}
