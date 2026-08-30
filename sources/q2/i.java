package q2;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends androidx.fragment.app.t {

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public Dialog f4747t0;

    @Override // androidx.fragment.app.t
    public final Dialog K(Bundle bundle) {
        Dialog dialog = this.f4747t0;
        if (dialog != null) {
            return dialog;
        }
        androidx.fragment.app.h0 h0VarC = c();
        if (h0VarC != null) {
            Intent intent = h0VarC.getIntent();
            d7.g.e("fragmentActivity.intent", intent);
            h0VarC.setResult(-1, b0.e(intent, null, null));
            h0VarC.finish();
        }
        this.f615k0 = false;
        return super.K(bundle);
    }

    @Override // androidx.fragment.app.c0, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        d7.g.f("newConfig", configuration);
        this.N = true;
        Dialog dialog = this.f4747t0;
        if (!(dialog instanceof p0) || this.f461a < 7) {
            return;
        }
        d7.g.d("null cannot be cast to non-null type com.facebook.internal.WebDialog", dialog);
        ((p0) dialog).d();
    }

    @Override // androidx.fragment.app.t, androidx.fragment.app.c0
    public final void q(Bundle bundle) {
        androidx.fragment.app.h0 h0VarC;
        String string;
        p0 mVar;
        super.q(bundle);
        if (this.f4747t0 == null && (h0VarC = c()) != null) {
            Intent intent = h0VarC.getIntent();
            d7.g.e("intent", intent);
            Bundle bundleH = b0.h(intent);
            final int i6 = 0;
            if (bundleH != null ? bundleH.getBoolean("is_fallback", false) : false) {
                string = bundleH != null ? bundleH.getString("url") : null;
                if (g0.B(string)) {
                    x1.r rVar = x1.r.f5918a;
                    h0VarC.finish();
                    return;
                }
                final int i9 = 1;
                String str = String.format("fb%s://bridge/", Arrays.copyOf(new Object[]{x1.r.b()}, 1));
                int i10 = m.f4761w;
                d7.g.d("null cannot be cast to non-null type kotlin.String", string);
                p0.b(h0VarC);
                g.k();
                int i11 = p0.f4787m;
                if (i11 == 0) {
                    g.k();
                    i11 = p0.f4787m;
                }
                mVar = new m(h0VarC, i11);
                mVar.f4788a = string;
                mVar.f4789b = str;
                mVar.f4790c = new k0(this) { // from class: q2.h

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ i f4746b;

                    {
                        this.f4746b = this;
                    }

                    @Override // q2.k0
                    public final void a(Bundle bundle2, x1.l lVar) {
                        switch (i9) {
                            case 0:
                                androidx.fragment.app.h0 h0VarC2 = this.f4746b.c();
                                if (h0VarC2 != null) {
                                    Intent intent2 = h0VarC2.getIntent();
                                    d7.g.e("fragmentActivity.intent", intent2);
                                    h0VarC2.setResult(lVar == null ? -1 : 0, b0.e(intent2, bundle2, lVar));
                                    h0VarC2.finish();
                                    break;
                                }
                                break;
                            default:
                                androidx.fragment.app.h0 h0VarC3 = this.f4746b.c();
                                if (h0VarC3 != null) {
                                    Intent intent3 = new Intent();
                                    if (bundle2 == null) {
                                        bundle2 = new Bundle();
                                    }
                                    intent3.putExtras(bundle2);
                                    h0VarC3.setResult(-1, intent3);
                                    h0VarC3.finish();
                                    break;
                                }
                                break;
                        }
                    }
                };
            } else {
                String string2 = bundleH != null ? bundleH.getString("action") : null;
                Bundle bundle2 = bundleH != null ? bundleH.getBundle("params") : null;
                if (g0.B(string2)) {
                    x1.r rVar2 = x1.r.f5918a;
                    h0VarC.finish();
                    return;
                }
                d7.g.d("null cannot be cast to non-null type kotlin.String", string2);
                Date date = x1.a.f5789l;
                x1.a aVarF = h8.b.f();
                string = h8.b.i() ? null : x1.r.b();
                if (bundle2 == null) {
                    bundle2 = new Bundle();
                }
                k0 k0Var = new k0(this) { // from class: q2.h

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ i f4746b;

                    {
                        this.f4746b = this;
                    }

                    @Override // q2.k0
                    public final void a(Bundle bundle22, x1.l lVar) {
                        switch (i6) {
                            case 0:
                                androidx.fragment.app.h0 h0VarC2 = this.f4746b.c();
                                if (h0VarC2 != null) {
                                    Intent intent2 = h0VarC2.getIntent();
                                    d7.g.e("fragmentActivity.intent", intent2);
                                    h0VarC2.setResult(lVar == null ? -1 : 0, b0.e(intent2, bundle22, lVar));
                                    h0VarC2.finish();
                                    break;
                                }
                                break;
                            default:
                                androidx.fragment.app.h0 h0VarC3 = this.f4746b.c();
                                if (h0VarC3 != null) {
                                    Intent intent3 = new Intent();
                                    if (bundle22 == null) {
                                        bundle22 = new Bundle();
                                    }
                                    intent3.putExtras(bundle22);
                                    h0VarC3.setResult(-1, intent3);
                                    h0VarC3.finish();
                                    break;
                                }
                                break;
                        }
                    }
                };
                if (aVarF != null) {
                    bundle2.putString("app_id", aVarF.h);
                    bundle2.putString("access_token", aVarF.f5796e);
                } else {
                    bundle2.putString("app_id", string);
                }
                p0.b(h0VarC);
                mVar = new p0(h0VarC, string2, bundle2, 1, k0Var);
            }
            this.f4747t0 = mVar;
        }
    }

    @Override // androidx.fragment.app.t, androidx.fragment.app.c0
    public final void t() {
        Dialog dialog = this.f619o0;
        if (dialog != null) {
            t0.b bVar = t0.c.f5298a;
            t0.c.b(new t0.d(this, "Attempting to get retain instance for fragment " + this));
            t0.c.a(this).getClass();
            if (this.K) {
                dialog.setDismissMessage(null);
            }
        }
        super.t();
    }

    @Override // androidx.fragment.app.c0
    public final void x() {
        this.N = true;
        Dialog dialog = this.f4747t0;
        if (dialog instanceof p0) {
            d7.g.d("null cannot be cast to non-null type com.facebook.internal.WebDialog", dialog);
            ((p0) dialog).d();
        }
    }
}
