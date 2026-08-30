package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.k1;
import com.google.android.gms.internal.measurement.q1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class GoogleAnalyticsServerPreviewActivity extends Activity {
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        k1 k1VarC = k1.c(this, null, null, null, null);
        Intent intent = getIntent();
        k1VarC.getClass();
        k1VarC.f(new q1(k1VarC, intent, 2));
        finish();
    }
}
