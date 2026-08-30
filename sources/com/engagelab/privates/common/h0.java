package com.engagelab.privates.common;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.Utils;
import com.engagelab.privates.inapp.view.RoundedImageView;
import com.engagelab.privates.push.api.InAppMessage;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class h0 extends i0 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextView f1172j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f1173k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f1174l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f1175m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ImageView f1176n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ImageView f1177o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public View f1178p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public View f1179q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public View f1180r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public View f1181s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public View f1182t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public View f1183u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public FrameLayout f1184v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public RoundedImageView f1185w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public RoundedImageView f1186x;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.a(3, "", 2);
        }
    }

    public h0(Context context, d0 d0Var, InAppMessage inAppMessage, int i6) {
        super(context, d0Var, inAppMessage, i6);
    }

    @Override // com.engagelab.privates.common.f0
    public void a() {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        h0 h0Var;
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        try {
            jSONObject = new JSONObject(this.f1151c.getContent());
            jSONObject2 = new JSONObject(this.f1151c.getClick());
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (21 == this.f1155g) {
                h0Var = this;
                h0Var.a(this.f1186x, this.f1151c.getLocalImageUrl(), jSONObject2, 1, b(315), a(292));
            } else {
                h0Var = this;
                String localImageUrl = h0Var.f1151c.getLocalImageUrl();
                if (!TextUtils.isEmpty(localImageUrl)) {
                    h0Var.a(h0Var.f1185w, localImageUrl, jSONObject2, 1, b(22), b(22));
                }
            }
            if (!jSONObject.has(MTCommonConstants.Lifecycle.KEY_TITLE) || (jSONObjectOptJSONObject2 = jSONObject.optJSONObject(MTCommonConstants.Lifecycle.KEY_TITLE)) == null) {
                h0Var.f1172j.setVisibility(8);
            } else {
                h0Var.f1172j.setVisibility(0);
                a(h0Var.f1172j, jSONObjectOptJSONObject2, -1);
            }
            if (!jSONObject.has(FirebaseAnalytics.Param.CONTENT) || (jSONObjectOptJSONObject = jSONObject.optJSONObject(FirebaseAnalytics.Param.CONTENT)) == null) {
                h0Var.f1173k.setVisibility(8);
            } else {
                h0Var.f1173k.setVisibility(0);
                a(h0Var.f1173k, jSONObjectOptJSONObject, -1);
            }
            if (jSONObject.has("close_location")) {
                int iOptInt = jSONObject.optInt("close_location", 1);
                ImageView imageView = iOptInt == 1 ? h0Var.f1177o : iOptInt == 2 ? h0Var.f1176n : null;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    imageView.setOnClickListener(new a());
                } else {
                    h0Var.f1177o.setVisibility(8);
                    h0Var.f1176n.setVisibility(8);
                }
            } else {
                h0Var.f1177o.setVisibility(8);
                h0Var.f1176n.setVisibility(8);
            }
            if (!jSONObject.has("buttons") || (jSONArrayOptJSONArray = jSONObject.optJSONArray("buttons")) == null || jSONArrayOptJSONArray.length() <= 0) {
                h0Var.f1181s.setVisibility(8);
            } else {
                h0Var.f1181s.setVisibility(0);
                if (jSONArrayOptJSONArray.length() > 1) {
                    h0Var.f1174l.setVisibility(0);
                    a(h0Var.f1174l, (JSONObject) jSONArrayOptJSONArray.get(0), 4);
                    a(h0Var.f1175m, (JSONObject) jSONArrayOptJSONArray.get(1), 5);
                } else {
                    h0Var.f1174l.setVisibility(8);
                    a(h0Var.f1175m, (JSONObject) jSONArrayOptJSONArray.get(0), 5);
                }
            }
            g();
        } catch (Throwable th2) {
            th = th2;
            MTCommonLog.d("BaseInAppWrapper", "interstitial bindDataToView throwable=" + th);
        }
    }

    public final void d(View view) {
        GradientDrawable gradientDrawable = (GradientDrawable) view.getBackground();
        gradientDrawable.mutate();
        gradientDrawable.setCornerRadius(Utils.dpToPx(this.f1153e, 15));
    }

    @Override // com.engagelab.privates.common.i0, com.engagelab.privates.common.f0
    public void g() {
        int iB;
        boolean zM = m();
        boolean zN = n();
        int i6 = 80;
        if (21 == this.f1155g) {
            this.f1186x.setVisibility(0);
            this.f1178p.setVisibility(8);
            iB = b(zM ? 170 : 30);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f1186x.getLayoutParams();
            layoutParams.width = b(zM ? 300 : 315);
            layoutParams.height = a(zM ? 290 : 292);
            this.f1186x.setRadius(45, 45, 45, 45);
            this.f1186x.setLayoutParams(layoutParams);
        } else {
            this.f1186x.setVisibility(8);
            this.f1178p.setVisibility(0);
            iB = b(zM ? 80 : 30);
            d(this.f1178p);
            if (zM) {
                this.f1183u.setVisibility(0);
                this.f1182t.setVisibility(0);
            } else {
                this.f1183u.setVisibility(8);
                this.f1182t.setVisibility(8);
            }
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f1179q.getLayoutParams();
            layoutParams2.leftMargin = b(22);
            layoutParams2.rightMargin = b(21);
            this.f1179q.setLayoutParams(layoutParams2);
            if (TextUtils.isEmpty(this.f1151c.getLocalImageUrl())) {
                this.f1185w.setVisibility(8);
                d(this.f1180r);
            } else {
                this.f1185w.setVisibility(0);
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.f1185w.getLayoutParams();
                layoutParams3.height = a(zM ? 80 : 142);
                layoutParams3.width = b(zM ? 177 : 315);
                if (zM) {
                    d(this.f1180r);
                    layoutParams3.topMargin = a(zN ? 15 : 20);
                } else {
                    layoutParams3.topMargin = 0;
                    this.f1180r.setBackground(this.f1153e.getResources().getDrawable(this.f1153e.getResources().getIdentifier("jpush_interstitial_bg", "drawable", this.f1153e.getPackageName())));
                }
                this.f1185w.setLayoutParams(layoutParams3);
                int i9 = zM ? 0 : 45;
                this.f1185w.setRadius(i9, i9, 0, 0);
            }
        }
        LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) this.f1172j.getLayoutParams();
        LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) this.f1173k.getLayoutParams();
        LinearLayout.LayoutParams layoutParams6 = (LinearLayout.LayoutParams) this.f1181s.getLayoutParams();
        LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) this.f1179q.getLayoutParams();
        int iA = a(zN ? 15 : 20);
        layoutParams4.topMargin = iA;
        layoutParams5.topMargin = iA;
        layoutParams6.topMargin = iA;
        layoutParams7.bottomMargin = iA;
        this.f1172j.setLayoutParams(layoutParams4);
        this.f1173k.setLayoutParams(layoutParams5);
        this.f1181s.setLayoutParams(layoutParams6);
        this.f1179q.setLayoutParams(layoutParams7);
        RelativeLayout.LayoutParams layoutParams8 = (RelativeLayout.LayoutParams) this.f1184v.getLayoutParams();
        layoutParams8.leftMargin = iB;
        layoutParams8.rightMargin = iB;
        RelativeLayout.LayoutParams layoutParams9 = (RelativeLayout.LayoutParams) this.f1176n.getLayoutParams();
        layoutParams9.rightMargin = iB;
        this.f1176n.setLayoutParams(layoutParams9);
        this.f1184v.setLayoutParams(layoutParams8);
        TextView textView = this.f1173k;
        if (zN) {
            i6 = 60;
        } else if (!zM) {
            i6 = 150;
        }
        textView.setMaxHeight(a(i6));
        super.g();
    }

    @Override // com.engagelab.privates.common.i0, com.engagelab.privates.common.f0
    public void h() {
        super.h();
    }

    @Override // com.engagelab.privates.common.i0
    public String k() {
        return "jpush_interstitial";
    }

    @Override // com.engagelab.privates.common.i0
    public void l() {
        this.f1185w = (RoundedImageView) a("image");
        this.f1177o = (ImageView) a("img_bottom_close");
        this.f1176n = (ImageView) a("img_top_close");
        this.f1186x = (RoundedImageView) a("image_only");
        this.f1175m = (TextView) a("btn_two");
        this.f1174l = (TextView) a("btn_one");
        this.f1173k = (TextView) a("text_content");
        this.f1172j = (TextView) a("text_title");
        this.f1178p = a("content_view");
        this.f1184v = (FrameLayout) a("frame");
        this.f1179q = a("margeview");
        this.f1180r = a("bg_view");
        this.f1182t = a("view2");
        this.f1183u = a("view1");
        this.f1181s = a("btn_parent_view");
        this.f1173k.setMovementMethod(ScrollingMovementMethod.getInstance());
        this.f1173k.setMaxHeight(a(n() ? 60 : m() ? 80 : 150));
    }

    public final boolean n() {
        return this.f1177o.getVisibility() == 0 || this.f1176n.getVisibility() == 0;
    }
}
