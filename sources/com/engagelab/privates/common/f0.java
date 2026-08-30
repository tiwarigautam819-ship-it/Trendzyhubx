package com.engagelab.privates.common;

import android.app.Activity;
import android.app.AppOpsManager;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.b0;
import com.engagelab.privates.common.c0;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.Utils;
import com.engagelab.privates.common.y;
import com.engagelab.privates.push.api.InAppMessage;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.engagelab.privates.push.utils.NotificationUtil;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f0 {
    public static List h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f1149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c0 f1150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InAppMessage f1151c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public d0 f1152d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Context f1153e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1154f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1155g;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class a implements y.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f1156a;

        public a(View view) {
            this.f1156a = view;
        }

        @Override // com.engagelab.privates.common.y.c
        public void a() {
            MTCommonLog.d("BaseInAppWrapper", "  inapp show animation end");
            f0 f0Var = f0.this;
            d dVar = f0Var.f1149a;
            if (dVar != null) {
                dVar.a(f0Var.f1153e, this.f1156a);
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class b implements c0.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f1158a;

        /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
        public class a implements y.c {
            public a() {
            }

            @Override // com.engagelab.privates.common.y.c
            public void a() {
                b bVar = b.this;
                f0 f0Var = f0.this;
                d dVar = f0Var.f1149a;
                if (dVar != null) {
                    dVar.a(f0Var.f1153e, bVar.f1158a, f0Var.f1151c);
                }
            }
        }

        public b(View view) {
            this.f1158a = view;
        }

        @Override // com.engagelab.privates.common.c0.b
        public void a() {
            try {
                MTCommonLog.d("BaseInAppWrapper", "dismiss timer reach, dismiss   inapp message");
                y.a(this.f1158a, new Point(0, -Utils.dpToPx(f0.this.f1153e, 94)), (long) f0.this.f1152d.b(), new a());
            } catch (Throwable th) {
                q2.x.j(th, new StringBuilder("in-app slide to dismiss error."), "BaseInAppWrapper");
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class c implements b0.e {
        public c() {
        }

        @Override // com.engagelab.privates.common.b0.e
        public boolean a(Object obj) {
            return true;
        }

        @Override // com.engagelab.privates.common.b0.e
        public void a(View view, Object obj) {
            f0 f0Var = f0.this;
            d dVar = f0Var.f1149a;
            if (dVar != null) {
                dVar.a(f0Var.f1153e, view, f0Var.f1151c);
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public interface d {
        void a(Context context, View view);

        void a(Context context, View view, Object obj);
    }

    static {
        ArrayList arrayList = new ArrayList();
        h = arrayList;
        arrayList.add(10);
        h.add(11);
        h.add(20);
        h.add(21);
        h.add(30);
        h.add(31);
        h.add(40);
    }

    public f0(Context context, d0 d0Var, InAppMessage inAppMessage, int i6) {
        this.f1152d = d0Var;
        this.f1151c = inAppMessage;
        this.f1153e = context;
        this.f1155g = i6;
    }

    public static f0 a(Context context, d0 d0Var, InAppMessage inAppMessage, int i6) {
        if (i6 == 10 || i6 == 11) {
            return new e0(context, d0Var, inAppMessage, i6);
        }
        if (i6 == 20 || i6 == 21) {
            return new h0(context, d0Var, inAppMessage, i6);
        }
        if (i6 == 30 || i6 == 31) {
            return new g0(context, d0Var, inAppMessage, i6);
        }
        if (i6 != 40) {
            return null;
        }
        return new j0(context, d0Var, inAppMessage, i6);
    }

    public static boolean c(int i6) {
        return 10 == i6 || 11 == i6;
    }

    public abstract void a();

    public final void b(View view) {
        Point point = new Point(0, -Utils.dpToPx(this.f1153e, 94));
        Point point2 = new Point(0, 0);
        long jC = (long) this.f1152d.c();
        MTCommonLog.d("BaseInAppWrapper", "slideIntoView startPoint: " + point + ", endPoint: " + point2 + ", toShowTime: " + jC);
        y.a(view, point, point2, jC, new a(view));
    }

    public abstract View d();

    public void d(int i6) {
        MTCommonLog.d("BaseInAppWrapper", "report code=" + i6);
        if (i6 > 0) {
            u.a().a(this.f1153e, i6, this.f1151c.getMessageId(), this.f1151c.getAppkey());
        }
    }

    public final void e(int i6) {
        d(i6 != 1 ? i6 != 2 ? i6 != 3 ? i6 != 4 ? i6 != 5 ? -1 : 10134013 : 10134014 : 10134012 : 10134011 : 10134000);
    }

    public abstract boolean f();

    public abstract void g();

    public abstract void h();

    public void i() {
        try {
            View viewD = d();
            d0 d0VarE = e();
            if (d0VarE != null && viewD != null) {
                b(viewD);
                int i6 = this.f1155g;
                if (10 == i6 || 11 == i6) {
                    c(viewD);
                }
                if (30 == this.f1155g || this.f1151c.getDuration() <= 0) {
                    return;
                }
                a(viewD);
                return;
            }
            MTCommonLog.w("BaseInAppWrapper", "startViewAnimation param is null, view:" + viewD + "config:" + d0VarE);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("start in-app with animation error. "), "BaseInAppWrapper");
        }
    }

    public abstract void j();

    public final void c(View view) {
        view.setOnTouchListener(new b0(this, null, this.f1154f, new c()));
    }

    public d0 e() {
        return this.f1152d;
    }

    public void c() {
        boolean zA = a(this.f1153e);
        MTCommonLog.d("BaseInAppWrapper", "checkPermission =" + zA);
        if (zA) {
            return;
        }
        boolean notificationState = NotificationUtil.getNotificationState(this.f1153e);
        MTCommonLog.d("BaseInAppWrapper", "notificationState =" + notificationState);
        if (notificationState) {
            return;
        }
        NotificationUtil.goToAppNotificationSettings(this.f1153e);
    }

    public final void a(View view) {
        if (this.f1150b == null) {
            this.f1150b = new c0();
        }
        long jC = (long) (this.f1152d.c() + this.f1152d.a());
        MTCommonLog.d("BaseInAppWrapper", "configAutoDismiss autoTickTime: " + jC);
        this.f1150b.a(new b(view), jC, 1000L);
    }

    public void b() {
        c0 c0Var = this.f1150b;
        if (c0Var != null) {
            c0Var.a();
        }
    }

    public int b(int i6) {
        return Utils.getWidth(this.f1153e, i6);
    }

    public void a(int i6, String str, int i9) {
        if (i6 == 1 || i6 == 2) {
            if (this.f1151c.isNotification()) {
                NotificationUtil.onClickInAppNotification(this.f1153e, this.f1151c.getExtras());
            } else {
                a(i6, NotificationUtil.jumpDeepLink(this.f1153e, str, this.f1151c.getExtras()));
            }
        } else if (i6 == 4) {
            c();
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable(MTPushConstants.Message.KEY_MESSAGE, this.f1151c);
        bundle.putInt("ClickType", i6);
        MTCommonPrivatesApi.sendMessageToMainProcess(this.f1153e, 4008, bundle);
        d dVar = this.f1149a;
        if (dVar != null) {
            dVar.a(this.f1153e, d(), this.f1151c);
        }
        e(i9);
    }

    public final boolean a(Context context) {
        if (!(context instanceof Activity)) {
            return false;
        }
        try {
            LinkedList linkedList = new LinkedList();
            if (Build.VERSION.SDK_INT >= 33) {
                linkedList.add("android.permission.POST_NOTIFICATIONS");
            }
            List<String> listA = a(context, linkedList);
            if (listA != null && !listA.isEmpty()) {
                Class.forName("android.app.Activity").getDeclaredMethod("requestPermissions", String[].class, Integer.TYPE).invoke(context, listA.toArray(new String[listA.size()]), 1);
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public final List<String> a(Context context, List<String> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!a(context, str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public final boolean a(Context context, String str) {
        try {
            if (context.getApplicationInfo().targetSdkVersion >= 23) {
                if (context.checkSelfPermission(str) == 0) {
                    return true;
                }
            } else {
                String strPermissionToOp = AppOpsManager.permissionToOp(str);
                if (strPermissionToOp == null || ((AppOpsManager) context.getSystemService("appops")).noteProxyOpNoThrow(strPermissionToOp, context.getPackageName()) == 0) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public final void a(int i6, boolean z5) {
        d(i6 != 1 ? i6 != 2 ? -1 : z5 ? 10134002 : 10134001 : z5 ? 10134004 : 10134003);
    }

    public void a(d dVar) {
        this.f1149a = dVar;
    }

    public int a(int i6) {
        return Utils.getHeight(this.f1153e, i6);
    }
}
