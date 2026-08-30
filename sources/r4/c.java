package r4;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f4971a;

    public c(Object[] objArr) {
        this.f4971a = objArr;
    }

    public Object readResolve() {
        b bVar = e.f4975b;
        Object[] objArr = this.f4971a;
        if (objArr.length == 0) {
            return i.f4981e;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        h8.b.c(objArr2.length, objArr2);
        return e.e(objArr2.length, objArr2);
    }
}
