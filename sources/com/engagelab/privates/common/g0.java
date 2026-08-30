package com.engagelab.privates.common;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.push.api.InAppMessage;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class g0 extends i0 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ImageView f1164j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ImageView f1165k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f1166l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public View f1167m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public View f1168n;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g0.this.a(3, (String) null, 2);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g0.this.a(3, (String) null, 3);
        }
    }

    public g0(Context context, d0 d0Var, InAppMessage inAppMessage, int i6) {
        super(context, d0Var, inAppMessage, i6);
    }

    @Override // com.engagelab.privates.common.f0
    public void a() {
        try {
            JSONObject jSONObject = new JSONObject(this.f1151c.getContent());
            if (31 == this.f1155g) {
                this.f1164j.setVisibility(0);
                this.f1166l.setVisibility(8);
                this.f1164j.setOnClickListener(new a());
            } else {
                this.f1164j.setVisibility(8);
                this.f1166l.setVisibility(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f1167m.getLayoutParams();
                layoutParams.width = b(140);
                this.f1167m.setLayoutParams(layoutParams);
                a(this.f1166l, jSONObject, 3);
                this.f1166l.setOnClickListener(new b());
            }
            g();
            String localImageUrl = this.f1151c.getLocalImageUrl();
            JSONObject jSONObject2 = new JSONObject(this.f1151c.getClick());
            DisplayMetrics displayMetrics = this.f1153e.getResources().getDisplayMetrics();
            a(this.f1165k, localImageUrl, jSONObject2, 1, displayMetrics.widthPixels, displayMetrics.heightPixels);
        } catch (Throwable th) {
            MTCommonLog.d("BaseInAppWrapper", "full bindDataToView throwable=" + th);
        }
    }

    @Override // com.engagelab.privates.common.i0, com.engagelab.privates.common.f0
    public void g() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f1168n.getLayoutParams();
        layoutParams.width = m() ? b(211) : -1;
        this.f1168n.setLayoutParams(layoutParams);
        super.g();
    }

    @Override // com.engagelab.privates.common.i0, com.engagelab.privates.common.f0
    public void h() {
        super.h();
    }

    @Override // com.engagelab.privates.common.i0, com.engagelab.privates.common.f0
    public void j() {
        a(this.f1166l);
    }

    @Override // com.engagelab.privates.common.i0
    public String k() {
        return "jpush_full";
    }

    @Override // com.engagelab.privates.common.i0
    public void l() {
        this.f1165k = (ImageView) a("image");
        this.f1168n = a("container");
        this.f1166l = (TextView) a("btn_countdown");
        this.f1164j = (ImageView) a("image_close");
        this.f1167m = a("countdown_container");
    }
}
