package com.lottery.app;

import a2.g;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import e5.e;
import g.m;
import java.util.concurrent.atomic.AtomicBoolean;
import p6.a;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class GateActivity extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f2182a = false;

    @Override // androidx.fragment.app.h0, b.p, android.app.Activity
    public final void onActivityResult(int i6, int i9, Intent intent) {
        e eVar = new e(28);
        if (i6 == 9001) {
            if (i9 == -1) {
                i8.e.a(true, eVar, 0, "OK");
                return;
            } else {
                i8.e.a(false, eVar, -1, "User canceled device credential.");
                return;
            }
        }
        if (i6 == 9002) {
            i8.e.f3226a.set(false);
        } else {
            AtomicBoolean atomicBoolean = i8.e.f3226a;
            super.onActivityResult(i6, i9, intent);
        }
    }

    @Override // b.p, android.app.Activity
    public final void onBackPressed() {
        moveTaskToBack(true);
        finish();
    }

    @Override // androidx.fragment.app.h0, b.p, y.h, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.d("Gate", "onCreate");
    }

    @Override // androidx.fragment.app.h0, android.app.Activity
    public final void onPause() {
        super.onPause();
        this.f2182a = false;
    }

    @Override // androidx.fragment.app.h0, android.app.Activity
    public final void onResume() {
        ViewGroup viewGroup;
        View viewFindViewById;
        super.onResume();
        int i6 = a.f4663a;
        if (!isFinishing() && (viewFindViewById = (viewGroup = (ViewGroup) getWindow().getDecorView()).findViewById(2131362047)) != null) {
            viewGroup.removeView(viewFindViewById);
        }
        this.f2182a = true;
        getWindow().getDecorView().postDelayed(new g(9, this), 120L);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z5) {
        super.onWindowFocusChanged(z5);
        Log.d("Gate", "onWindowFocusChanged=" + z5);
        if (z5) {
            getWindow().getDecorView().post(new g(9, this));
        }
    }
}
