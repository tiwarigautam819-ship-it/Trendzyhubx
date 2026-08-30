package com.facebook;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.c0;
import androidx.fragment.app.h0;
import androidx.fragment.app.y0;
import com.YaarWin.app.R;
import d7.g;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import q2.b0;
import q2.i;
import v2.a;
import x1.l;
import x1.n;
import x1.r;
import y2.q;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class FacebookActivity extends h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c0 f1320a;

    @Override // androidx.fragment.app.h0, android.app.Activity
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (a.b(this)) {
            return;
        }
        try {
            g.f("prefix", str);
            g.f("writer", printWriter);
            super.dump(str, fileDescriptor, printWriter, strArr);
        } catch (Throwable th) {
            a.a(th, this);
        }
    }

    @Override // b.p, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        g.f("newConfig", configuration);
        super.onConfigurationChanged(configuration);
        c0 c0Var = this.f1320a;
        if (c0Var != null) {
            c0Var.onConfigurationChanged(configuration);
        }
    }

    @Override // androidx.fragment.app.h0, b.p, y.h, android.app.Activity
    public final void onCreate(Bundle bundle) {
        l lVar;
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!r.f5931o.get()) {
            Context applicationContext = getApplicationContext();
            g.e("applicationContext", applicationContext);
            synchronized (r.class) {
                r.j(applicationContext);
            }
        }
        setContentView(R.layout.com_facebook_activity_layout);
        if (!"PassThrough".equals(intent.getAction())) {
            Intent intent2 = getIntent();
            y0 supportFragmentManager = getSupportFragmentManager();
            g.e("supportFragmentManager", supportFragmentManager);
            c0 c0VarC = supportFragmentManager.C("SingleFragment");
            c0 c0Var = c0VarC;
            if (c0VarC == null) {
                if ("FacebookDialogFragment".equals(intent2.getAction())) {
                    i iVar = new i();
                    iVar.I();
                    iVar.L(supportFragmentManager, "SingleFragment");
                    c0Var = iVar;
                } else {
                    q qVar = new q();
                    qVar.I();
                    androidx.fragment.app.a aVar = new androidx.fragment.app.a(supportFragmentManager);
                    aVar.e(R.id.com_facebook_fragment_container, qVar, "SingleFragment");
                    aVar.d(false, true);
                    c0Var = qVar;
                }
            }
            this.f1320a = c0Var;
            return;
        }
        Intent intent3 = getIntent();
        g.e("requestIntent", intent3);
        Bundle bundleH = b0.h(intent3);
        if (a.b(b0.class) || bundleH == null) {
            lVar = null;
        } else {
            try {
                String string = bundleH.getString("error_type");
                if (string == null) {
                    string = bundleH.getString("com.facebook.platform.status.ERROR_TYPE");
                }
                String string2 = bundleH.getString("error_description");
                if (string2 == null) {
                    string2 = bundleH.getString("com.facebook.platform.status.ERROR_DESCRIPTION");
                }
                lVar = (string == null || !string.equalsIgnoreCase("UserCanceled")) ? new l(string2) : new n(string2);
            } catch (Throwable th) {
                a.a(th, b0.class);
                lVar = null;
            }
        }
        Intent intent4 = getIntent();
        g.e("intent", intent4);
        setResult(0, b0.e(intent4, null, lVar));
        finish();
    }
}
