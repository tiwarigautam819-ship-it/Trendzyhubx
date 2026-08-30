package o5;

import android.content.ClipData;
import android.content.ContentProviderClient;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import android.view.ContentInfo;
import android.view.MenuItem;
import android.view.Window;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebView;
import android.widget.EditText;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.a0;
import androidx.fragment.app.c0;
import androidx.fragment.app.m1;
import androidx.fragment.app.u0;
import androidx.fragment.app.y0;
import bridges.TomBridge;
import com.google.android.gms.internal.measurement.y4;
import d7.g;
import f6.f;
import g.l0;
import g.n0;
import j0.e;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import k1.m;
import l.l;
import m.b3;
import m.j;
import org.chromium.support_lib_boundary.StaticsBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import q2.g0;
import q2.x;
import s5.n;
import x1.r;
import y5.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class c implements d.b, d, l, g0.b, h3.b, e, m, m6.e, j, n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile c f4444c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4445a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f4446b;

    public /* synthetic */ c(int i6, Object obj) {
        this.f4445a = i6;
        this.f4446b = obj;
    }

    @Override // j0.e
    public ClipData a() {
        return ((ContentInfo) this.f4446b).getClip();
    }

    @Override // k1.m
    public String[] b() {
        return ((WebViewProviderFactoryBoundaryInterface) this.f4446b).getSupportedFeatures();
    }

    @Override // g0.b
    public Cursor c(Uri uri, String[] strArr, String[] strArr2) {
        ContentProviderClient contentProviderClient = (ContentProviderClient) this.f4446b;
        if (contentProviderClient == null) {
            return null;
        }
        try {
            return contentProviderClient.query(uri, strArr, "query = ?", strArr2, null, null);
        } catch (RemoteException e9) {
            Log.w("FontsProvider", "Unable to query the content provider", e9);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // g0.b
    public void close() throws Exception {
        ContentProviderClient contentProviderClient = (ContentProviderClient) this.f4446b;
        if (contentProviderClient != 0) {
            if (contentProviderClient instanceof AutoCloseable) {
                contentProviderClient.close();
            } else if (contentProviderClient instanceof ExecutorService) {
                com.getcapacitor.a.v((ExecutorService) contentProviderClient);
            } else {
                contentProviderClient.release();
            }
        }
    }

    @Override // k1.m
    public WebViewProviderBoundaryInterface createWebView(WebView webView) {
        return (WebViewProviderBoundaryInterface) h8.b.b(WebViewProviderBoundaryInterface.class, ((WebViewProviderFactoryBoundaryInterface) this.f4446b).createWebView(webView));
    }

    @Override // l.l
    public boolean d(l.n nVar, MenuItem menuItem) {
        boolean zOnMenuItemSelected;
        switch (this.f4445a) {
            case 7:
                return false;
            default:
                j jVar = ((ActionMenuView) this.f4446b).I;
                if (jVar == null) {
                    return false;
                }
                Toolbar toolbar = (Toolbar) ((c) jVar).f4446b;
                if (toolbar.O.a()) {
                    zOnMenuItemSelected = true;
                } else {
                    b3 b3Var = toolbar.Q;
                    zOnMenuItemSelected = b3Var != null ? ((l0) b3Var).f2749a.f2754b.onMenuItemSelected(0, menuItem) : false;
                }
                return zOnMenuItemSelected;
        }
    }

    @Override // d.b
    public void e(Object obj) {
        d.a aVar = (d.a) obj;
        y0 y0Var = (y0) this.f4446b;
        u0 u0Var = (u0) y0Var.F.pollLast();
        if (u0Var == null) {
            Log.w("FragmentManager", "No Activities were started for result for " + this);
            return;
        }
        String str = u0Var.f627a;
        int i6 = u0Var.f628b;
        c0 c0VarN = y0Var.f642c.n(str);
        if (c0VarN != null) {
            c0VarN.o(i6, aVar.f2190a, aVar.f2191b);
            return;
        }
        Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
    }

    @Override // m6.e
    public void f(String str) {
        Log.d("TomBridge", "打印adid" + str);
        if (str != null) {
            ((TomBridge) this.f4446b).sendTokenToH5(2, str);
        }
    }

    @Override // j0.e
    public int g() {
        return ((ContentInfo) this.f4446b).getFlags();
    }

    @Override // q6.a
    public Object get() {
        switch (this.f4445a) {
            case 12:
                return this.f4446b;
            default:
                return new m3.j((Context) ((q6.a) this.f4446b).get(), Integer.valueOf(m3.j.f4274d).intValue(), "com.google.android.datatransport.events");
        }
    }

    @Override // k1.m
    public StaticsBoundaryInterface getStatics() {
        return (StaticsBoundaryInterface) h8.b.b(StaticsBoundaryInterface.class, ((WebViewProviderFactoryBoundaryInterface) this.f4446b).getStatics());
    }

    @Override // l.l
    public void h(l.n nVar) {
        switch (this.f4445a) {
            case 7:
                n0 n0Var = (n0) this.f4446b;
                Window.Callback callback = n0Var.f2754b;
                if (n0Var.f2753a.f327a.o()) {
                    callback.onPanelClosed(108, nVar);
                } else if (callback.onPreparePanel(0, null, nVar)) {
                    callback.onMenuOpened(108, nVar);
                }
                break;
            default:
                l lVar = ((ActionMenuView) this.f4446b).D;
                if (lVar != null) {
                    lVar.h(nVar);
                }
                break;
        }
    }

    @Override // j0.e
    public ContentInfo i() {
        return (ContentInfo) this.f4446b;
    }

    @Override // y5.d
    public b6.b j(String str, int i6, EnumMap enumMap) {
        if (i6 == 15) {
            return ((f) this.f4446b).j("0".concat(String.valueOf(str)), 8, enumMap);
        }
        throw new IllegalArgumentException("Can only encode UPC-A, but got ".concat(x.n(i6)));
    }

    public synchronized void k(r7.x xVar) {
        g.f("route", xVar);
        ((LinkedHashSet) this.f4446b).remove(xVar);
    }

    @Override // j0.e
    public int l() {
        return ((ContentInfo) this.f4446b).getSource();
    }

    @Override // s5.n
    public Object m() {
        Type type = (Type) this.f4446b;
        if (!(type instanceof ParameterizedType)) {
            throw new a0("Invalid EnumSet type: " + type.toString());
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof Class) {
            return EnumSet.noneOf((Class) type2);
        }
        throw new a0("Invalid EnumSet type: " + type.toString());
    }

    public Set n() {
        Set setUnmodifiableSet;
        synchronized (((HashSet) this.f4446b)) {
            setUnmodifiableSet = Collections.unmodifiableSet((HashSet) this.f4446b);
        }
        return setUnmodifiableSet;
    }

    public void o(String str, boolean z5) {
        switch (this.f4445a) {
            case 10:
                JsResult jsResult = (JsResult) this.f4446b;
                if (!z5) {
                    jsResult.cancel();
                } else {
                    jsResult.confirm();
                }
                break;
            default:
                JsPromptResult jsPromptResult = (JsPromptResult) this.f4446b;
                if (!z5) {
                    jsPromptResult.cancel();
                } else {
                    jsPromptResult.confirm(str);
                }
                break;
        }
    }

    public String toString() {
        switch (this.f4445a) {
            case 13:
                return "ContentInfoCompat{" + ((ContentInfo) this.f4446b) + "}";
            default:
                return super.toString();
        }
    }

    public c(Bundle bundle, String str) {
        Uri uriA;
        String str2;
        this.f4445a = 22;
        bundle = bundle == null ? new Bundle() : bundle;
        int[] iArrH = m1.h(2);
        ArrayList arrayList = new ArrayList(iArrH.length);
        for (int i6 : iArrH) {
            if (i6 == 1) {
                str2 = "context_choose";
            } else {
                if (i6 != 2) {
                    throw null;
                }
                str2 = "join_tournament";
            }
            arrayList.add(str2);
        }
        if (arrayList.contains(str)) {
            r rVar = r.f5918a;
            uriA = g0.a(String.format("%s", Arrays.copyOf(new Object[]{"fb.gg"}, 1)), "/dialog/".concat(str), bundle);
        } else {
            uriA = g0.a(g0.p(), r.d() + "/dialog/" + str, bundle);
        }
        this.f4446b = uriA;
    }

    public c(int i6) {
        this.f4445a = i6;
        switch (i6) {
            case 6:
                this.f4446b = new f(0);
                break;
            case 24:
                this.f4446b = new ConcurrentHashMap();
                break;
            case 26:
                this.f4446b = new LinkedHashSet();
                break;
            case 28:
                break;
            default:
                this.f4446b = new HashSet();
                break;
        }
    }

    public c(EditText editText) {
        this.f4445a = 23;
        this.f4446b = new y4(editText);
    }

    public c(Context context, Uri uri) {
        this.f4445a = 9;
        this.f4446b = context.getContentResolver().acquireUnstableContentProviderClient(uri);
    }

    public c(ContentInfo contentInfo) {
        this.f4445a = 13;
        contentInfo.getClass();
        this.f4446b = com.google.android.gms.common.internal.l0.f(contentInfo);
    }
}
