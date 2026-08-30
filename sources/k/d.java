package k;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import com.YaarWin.app.R;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends ContextWrapper {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static Configuration f3425f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Resources.Theme f3427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LayoutInflater f3428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Configuration f3429d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Resources f3430e;

    public d(Context context, int i6) {
        super(context);
        this.f3426a = i6;
    }

    public final void a(Configuration configuration) {
        if (this.f3430e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f3429d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f3429d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final void b() {
        if (this.f3427b == null) {
            this.f3427b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f3427b.setTo(theme);
            }
        }
        this.f3427b.applyStyle(this.f3426a, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    @Override // android.content.ContextWrapper, android.content.Context
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.content.res.Resources getResources() {
        /*
            r3 = this;
            android.content.res.Resources r0 = r3.f3430e
            if (r0 != 0) goto L38
            android.content.res.Configuration r0 = r3.f3429d
            if (r0 == 0) goto L32
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 26
            if (r1 < r2) goto L25
            android.content.res.Configuration r1 = k.d.f3425f
            if (r1 != 0) goto L1c
            android.content.res.Configuration r1 = new android.content.res.Configuration
            r1.<init>()
            r2 = 0
            r1.fontScale = r2
            k.d.f3425f = r1
        L1c:
            android.content.res.Configuration r1 = k.d.f3425f
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L25
            goto L32
        L25:
            android.content.res.Configuration r0 = r3.f3429d
            android.content.Context r0 = r3.createConfigurationContext(r0)
            android.content.res.Resources r0 = r0.getResources()
            r3.f3430e = r0
            goto L38
        L32:
            android.content.res.Resources r0 = super.getResources()
            r3.f3430e = r0
        L38:
            android.content.res.Resources r0 = r3.f3430e
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.d.getResources():android.content.res.Resources");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f3428c == null) {
            this.f3428c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f3428c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f3427b;
        if (theme != null) {
            return theme;
        }
        if (this.f3426a == 0) {
            this.f3426a = R.style.Theme_AppCompat_Light;
        }
        b();
        return this.f3427b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i6) {
        if (this.f3426a != i6) {
            this.f3426a = i6;
            b();
        }
    }
}
