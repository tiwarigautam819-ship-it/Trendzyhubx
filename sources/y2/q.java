package y2;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.c0;
import androidx.fragment.app.h0;
import androidx.fragment.app.t0;
import com.YaarWin.app.R;
import com.google.firebase.messaging.j0;
import java.util.ArrayList;
import java.util.Date;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class q extends c0 {

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public String f6236f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public m f6237g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public o f6238h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public androidx.fragment.app.v f6239i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public View f6240j0;

    public final o K() {
        o oVar = this.f6238h0;
        if (oVar != null) {
            return oVar;
        }
        d7.g.i("loginClient");
        throw null;
    }

    @Override // androidx.fragment.app.c0
    public final void o(int i6, int i9, Intent intent) {
        super.o(i6, i9, intent);
        K().i(i6, i9, intent);
    }

    @Override // androidx.fragment.app.c0
    public final void q(Bundle bundle) {
        Bundle bundleExtra;
        super.q(bundle);
        o oVar = bundle != null ? (o) bundle.getParcelable("loginClient") : null;
        if (oVar == null) {
            oVar = new o();
            oVar.f6225b = -1;
            if (oVar.f6226c != null) {
                throw new x1.l("Can't set fragment once it is already set.");
            }
            oVar.f6226c = this;
        } else {
            if (oVar.f6226c != null) {
                throw new x1.l("Can't set fragment once it is already set.");
            }
            oVar.f6226c = this;
        }
        this.f6238h0 = oVar;
        K().f6227d = new j0(13, this);
        h0 h0VarC = c();
        if (h0VarC == null) {
            return;
        }
        ComponentName callingActivity = h0VarC.getCallingActivity();
        if (callingActivity != null) {
            this.f6236f0 = callingActivity.getPackageName();
        }
        Intent intent = h0VarC.getIntent();
        if (intent != null && (bundleExtra = intent.getBundleExtra("com.facebook.LoginFragment:Request")) != null) {
            this.f6237g0 = (m) bundleExtra.getParcelable("request");
        }
        this.f6239i0 = (androidx.fragment.app.v) D(new t0(2), new j0(14, new a1.b(this, 1, h0VarC)));
    }

    @Override // androidx.fragment.app.c0
    public final View r(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        d7.g.f("inflater", layoutInflater);
        View viewInflate = layoutInflater.inflate(R.layout.com_facebook_login_fragment, viewGroup, false);
        View viewFindViewById = viewInflate.findViewById(R.id.com_facebook_login_fragment_progress_bar);
        d7.g.e("view.findViewById<View>(…in_fragment_progress_bar)", viewFindViewById);
        this.f6240j0 = viewFindViewById;
        K().f6228e = new p(this);
        return viewInflate;
    }

    @Override // androidx.fragment.app.c0
    public final void s() {
        t tVarF = K().f();
        if (tVarF != null) {
            tVarF.b();
        }
        this.N = true;
    }

    @Override // androidx.fragment.app.c0
    public final void w() {
        this.N = true;
        View view = this.P;
        View viewFindViewById = view != null ? view.findViewById(R.id.com_facebook_login_fragment_progress_bar) : null;
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.c0
    public final void x() {
        boolean z5;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11 = true;
        this.N = true;
        if (this.f6236f0 == null) {
            Log.e("LoginFragment", "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.");
            h0 h0VarC = c();
            if (h0VarC != null) {
                h0VarC.finish();
                return;
            }
            return;
        }
        o oVarK = K();
        m mVar = this.f6237g0;
        m mVar2 = oVarK.f6230g;
        if ((mVar2 == null || oVarK.f6225b < 0) && mVar != null) {
            int i6 = mVar.f6210l;
            if (mVar2 != null) {
                throw new x1.l("Attempted to authorize while a request is pending.");
            }
            Date date = x1.a.f5789l;
            if (!h8.b.i() || oVarK.b()) {
                oVarK.f6230g = mVar;
                ArrayList arrayList = new ArrayList();
                int i9 = mVar.f6200a;
                if (i6 != 2) {
                    switch (i9) {
                        case 1:
                        case 2:
                            z5 = true;
                            break;
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            z5 = false;
                            break;
                        default:
                            throw null;
                    }
                    if (z5) {
                        arrayList.add(new j(oVarK));
                    }
                    if (!x1.r.f5930n) {
                        switch (i9) {
                            case 1:
                            case 2:
                            case 3:
                            case 5:
                                z8 = true;
                                break;
                            case 4:
                            case 6:
                                z8 = false;
                                break;
                            default:
                                throw null;
                        }
                        if (z8) {
                            arrayList.add(new l(oVarK));
                        }
                    }
                } else if (!x1.r.f5930n) {
                    switch (i9) {
                        case 1:
                        case 2:
                        case 5:
                            z10 = true;
                            break;
                        case 3:
                        case 4:
                        case 6:
                            z10 = false;
                            break;
                        default:
                            throw null;
                    }
                    if (z10) {
                        arrayList.add(new k(oVarK));
                    }
                }
                if (x.a(i9)) {
                    arrayList.add(new a(oVarK));
                }
                switch (i9) {
                    case 1:
                    case 4:
                    case 5:
                        z9 = true;
                        break;
                    case 2:
                    case 3:
                    case 6:
                        z9 = false;
                        break;
                    default:
                        throw null;
                }
                if (z9) {
                    arrayList.add(new v(oVarK));
                }
                if (i6 != 2) {
                    switch (i9) {
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                            z11 = false;
                        case 6:
                            if (z11) {
                                arrayList.add(new h(oVarK));
                            }
                            break;
                        default:
                            throw null;
                    }
                }
                oVarK.f6224a = (t[]) arrayList.toArray(new t[0]);
                oVarK.j();
            }
        }
    }

    @Override // androidx.fragment.app.c0
    public final void y(Bundle bundle) {
        bundle.putParcelable("loginClient", K());
    }
}
