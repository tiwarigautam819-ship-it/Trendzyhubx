package com.engagelab.privates.common;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.inapp.view.RoundedImageView;
import com.engagelab.privates.push.api.InAppMessage;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class e0 extends i0 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f1136j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public RoundedImageView f1137k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public RoundedImageView f1138l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f1139m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f1140n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f1141o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public View f1142p;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f1143a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f1144b;

        public a(int i6, String str) {
            this.f1143a = i6;
            this.f1144b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e0.this.a(this.f1143a, this.f1144b, 1);
        }
    }

    public e0(Context context, d0 d0Var, InAppMessage inAppMessage, int i6) {
        super(context, d0Var, inAppMessage, i6);
    }

    @Override // com.engagelab.privates.common.f0
    public void a() {
        try {
            JSONObject jSONObject = new JSONObject(this.f1151c.getContent());
            JSONObject jSONObject2 = new JSONObject(this.f1151c.getClick());
            this.f1191i.setOnClickListener(new a(jSONObject2.optInt("type"), jSONObject2.optString("action")));
            if (11 == this.f1155g) {
                this.f1142p.setVisibility(8);
                this.f1137k.setVisibility(0);
                String localImageUrl = this.f1151c.getLocalImageUrl();
                this.f1137k.setRadius(45, 45, 45, 45);
                a(this.f1137k, localImageUrl, null, -1, -1, -1);
            } else {
                this.f1142p.setVisibility(0);
                this.f1137k.setVisibility(8);
                try {
                    if (jSONObject.has("local_small_image")) {
                        String strOptString = jSONObject.optString("local_small_image");
                        if (TextUtils.isEmpty(strOptString)) {
                            this.f1138l.setVisibility(8);
                        } else {
                            this.f1138l.setVisibility(0);
                            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f1138l.getLayoutParams();
                            layoutParams.width = b(42);
                            layoutParams.height = b(42);
                            this.f1138l.setLayoutParams(layoutParams);
                            this.f1138l.setRadius(0, 0, 0, 0);
                            a(this.f1138l, strOptString, null, -1, -1, -1);
                        }
                    } else {
                        this.f1138l.setVisibility(8);
                    }
                    a(this.f1140n, jSONObject.getJSONObject(MTCommonConstants.Lifecycle.KEY_TITLE), -1);
                    a(this.f1139m, jSONObject.getJSONObject(FirebaseAnalytics.Param.CONTENT), -1);
                } catch (Throwable th) {
                    MTCommonLog.d("BaseInAppWrapper", "banner 2 bindDataToView throwable=" + th);
                }
            }
            g();
        } catch (Throwable th2) {
            MTCommonLog.d("BaseInAppWrapper", "banner 1 bindDataToView throwable=" + th2);
        }
    }

    @Override // com.engagelab.privates.common.i0, com.engagelab.privates.common.f0
    public void g() {
        try {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f1141o.getLayoutParams();
            layoutParams.leftMargin = b(14);
            layoutParams.rightMargin = b(14);
            layoutParams.height = a(120);
            if (11 == this.f1155g) {
                layoutParams.width = b(345);
            } else {
                layoutParams.width = b(m() ? 639 : 345);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f1136j.getLayoutParams();
                layoutParams2.leftMargin = b(17);
                layoutParams2.rightMargin = b(19);
                layoutParams2.topMargin = a(12);
                layoutParams2.bottomMargin = a(10);
                this.f1136j.setLayoutParams(layoutParams2);
            }
            this.f1141o.setLayoutParams(layoutParams);
            super.g();
        } catch (Throwable th) {
            MTCommonLog.w("BaseInAppWrapper", "refreshParas throwable=" + th);
        }
    }

    @Override // com.engagelab.privates.common.i0, com.engagelab.privates.common.f0
    public void h() {
        super.h();
    }

    @Override // com.engagelab.privates.common.i0
    public String k() {
        return "jpush_banner";
    }

    @Override // com.engagelab.privates.common.i0
    public void l() {
        this.f1136j = a("banner_content");
        this.f1137k = (RoundedImageView) a("image_only");
        this.f1139m = (TextView) a("text_content");
        this.f1140n = (TextView) a("text_title");
        this.f1138l = (RoundedImageView) a("image_small");
        this.f1141o = a("banner");
        this.f1142p = a("bg_view");
    }
}
