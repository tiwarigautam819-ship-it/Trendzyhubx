package z7;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f6428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f6429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f6430c;

    public i(ArrayList arrayList) {
        this.f6428a = arrayList;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        d7.g.f("proxy", obj);
        d7.g.f(FirebaseAnalytics.Param.METHOD, method);
        if (objArr == null) {
            objArr = new Object[0];
        }
        String name = method.getName();
        Class<?> returnType = method.getReturnType();
        if (d7.g.a(name, "supports") && d7.g.a(Boolean.TYPE, returnType)) {
            return Boolean.TRUE;
        }
        if (d7.g.a(name, "unsupported") && d7.g.a(Void.TYPE, returnType)) {
            this.f6429b = true;
            return null;
        }
        boolean zA = d7.g.a(name, "protocols");
        ArrayList arrayList = this.f6428a;
        if (zA && objArr.length == 0) {
            return arrayList;
        }
        if ((d7.g.a(name, "selectProtocol") || d7.g.a(name, "select")) && String.class.equals(returnType) && objArr.length == 1) {
            Object obj2 = objArr[0];
            if (obj2 instanceof List) {
                List list = (List) obj2;
                int size = list.size();
                if (size >= 0) {
                    int i6 = 0;
                    while (true) {
                        Object obj3 = list.get(i6);
                        d7.g.d("null cannot be cast to non-null type kotlin.String", obj3);
                        String str = (String) obj3;
                        if (!arrayList.contains(str)) {
                            if (i6 == size) {
                                break;
                            }
                            i6++;
                        } else {
                            this.f6430c = str;
                            return str;
                        }
                    }
                }
                String str2 = (String) arrayList.get(0);
                this.f6430c = str2;
                return str2;
            }
        }
        if ((!d7.g.a(name, "protocolSelected") && !d7.g.a(name, "selected")) || objArr.length != 1) {
            return method.invoke(this, Arrays.copyOf(objArr, objArr.length));
        }
        Object obj4 = objArr[0];
        d7.g.d("null cannot be cast to non-null type kotlin.String", obj4);
        this.f6430c = (String) obj4;
        return null;
    }
}
