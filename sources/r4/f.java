package r4;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f4976a;

    public f(Object[] objArr) {
        this.f4976a = objArr;
    }

    public Object readResolve() {
        Object[] objArr = this.f4976a;
        int length = objArr.length;
        return length != 0 ? length != 1 ? g.f(objArr.length, (Object[]) objArr.clone()) : new k(objArr[0]) : j.f4985j;
    }
}
