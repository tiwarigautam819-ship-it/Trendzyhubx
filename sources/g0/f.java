package g0;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f2829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f2830c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f2831d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f2832e;

    public /* synthetic */ f(String str, Context context, Object obj, int i6, int i9) {
        this.f2828a = i9;
        this.f2829b = str;
        this.f2830c = context;
        this.f2832e = obj;
        this.f2831d = i6;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i6 = this.f2828a;
        int i9 = this.f2831d;
        Object obj = this.f2832e;
        Context context = this.f2830c;
        String str = this.f2829b;
        switch (i6) {
            case 0:
                Object[] objArr = {(e) obj};
                ArrayList arrayList = new ArrayList(1);
                Object obj2 = objArr[0];
                Objects.requireNonNull(obj2);
                arrayList.add(obj2);
                return i.b(str, context, Collections.unmodifiableList(arrayList), i9);
            default:
                try {
                    return i.b(str, context, (List) obj, i9);
                } catch (Throwable unused) {
                    return new h(-3);
                }
        }
    }
}
