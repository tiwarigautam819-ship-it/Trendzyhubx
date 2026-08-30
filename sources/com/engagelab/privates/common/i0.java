package com.engagelab.privates.common;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.ImageUtils;
import com.engagelab.privates.common.utils.Utils;
import com.engagelab.privates.push.api.InAppMessage;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class i0 extends f0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public View f1191i;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f1192a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f1193b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f1194c;

        public a(int i6, String str, int i9) {
            this.f1192a = i6;
            this.f1193b = str;
            this.f1194c = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            i0.this.a(this.f1192a, this.f1193b, this.f1194c);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class b implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f1196a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f1197b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f1198c;

        public b(int i6, String str, int i9) {
            this.f1196a = i6;
            this.f1197b = str;
            this.f1198c = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            i0.this.a(this.f1196a, this.f1197b, this.f1198c);
        }
    }

    public i0(Context context, d0 d0Var, InAppMessage inAppMessage, int i6) {
        super(context, d0Var, inAppMessage, i6);
    }

    public final <T extends View> T a(String str) {
        int identifier = this.f1153e.getResources().getIdentifier(str, "id", this.f1153e.getPackageName());
        if (identifier <= 0) {
            throw new IllegalArgumentException(q2.x.g("view id=\"", str, "\" not found, check layout.xml or not confused keep it"));
        }
        T t8 = (T) this.f1191i.findViewById(identifier);
        if (t8 != null) {
            return t8;
        }
        throw new IllegalArgumentException(q2.x.g("view id=\"", str, "\" not found, check layout.xml or not confused keep it"));
    }

    public View b(String str) {
        int identifier = this.f1153e.getResources().getIdentifier(str, "layout", this.f1153e.getPackageName());
        if (identifier <= 0) {
            throw new IllegalArgumentException(q2.x.g("\"", str, ".xml\" not found,please check res-layout file!!"));
        }
        View viewInflate = LayoutInflater.from(this.f1153e).inflate(identifier, (ViewGroup) null);
        if (viewInflate != null) {
            return viewInflate;
        }
        throw new IllegalArgumentException(q2.x.g("\"", str, ".xml\" not found,please check res-layout file!!"));
    }

    @Override // com.engagelab.privates.common.f0
    public View d() {
        return this.f1191i;
    }

    public final int f(int i6) {
        if (i6 != 2) {
            return i6 != 3 ? 17 : 5;
        }
        return 3;
    }

    @Override // com.engagelab.privates.common.f0
    public void g() {
        this.f1191i.requestLayout();
    }

    @Override // com.engagelab.privates.common.f0
    public void h() {
        b();
        if (this.f1191i != null) {
            this.f1191i = null;
        }
    }

    public abstract String k();

    public abstract void l();

    public boolean m() {
        return this.f1153e.getResources().getConfiguration().orientation == 2;
    }

    @Override // com.engagelab.privates.common.f0
    public boolean f() {
        try {
            this.f1191i = b(k());
            try {
                l();
                return true;
            } catch (Throwable th) {
                MTCommonLog.e("BaseInAppWrapper", "findViewByName throwable =" + th.getMessage());
                d(10133014);
                return false;
            }
        } catch (Throwable th2) {
            MTCommonLog.e("BaseInAppWrapper", "inflateLayout throwable " + th2.getMessage());
            d(10133013);
            return false;
        }
    }

    public void a(TextView textView) {
        String string = textView.getText().toString();
        int number = Utils.getNumber(string);
        if (number > 1) {
            textView.setText(string.replace(a1.a.i(number, ""), "" + (number - 1)));
            return;
        }
        this.f1149a.a(this.f1153e, this.f1191i, this.f1151c);
    }

    public void a(TextView textView, JSONObject jSONObject, int i6) {
        JSONObject jSONObjectOptJSONObject;
        JSONArray jSONArrayOptJSONArray;
        try {
            String strOptString = jSONObject.optString("text");
            if (TextUtils.isEmpty(strOptString)) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
            }
            if (jSONObject.has("duration")) {
                textView.setText((jSONObject.optInt("duration") / 1000) + "s" + strOptString);
            } else {
                textView.setText(strOptString);
            }
            if (jSONObject.has("style") && (jSONArrayOptJSONArray = jSONObject.optJSONArray("style")) != null && jSONArrayOptJSONArray.length() == 5) {
                if (jSONArrayOptJSONArray.optInt(0) == 1) {
                    textView.setTypeface(Typeface.DEFAULT_BOLD);
                }
                int iOptInt = jSONArrayOptJSONArray.optInt(1);
                if (iOptInt > 0) {
                    textView.setTextSize(iOptInt);
                }
                int iOptInt2 = jSONArrayOptJSONArray.optInt(2);
                if (iOptInt2 > 0) {
                    textView.setGravity(f(iOptInt2));
                }
                String strOptString2 = jSONArrayOptJSONArray.optString(3);
                if (!TextUtils.isEmpty(strOptString2) && strOptString2.startsWith("#")) {
                    textView.setTextColor(Color.parseColor(strOptString2));
                }
                if (jSONArrayOptJSONArray.optInt(4) > 0) {
                    textView.setPaintFlags(textView.getPaintFlags() | 8);
                }
            }
            if (jSONObject.has("click") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("click")) != null) {
                textView.setOnClickListener(new a(jSONObjectOptJSONObject.optInt("type"), jSONObjectOptJSONObject.optString("action"), i6));
            }
            if (jSONObject.has("bg_color")) {
                String strOptString3 = jSONObject.optString("bg_color");
                if (TextUtils.isEmpty(strOptString3) || !strOptString3.startsWith("#")) {
                    return;
                }
                ((GradientDrawable) textView.getBackground()).setColor(Color.parseColor(strOptString3));
            }
        } catch (Throwable th) {
            MTCommonLog.d("BaseInAppWrapper", "native updateTextView throwable=" + th);
        }
    }

    @Override // com.engagelab.privates.common.f0
    public void j() {
    }

    public void a(ImageView imageView, String str, JSONObject jSONObject, int i6, int i9, int i10) {
        try {
            if (!TextUtils.isEmpty(str)) {
                imageView.setImageBitmap(ImageUtils.getBitmap(str, i9, i10));
            }
            if (jSONObject != null) {
                imageView.setOnClickListener(new b(jSONObject.optInt("type"), jSONObject.optString("action"), i6));
            }
        } catch (Throwable th) {
            MTCommonLog.d("BaseInAppWrapper", "native updateImage throwable=" + th);
        }
    }
}
