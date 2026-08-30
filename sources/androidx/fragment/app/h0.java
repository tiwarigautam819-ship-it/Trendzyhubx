package androidx.fragment.app;

import android.app.SharedElementCallback;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h0 extends b.p implements y.a {
    static final String LIFECYCLE_TAG = "android:support:lifecycle";
    boolean mCreated;
    boolean mResumed;
    final k0 mFragments = new k0(new g0(this));
    final androidx.lifecycle.v mFragmentLifecycleRegistry = new androidx.lifecycle.v(this);
    boolean mStopped = true;

    public h0() {
        getSavedStateRegistry().c(LIFECYCLE_TAG, new d0(0, this));
        final int i6 = 0;
        addOnConfigurationChangedListener(new i0.a(this) { // from class: androidx.fragment.app.e0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ h0 f498b;

            {
                this.f498b = this;
            }

            @Override // i0.a
            public final void accept(Object obj) {
                switch (i6) {
                    case 0:
                        this.f498b.mFragments.a();
                        break;
                    default:
                        this.f498b.mFragments.a();
                        break;
                }
            }
        });
        final int i9 = 1;
        addOnNewIntentListener(new i0.a(this) { // from class: androidx.fragment.app.e0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ h0 f498b;

            {
                this.f498b = this;
            }

            @Override // i0.a
            public final void accept(Object obj) {
                switch (i9) {
                    case 0:
                        this.f498b.mFragments.a();
                        break;
                    default:
                        this.f498b.mFragments.a();
                        break;
                }
            }
        });
        addOnContextAvailableListener(new c.b() { // from class: androidx.fragment.app.f0
            @Override // c.b
            public final void a(b.p pVar) {
                g0 g0Var = this.f517a.mFragments.f566a;
                g0Var.f524d.b(g0Var, g0Var, null);
            }
        });
    }

    public static boolean d(y0 y0Var) {
        boolean zD = false;
        for (c0 c0Var : y0Var.f642c.t()) {
            if (c0Var != null) {
                g0 g0Var = c0Var.C;
                if ((g0Var == null ? null : g0Var.f525e) != null) {
                    zD |= d(c0Var.d());
                }
                i1 i1Var = c0Var.Y;
                androidx.lifecycle.n nVar = androidx.lifecycle.n.f721d;
                if (i1Var != null) {
                    i1Var.b();
                    if (i1Var.f555d.f741c.compareTo(nVar) >= 0) {
                        c0Var.Y.f555d.g();
                        zD = true;
                    }
                }
                if (c0Var.X.f741c.compareTo(nVar) >= 0) {
                    c0Var.X.g();
                    zD = true;
                }
            }
        }
        return zD;
    }

    public final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.f566a.f524d.f645f.onCreateView(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (shouldDumpInternalState(strArr)) {
            printWriter.print(str);
            printWriter.print("Local FragmentActivity ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(" State:");
            String str2 = str + "  ";
            printWriter.print(str2);
            printWriter.print("mCreated=");
            printWriter.print(this.mCreated);
            printWriter.print(" mResumed=");
            printWriter.print(this.mResumed);
            printWriter.print(" mStopped=");
            printWriter.print(this.mStopped);
            if (getApplication() != null) {
                x0.a.a(this).b(str2, printWriter);
            }
            this.mFragments.f566a.f524d.v(str, fileDescriptor, printWriter, strArr);
        }
    }

    public y0 getSupportFragmentManager() {
        return this.mFragments.f566a.f524d;
    }

    @Deprecated
    public x0.a getSupportLoaderManager() {
        return x0.a.a(this);
    }

    public void markFragmentsCreated() {
        while (d(getSupportFragmentManager())) {
        }
    }

    @Override // b.p, android.app.Activity
    public void onActivityResult(int i6, int i9, Intent intent) {
        this.mFragments.a();
        super.onActivityResult(i6, i9, intent);
    }

    @Override // b.p, y.h, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.e(androidx.lifecycle.m.ON_CREATE);
        z0 z0Var = this.mFragments.f566a.f524d;
        z0Var.H = false;
        z0Var.I = false;
        z0Var.O.f487g = false;
        z0Var.u(1);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mFragments.f566a.f524d.l();
        this.mFragmentLifecycleRegistry.e(androidx.lifecycle.m.ON_DESTROY);
    }

    @Override // b.p, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i6, MenuItem menuItem) {
        if (super.onMenuItemSelected(i6, menuItem)) {
            return true;
        }
        if (i6 == 6) {
            return this.mFragments.f566a.f524d.j();
        }
        return false;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.f566a.f524d.u(5);
        this.mFragmentLifecycleRegistry.e(androidx.lifecycle.m.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @Override // b.p, android.app.Activity
    public void onRequestPermissionsResult(int i6, String[] strArr, int[] iArr) {
        this.mFragments.a();
        super.onRequestPermissionsResult(i6, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        this.mFragments.a();
        super.onResume();
        this.mResumed = true;
        this.mFragments.f566a.f524d.z(true);
    }

    public void onResumeFragments() {
        this.mFragmentLifecycleRegistry.e(androidx.lifecycle.m.ON_RESUME);
        z0 z0Var = this.mFragments.f566a.f524d;
        z0Var.H = false;
        z0Var.I = false;
        z0Var.O.f487g = false;
        z0Var.u(7);
    }

    @Override // android.app.Activity
    public void onStart() {
        this.mFragments.a();
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            z0 z0Var = this.mFragments.f566a.f524d;
            z0Var.H = false;
            z0Var.I = false;
            z0Var.O.f487g = false;
            z0Var.u(4);
        }
        this.mFragments.f566a.f524d.z(true);
        this.mFragmentLifecycleRegistry.e(androidx.lifecycle.m.ON_START);
        z0 z0Var2 = this.mFragments.f566a.f524d;
        z0Var2.H = false;
        z0Var2.I = false;
        z0Var2.O.f487g = false;
        z0Var2.u(5);
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.a();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        z0 z0Var = this.mFragments.f566a.f524d;
        z0Var.I = true;
        z0Var.O.f487g = true;
        z0Var.u(4);
        this.mFragmentLifecycleRegistry.e(androidx.lifecycle.m.ON_STOP);
    }

    public void setEnterSharedElementCallback(y.w wVar) {
        setEnterSharedElementCallback((SharedElementCallback) null);
    }

    public void setExitSharedElementCallback(y.w wVar) {
        setExitSharedElementCallback((SharedElementCallback) null);
    }

    public void startActivityFromFragment(c0 c0Var, Intent intent, int i6, Bundle bundle) {
        if (i6 == -1) {
            startActivityForResult(intent, -1, bundle);
        } else {
            c0Var.J(intent, i6, bundle);
        }
    }

    @Deprecated
    public void startIntentSenderFromFragment(c0 c0Var, IntentSender intentSender, int i6, Intent intent, int i9, int i10, int i11, Bundle bundle) {
        if (i6 == -1) {
            startIntentSenderForResult(intentSender, i6, intent, i9, i10, i11, bundle);
            return;
        }
        Intent intent2 = intent;
        if (c0Var.C == null) {
            throw new IllegalStateException(m1.c("Fragment ", c0Var, " not attached to Activity"));
        }
        if (y0.J(2)) {
            Log.v("FragmentManager", "Fragment " + c0Var + " received the following in startIntentSenderForResult() requestCode: " + i6 + " IntentSender: " + intentSender + " fillInIntent: " + intent2 + " options: " + bundle);
        }
        y0 y0VarG = c0Var.g();
        if (y0VarG.D == null) {
            g0 g0Var = y0VarG.f661w;
            g0Var.getClass();
            d7.g.f("intent", intentSender);
            if (i6 != -1) {
                throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
            }
            h0 h0Var = g0Var.f521a;
            if (h0Var == null) {
                throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
            }
            h0Var.startIntentSenderForResult(intentSender, i6, intent2, i9, i10, i11, bundle);
            return;
        }
        if (bundle != null) {
            if (intent2 == null) {
                intent2 = new Intent();
                intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            }
            if (y0.J(2)) {
                Log.v("FragmentManager", "ActivityOptions " + bundle + " were added to fillInIntent " + intent2 + " for fragment " + c0Var);
            }
            intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        d7.g.f("intentSender", intentSender);
        d.i iVar = new d.i(intentSender, intent2, i9, i10);
        y0VarG.F.addLast(new u0(c0Var.f469e, i6));
        if (y0.J(2)) {
            Log.v("FragmentManager", "Fragment " + c0Var + "is launching an IntentSender for result ");
        }
        y0VarG.D.a(iVar);
    }

    public void supportFinishAfterTransition() {
        finishAfterTransition();
    }

    public void supportPostponeEnterTransition() {
        postponeEnterTransition();
    }

    public void supportStartPostponedEnterTransition() {
        startPostponedEnterTransition();
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    public void startActivityFromFragment(c0 c0Var, Intent intent, int i6) {
        startActivityFromFragment(c0Var, intent, i6, (Bundle) null);
    }

    @Deprecated
    public void onAttachFragment(c0 c0Var) {
    }

    @Override // y.a
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i6) {
    }
}
