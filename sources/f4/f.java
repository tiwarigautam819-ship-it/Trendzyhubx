package f4;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import com.YaarWin.app.R;
import j0.g1;
import j0.h0;
import j0.k0;
import java.net.ProtocolException;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import k7.o;
import m.e3;
import m.g3;
import r7.s;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ClassLoader f2606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Thread f2607b;

    public static void a(Window window, boolean z5, boolean z8, boolean z9) {
        g1 g1Var;
        if (window == null) {
            return;
        }
        window.clearFlags(201326592);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(-16777216);
        window.setNavigationBarColor(-16777216);
        try {
            t4.b.k(window, !z5);
        } catch (Throwable unused) {
        }
        final View decorView = window.getDecorView();
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 30) {
            final WindowInsetsController insetsController = window.getInsetsController();
            if (insetsController != null) {
                final int iStatusBars = WindowInsets.Type.statusBars();
                final int iNavigationBars = WindowInsets.Type.navigationBars();
                int i9 = iStatusBars | iNavigationBars;
                if (z8 || z9) {
                    i = z8 ? iStatusBars : 0;
                    if (z9) {
                        i |= iNavigationBars;
                    }
                    insetsController.setSystemBarsBehavior(2);
                    insetsController.hide(i);
                } else {
                    window.clearFlags(1024);
                    insetsController.setSystemBarsBehavior(1);
                    insetsController.show(iStatusBars);
                    insetsController.show(iNavigationBars);
                    decorView.post(new Runnable() { // from class: i8.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            WindowInsetsController windowInsetsController = insetsController;
                            int i10 = iStatusBars;
                            int i11 = iNavigationBars;
                            try {
                                windowInsetsController.setSystemBarsBehavior(1);
                                windowInsetsController.show(i10);
                                windowInsetsController.show(i11);
                            } catch (Throwable unused2) {
                            }
                        }
                    });
                    decorView.postDelayed(new i2.f(insetsController, i9), 32L);
                }
            }
        } else {
            final int i10 = z5 ? 1792 : 256;
            if (z8) {
                i10 |= 4;
            }
            if (z9) {
                i10 |= 2;
            }
            if (z8 || z9) {
                i10 |= 4096;
            }
            if (z8 || z9) {
                decorView.setSystemUiVisibility(i10);
            } else {
                window.clearFlags(1024);
                decorView.setSystemUiVisibility(0);
                decorView.post(new Runnable() { // from class: i8.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i) {
                            case 0:
                                View view = decorView;
                                int i11 = i10;
                                try {
                                    view.setSystemUiVisibility(0);
                                    view.setSystemUiVisibility(i11);
                                } catch (Throwable unused2) {
                                    return;
                                }
                                break;
                            default:
                                try {
                                    decorView.setSystemUiVisibility(i10);
                                } catch (Throwable unused3) {
                                    return;
                                }
                                break;
                        }
                    }
                });
                final int i11 = 1;
                decorView.postDelayed(new Runnable() { // from class: i8.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i11) {
                            case 0:
                                View view = decorView;
                                int i112 = i10;
                                try {
                                    view.setSystemUiVisibility(0);
                                    view.setSystemUiVisibility(i112);
                                } catch (Throwable unused2) {
                                    return;
                                }
                                break;
                            default:
                                try {
                                    decorView.setSystemUiVisibility(i10);
                                } catch (Throwable unused3) {
                                    return;
                                }
                                break;
                        }
                    }
                }, 64L);
            }
        }
        try {
            WeakHashMap weakHashMap = k0.f3286a;
            if (i6 >= 30) {
                g1Var = h0.b(decorView);
            } else {
                Context context = decorView.getContext();
                while (true) {
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    }
                    if (context instanceof Activity) {
                        Window window2 = ((Activity) context).getWindow();
                        if (window2 != null) {
                            g1Var = new g1(window2);
                        }
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                }
                g1Var = null;
            }
            if (g1Var != null) {
                g1Var.f3275a.o();
                g1Var.f3275a.n();
            }
        } catch (Throwable unused2) {
        }
    }

    public static List b(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        d7.g.e("singletonList(...)", listSingletonList);
        return listSingletonList;
    }

    public static b0.d c(String str) {
        int i6;
        String strSubstring;
        d7.g.f("statusLine", str);
        boolean zV = o.v(str, "HTTP/1.", false);
        s sVar = s.HTTP_1_0;
        if (zV) {
            i6 = 9;
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt != 0) {
                if (iCharAt != 1) {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                sVar = s.HTTP_1_1;
            }
        } else {
            if (!o.v(str, "ICY ", false)) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            i6 = 4;
        }
        int i9 = i6 + 3;
        if (str.length() < i9) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
        try {
            String strSubstring2 = str.substring(i6, i9);
            d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strSubstring2);
            int i10 = Integer.parseInt(strSubstring2);
            if (str.length() <= i9) {
                strSubstring = "";
            } else {
                if (str.charAt(i9) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                strSubstring = str.substring(i6 + 4);
                d7.g.e("this as java.lang.String).substring(startIndex)", strSubstring);
            }
            return new b0.d(sVar, i10, strSubstring, 4);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
    }

    public static final void d(View view, e1.g gVar) {
        d7.g.f("<this>", view);
        view.setTag(R.id.view_tree_saved_state_registry_owner, gVar);
    }

    public static void e(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            e3.a(view, charSequence);
            return;
        }
        g3 g3Var = g3.f3968k;
        if (g3Var != null && g3Var.f3970a == view) {
            g3.b(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new g3(view, charSequence);
            return;
        }
        g3 g3Var2 = g3.f3969l;
        if (g3Var2 != null && g3Var2.f3970a == view) {
            g3Var2.a();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    public static int f(int i6) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i6) * (-862048943)), 15)) * 461845907);
    }

    public static int g(Context context, int i6) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(android.R.style.Animation.Activity, new int[]{i6});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00ab A[Catch: all -> 0x00a7, PHI: r1
      0x00ab: PHI (r1v4 java.lang.Thread) = (r1v3 java.lang.Thread), (r1v15 java.lang.Thread) binds: [B:7:0x000a, B:47:0x00a4] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000c, B:46:0x00a2, B:61:0x00d1, B:12:0x001f, B:52:0x00aa, B:53:0x00ab, B:64:0x00d5, B:65:0x00d6, B:54:0x00ac, B:60:0x00d0, B:59:0x00b6, B:13:0x0020, B:15:0x002d, B:25:0x0047, B:26:0x004e, B:28:0x0059, B:34:0x006e, B:35:0x0075, B:43:0x0086, B:44:0x00a0, B:18:0x003c), top: B:77:0x0003, inners: #2, #6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized java.lang.ClassLoader h() {
        /*
            Method dump skipped, instruction units count: 220
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f4.f.h():java.lang.ClassLoader");
    }
}
