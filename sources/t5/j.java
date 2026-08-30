package t5;

import androidx.fragment.app.a0;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import q5.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5357a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Field f5358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f5359c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Method f5360d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f5361e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ x f5362f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ q5.l f5363g;
    public final /* synthetic */ w5.a h;

    public j(String str, Field field, boolean z5, Method method, boolean z8, x xVar, q5.l lVar, w5.a aVar) {
        this.f5360d = method;
        this.f5361e = z8;
        this.f5362f = xVar;
        this.f5363g = lVar;
        this.h = aVar;
        this.f5357a = str;
        this.f5358b = field;
        field.getName();
        this.f5359c = z5;
    }

    public final void a(x5.a aVar, Object obj) throws IllegalAccessException {
        Object objInvoke;
        if (this.f5359c) {
            Method method = this.f5360d;
            if (method != null) {
                try {
                    objInvoke = method.invoke(obj, null);
                } catch (InvocationTargetException e9) {
                    throw new a0(q2.x.g("Accessor ", u5.c.d(method, false), " threw exception"), e9.getCause());
                }
            } else {
                objInvoke = this.f5358b.get(obj);
            }
            if (objInvoke == obj) {
                return;
            }
            aVar.u(this.f5357a);
            boolean z5 = this.f5361e;
            x oVar = this.f5362f;
            if (!z5) {
                oVar = new o(this.h.f5757b, this.f5363g, oVar);
            }
            oVar.a(aVar, objInvoke);
        }
    }
}
