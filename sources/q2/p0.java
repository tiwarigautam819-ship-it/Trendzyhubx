package q2;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.autofill.AutofillManager;
import android.webkit.WebSettings;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.fragment.app.m1;
import com.YaarWin.app.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class p0 extends Dialog {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static volatile int f4787m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f4788a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f4789b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public k0 f4790c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public o0 f4791d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ProgressDialog f4792e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ImageView f4793f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public FrameLayout f4794g;
    public final m0 h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4795i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4796j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4797k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public WindowManager.LayoutParams f4798l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p0(androidx.fragment.app.h0 h0Var, String str, Bundle bundle, int i6, k0 k0Var) {
        Uri uriA;
        super(h0Var, f4787m);
        g.k();
        this.f4789b = "fbconnect://success";
        bundle = bundle == null ? new Bundle() : bundle;
        String str2 = g0.y(h0Var) ? "fbconnect://chrome_os_success" : "fbconnect://success";
        this.f4789b = str2;
        bundle.putString("redirect_uri", str2);
        bundle.putString("display", "touch");
        bundle.putString("client_id", x1.r.b());
        bundle.putString("sdk", String.format(Locale.ROOT, "android-%s", Arrays.copyOf(new Object[]{"18.1.3"}, 1)));
        this.f4790c = k0Var;
        if (str.equals(FirebaseAnalytics.Event.SHARE) && bundle.containsKey("media")) {
            this.h = new m0(this, str, bundle);
            return;
        }
        if (n0.f4767a[m1.e(i6)] == 1) {
            uriA = g0.a(g0.r(), "oauth/authorize", bundle);
        } else {
            uriA = g0.a(g0.p(), x1.r.d() + "/dialog/" + str, bundle);
        }
        this.f4788a = uriA.toString();
    }

    public static int a(int i6, float f9, int i9, int i10) {
        int i11 = (int) (i6 / f9);
        return (int) (((double) i6) * (i11 <= i9 ? 1.0d : i11 >= i10 ? 0.5d : ((((double) (i10 - i11)) / ((double) (i10 - i9))) * 0.5d) + 0.5d));
    }

    public static final void b(androidx.fragment.app.h0 h0Var) {
        if (h0Var == null) {
            return;
        }
        try {
            ApplicationInfo applicationInfo = h0Var.getPackageManager().getApplicationInfo(h0Var.getPackageName(), 128);
            if ((applicationInfo != null ? applicationInfo.metaData : null) != null && f4787m == 0) {
                int i6 = applicationInfo.metaData.getInt("com.facebook.sdk.WebDialogTheme");
                if (i6 == 0) {
                    i6 = R.style.com_facebook_activity_theme;
                }
                f4787m = i6;
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public Bundle c(String str) {
        Uri uri = Uri.parse(str);
        Bundle bundleG = g0.G(uri.getQuery());
        bundleG.putAll(g0.G(uri.getFragment()));
        return bundleG;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.f4790c == null || this.f4795i) {
            return;
        }
        e(new x1.n());
    }

    public final void d() {
        Object systemService = getContext().getSystemService("window");
        d7.g.d("null cannot be cast to non-null type android.view.WindowManager", systemService);
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        int i6 = displayMetrics.widthPixels;
        int i9 = displayMetrics.heightPixels;
        int i10 = i6 < i9 ? i6 : i9;
        if (i6 < i9) {
            i6 = i9;
        }
        int iMin = Math.min(a(i10, displayMetrics.density, 480, 800), displayMetrics.widthPixels);
        int iMin2 = Math.min(a(i6, displayMetrics.density, 800, 1280), displayMetrics.heightPixels);
        Window window = getWindow();
        if (window != null) {
            window.setLayout(iMin, iMin2);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        ProgressDialog progressDialog;
        o0 o0Var = this.f4791d;
        if (o0Var != null) {
            o0Var.stopLoading();
        }
        if (!this.f4796j && (progressDialog = this.f4792e) != null && progressDialog.isShowing()) {
            progressDialog.dismiss();
        }
        super.dismiss();
    }

    public final void e(Exception exc) {
        if (this.f4790c == null || this.f4795i) {
            return;
        }
        this.f4795i = true;
        x1.l lVar = exc instanceof x1.l ? (x1.l) exc : new x1.l(exc);
        k0 k0Var = this.f4790c;
        if (k0Var != null) {
            k0Var.a(null, lVar);
        }
        dismiss();
    }

    public final void f(int i6) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        o0 o0Var = new o0(getContext());
        this.f4791d = o0Var;
        o0Var.setVerticalScrollBarEnabled(false);
        o0 o0Var2 = this.f4791d;
        if (o0Var2 != null) {
            o0Var2.setHorizontalScrollBarEnabled(false);
        }
        o0 o0Var3 = this.f4791d;
        if (o0Var3 != null) {
            o0Var3.setWebViewClient(new j0(this));
        }
        o0 o0Var4 = this.f4791d;
        WebSettings settings = o0Var4 != null ? o0Var4.getSettings() : null;
        if (settings != null) {
            settings.setJavaScriptEnabled(true);
        }
        o0 o0Var5 = this.f4791d;
        if (o0Var5 != null) {
            String str = this.f4788a;
            if (str == null) {
                throw new IllegalStateException("Required value was null.");
            }
            o0Var5.loadUrl(str);
        }
        o0 o0Var6 = this.f4791d;
        if (o0Var6 != null) {
            o0Var6.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        }
        o0 o0Var7 = this.f4791d;
        if (o0Var7 != null) {
            o0Var7.setVisibility(4);
        }
        o0 o0Var8 = this.f4791d;
        WebSettings settings2 = o0Var8 != null ? o0Var8.getSettings() : null;
        if (settings2 != null) {
            settings2.setSavePassword(false);
        }
        o0 o0Var9 = this.f4791d;
        WebSettings settings3 = o0Var9 != null ? o0Var9.getSettings() : null;
        if (settings3 != null) {
            settings3.setSaveFormData(false);
        }
        o0 o0Var10 = this.f4791d;
        if (o0Var10 != null) {
            o0Var10.setFocusable(true);
        }
        o0 o0Var11 = this.f4791d;
        if (o0Var11 != null) {
            o0Var11.setFocusableInTouchMode(true);
        }
        o0 o0Var12 = this.f4791d;
        if (o0Var12 != null) {
            o0Var12.setOnTouchListener(new h0());
        }
        linearLayout.setPadding(i6, i6, i6, i6);
        linearLayout.addView(this.f4791d);
        linearLayout.setBackgroundColor(-872415232);
        FrameLayout frameLayout = this.f4794g;
        if (frameLayout != null) {
            frameLayout.addView(linearLayout);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        AutofillManager autofillManagerJ;
        WindowManager.LayoutParams layoutParams;
        Window window;
        WindowManager.LayoutParams attributes;
        this.f4796j = false;
        Context context = getContext();
        d7.g.e("context", context);
        if (Build.VERSION.SDK_INT >= 26 && (autofillManagerJ = com.getcapacitor.plugin.util.a.j(context.getSystemService(com.getcapacitor.plugin.util.a.k()))) != null && autofillManagerJ.isAutofillSupported() && autofillManagerJ.isEnabled() && (layoutParams = this.f4798l) != null && layoutParams.token == null) {
            Activity ownerActivity = getOwnerActivity();
            layoutParams.token = (ownerActivity == null || (window = ownerActivity.getWindow()) == null || (attributes = window.getAttributes()) == null) ? null : attributes.token;
            WindowManager.LayoutParams layoutParams2 = this.f4798l;
            Objects.toString(layoutParams2 != null ? layoutParams2.token : null);
            x1.r rVar = x1.r.f5918a;
        }
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        this.f4792e = progressDialog;
        progressDialog.requestWindowFeature(1);
        ProgressDialog progressDialog2 = this.f4792e;
        if (progressDialog2 != null) {
            progressDialog2.setMessage(getContext().getString(R.string.com_facebook_loading));
        }
        ProgressDialog progressDialog3 = this.f4792e;
        if (progressDialog3 != null) {
            progressDialog3.setCanceledOnTouchOutside(false);
        }
        ProgressDialog progressDialog4 = this.f4792e;
        if (progressDialog4 != null) {
            progressDialog4.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: q2.i0
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    p0 p0Var = this.f4748a;
                    d7.g.f("this$0", p0Var);
                    p0Var.cancel();
                }
            });
        }
        requestWindowFeature(1);
        this.f4794g = new FrameLayout(getContext());
        d();
        Window window = getWindow();
        if (window != null) {
            window.setGravity(17);
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setSoftInputMode(16);
        }
        ImageView imageView = new ImageView(getContext());
        this.f4793f = imageView;
        imageView.setOnClickListener(new l6.b(this, 1));
        Drawable drawable = getContext().getResources().getDrawable(R.drawable.com_facebook_close);
        ImageView imageView2 = this.f4793f;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
        ImageView imageView3 = this.f4793f;
        if (imageView3 != null) {
            imageView3.setVisibility(4);
        }
        if (this.f4788a != null) {
            ImageView imageView4 = this.f4793f;
            if (imageView4 == null) {
                throw new IllegalStateException("Required value was null.");
            }
            f((imageView4.getDrawable().getIntrinsicWidth() / 2) + 1);
        }
        FrameLayout frameLayout = this.f4794g;
        if (frameLayout != null) {
            frameLayout.addView(this.f4793f, new ViewGroup.LayoutParams(-2, -2));
        }
        FrameLayout frameLayout2 = this.f4794g;
        if (frameLayout2 == null) {
            throw new IllegalStateException("Required value was null.");
        }
        setContentView(frameLayout2);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.f4796j = true;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i6, KeyEvent keyEvent) {
        d7.g.f("event", keyEvent);
        if (i6 == 4) {
            o0 o0Var = this.f4791d;
            if (o0Var != null && o0Var.canGoBack()) {
                o0 o0Var2 = this.f4791d;
                if (o0Var2 != null) {
                    o0Var2.goBack();
                }
                return true;
            }
            cancel();
        }
        return super.onKeyDown(i6, keyEvent);
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        m0 m0Var = this.h;
        if (m0Var != null) {
            if ((m0Var != null ? m0Var.getStatus() : null) == AsyncTask.Status.PENDING) {
                if (m0Var != null) {
                    m0Var.execute(new Void[0]);
                }
                ProgressDialog progressDialog = this.f4792e;
                if (progressDialog != null) {
                    progressDialog.show();
                    return;
                }
                return;
            }
        }
        d();
    }

    @Override // android.app.Dialog
    public final void onStop() {
        m0 m0Var = this.h;
        if (m0Var != null) {
            m0Var.cancel(true);
            ProgressDialog progressDialog = this.f4792e;
            if (progressDialog != null) {
                progressDialog.dismiss();
            }
        }
        super.onStop();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        d7.g.f("params", layoutParams);
        if (layoutParams.token == null) {
            this.f4798l = layoutParams;
        }
        super.onWindowAttributesChanged(layoutParams);
    }
}
