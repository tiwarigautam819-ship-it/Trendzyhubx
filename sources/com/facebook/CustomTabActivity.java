package com.facebook;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import q2.d;
import y0.b;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class CustomTabActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f1316a;

    @Override // android.app.Activity
    public final void onActivityResult(int i6, int i9, Intent intent) {
        super.onActivityResult(i6, i9, intent);
        if (i9 == 0) {
            Intent intent2 = new Intent("CustomTabActivity.action_customTabRedirect");
            intent2.putExtra("CustomTabMainActivity.extra_url", getIntent().getDataString());
            b.a(this).c(intent2);
            d dVar = new d(6, this);
            b.a(this).b(dVar, new IntentFilter("CustomTabActivity.action_destroy"));
            this.f1316a = dVar;
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent(this, (Class<?>) CustomTabMainActivity.class);
        intent.setAction("CustomTabActivity.action_customTabRedirect");
        intent.putExtra("CustomTabMainActivity.extra_url", getIntent().getDataString());
        intent.addFlags(603979776);
        startActivityForResult(intent, 2);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        d dVar = this.f1316a;
        if (dVar != null) {
            b.a(this).d(dVar);
        }
        super.onDestroy();
    }
}
